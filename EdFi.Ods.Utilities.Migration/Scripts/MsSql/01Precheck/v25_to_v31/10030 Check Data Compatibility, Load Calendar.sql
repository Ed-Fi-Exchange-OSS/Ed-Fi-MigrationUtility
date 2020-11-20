-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Loading Calendar Configuration'
GO

IF OBJECT_ID('migration_tempdata.CalendarConfig', 'U') IS NOT NULL 
DROP TABLE [migration_tempdata].[CalendarConfig]
GO

CREATE TABLE [migration_tempdata].[CalendarConfig]
(
	[SchoolId] INT NOT NULL,
	[SchoolYear] SMALLINT NOT NULL,
	[BeginDate] DATE NOT NULL,
	[EndDate] DATE NOT NULL,
	CONSTRAINT UC_SchoolId_SchoolYear UNIQUE ([SchoolId], [SchoolYear])
)
GO

IF ('$CalendarConfigurationFilePath$' = '')
BEGIN
	PRINT N'No calendar configuration file found: checking [edfi].[Session] for a default school year';
	DECLARE @numberOfSchoolYearsFound INT
	SELECT @numberOfSchoolYearsFound = COUNT(DISTINCT [SchoolYear]) FROM [edfi].[Session]

	IF (@numberOfSchoolYearsFound = 1)
	BEGIN
		INSERT [migration_tempdata].[CalendarConfig]
		(
			[SchoolId],
			[SchoolYear],
			[BeginDate],
			[EndDate]
		)
		SELECT
			sch.[SchoolId],
			MIN(ss.[SchoolYear]) AS [SchoolYear], 
			MIN(ss.[BeginDate]) AS [BeginDate],
			MAX(ss.[EndDate]) AS [EndDate]
		FROM [edfi].[Session] ss
		CROSS JOIN [edfi].[School] sch
		GROUP BY sch.[SchoolId]
	END

	IF (@numberOfSchoolYearsFound > 1)
	BEGIN
		DECLARE @CalendarConfigRequiredErrorMessage NVARCHAR(MAX) 
		SELECT @CalendarConfigRequiredErrorMessage = 'Action Required:  Please create a calendar configuration csv file (see the contents of the directory "Sample Calendar Configuration Files" for examples).  Add command line option --CalendarConfigPath "C:\example\full\path\to\calendar-config.csv" to make this file accessible to the migration tool.  (Details: A version 3 school calendar cannot be automatically resolved for this ODS because multiple school years were found in [edfi].[Session])' 
		PRINT @CalendarConfigRequiredErrorMessage;
		THROW 54009, @CalendarConfigRequiredErrorMessage, 1
	END
END
ELSE
BEGIN
	DECLARE @useAzureDataSourceForConfigFiles BIT
	SELECT @useAzureDataSourceForConfigFiles = (CASE WHEN '$AzureStorageLocation$' = '' THEN 0 ELSE 1 END)
	IF (@useAzureDataSourceForConfigFiles = 1)
	BEGIN
		PRINT N'Importing calendar configuration';
		DECLARE @dataSourceId nvarchar(36)
		SELECT @dataSourceId = CONVERT(nvarchar(36), NEWID())
		DECLARE @AzureStorageLocation nvarchar(max)
		EXEC @AzureStorageLocation = [migration_tempdata].[removeTrailingSlash] '$AzureStorageLocation$'
		/* Azure Only:  Use a random ID to work around an issue where a data source from a previously rolled back transaction is inaccessible, but cannot be
		dropped or recreated because it still exists in cache */
		EXEC('CREATE EXTERNAL DATA SOURCE [migration_tempdata_blob'+ @dataSourceId +'] WITH (TYPE = BLOB_STORAGE, LOCATION = ''' + @AzureStorageLocation + ''')');
		EXEC('
		BULK INSERT [migration_tempdata].[CalendarConfig] FROM ''$CalendarConfigurationFilePath$'' WITH
		(
			FIELDTERMINATOR = '',''
			,ROWTERMINATOR = ''\n''
			,FIRSTROW = 2
			,DATA_SOURCE = ''migration_tempdata_blob'+ @dataSourceId + '''
		)');
		EXEC('
		IF EXISTS (SELECT 1 FROM sys.external_data_sources where name = ''migration_tempdata_blob'+ @dataSourceId +''')
		BEGIN
			DROP EXTERNAL DATA SOURCE [migration_tempdata_blob'+ @dataSourceId +']
		END');
	END
	ELSE
	BEGIN
		EXEC('
		BULK INSERT [migration_tempdata].[CalendarConfig] FROM ''$CalendarConfigurationFilePath$'' WITH
		(
			FIELDTERMINATOR = '',''
			,ROWTERMINATOR = ''0x0A''
			,FIRSTROW = 2
		)');
	END
END
GO

PRINT N'Checking data preconditions for migration'
GO

IF EXISTS
(
	SELECT gradeDescriptor.[CodeValue]
	FROM [edfi].[Descriptor] gradeDescriptor
	INNER JOIN  [edfi].[GradeLevelDescriptor] g
	ON g.[GradeLevelDescriptorId] = gradeDescriptor.[DescriptorId]
	INNER JOIN [edfi].[Descriptor] levelDescriptor
	ON levelDescriptor.[CodeValue] = gradeDescriptor.[CodeValue]
	INNER JOIN [edfi].[LevelDescriptor] l
	ON l.[LevelDescriptorId] = levelDescriptor.[DescriptorId]
	INNER JOIN [edfi].[StaffCredential] c
	ON c.[LevelDescriptorID] = l.[LevelDescriptorId]
	WHERE NOT EXISTS (SELECT [LevelDescriptorId] FROM [edfi].[LevelDescriptorGradeLevel] WHERE [LevelDescriptorId] = l.[LevelDescriptorId])
	GROUP BY gradeDescriptor.[CodeValue]
	HAVING COUNT (gradeDescriptor.[CodeValue]) > 1
)
BEGIN
	DECLARE @ErrorMessage NVARCHAR(max) = N'Action Required - [edfi].[StaffCredential]:  Unable to map all [LevelDescriptorId] values to a single [GradeLevelDescriptorId].  To resolve all conflicts, please ensure that all [LevelDescriptorId] values found in [edfi].[StaffCredential] have a corresponding entry in [edfi].[LevelDescriptorGradeLevel].  This is required to upgrade all GradeLevel references.'
	PRINT @ErrorMessage;
	THROW 53000, @ErrorMessage, 1
END
GO

IF EXISTS
(
SELECT StateOfIssueStateAbbreviationTypeId
FROM [edfi].[StaffCredential]
WHERE StateOfIssueStateAbbreviationTypeId IS NULL
)
BEGIN
	DECLARE @ErrorMessage NVARCHAR(max) = N'Action Required - [edfi].[StaffCredential]: Please ensure that [StateOfIssueStateAbbreviationTypeId] has been set for all rows in [edfi].[StaffCredential].  This is a required value for upgrade, and will become part of a new primary key.'
	PRINT @ErrorMessage;
	THROW 53001, @ErrorMessage, 1
END
ELSE
	PRINT N'All StateOfIssueStateAbbreviationTypeId values in [edfi].[StaffCredential] OK'
GO

IF EXISTS
(
SELECT [EducationOrganizationId], [RequisitionNumber]
FROM [edfi].[OpenStaffPosition]
GROUP BY [EducationOrganizationId], [RequisitionNumber]
HAVING COUNT ([RequisitionNumber]) > 1
)
BEGIN
	DECLARE @ErrorMessage NVARCHAR(max) = N'Action Required - [edfi].[OpenStaffPosition]: Please ensure that all [RequisitionNumber] values appear only once for each [EducationOrganizationId].  This uniqueness is required for the upgraded primary key.'
	PRINT @ErrorMessage;
	THROW 53002, @ErrorMessage, 1
END
ELSE
	PRINT N'All RequisitionNumbers in [edfi].[OpenStaffPosition] OK'
GO

IF EXISTS
(
SELECT [RestraintEventIdentifier], [SchoolId], [StudentUSI]
FROM [edfi].[RestraintEvent]
GROUP BY [RestraintEventIdentifier], [SchoolId], [StudentUSI]
HAVING COUNT([RestraintEventIdentifier]) > 1
)
BEGIN
	DECLARE @ErrorMessage NVARCHAR(max) = N'Action Required - [edfi].[RestraintEvent]: Please ensure that there are no duplicate [RestraintEventIdentifier] values for the same student at the same school.  This uniqueness is required for the upgraded primary key.'
	PRINT @ErrorMessage;
	THROW 53003, @ErrorMessage, 1
END
ELSE
	PRINT N'All RestraintEventIdentifiers in [edfi].[RestraintEvent] OK'
GO

/*
	Begin compatibility checks for decimal precision/scale to prevent failures when certain large values are encountered during migration.
	These error states are most likely to be encountered on an ODS that contains data that has been automatically generated
	Most users with realistic field data are unlikely to be affected by the below data requirements.
*/
IF EXISTS
(
SELECT [DisciplineActionIdentifier]
FROM [edfi].[DisciplineAction]
WHERE
	([DisciplineActionLength] > 999)
	OR ([ActualDisciplineActionLength] > 999)
	OR ([DisciplineActionLength] < -999)
	OR ([ActualDisciplineActionLength] < -999)
)
BEGIN
	DECLARE @ErrorMessage NVARCHAR(max) = N'Action Required - [edfi].[DisciplineAction]: Please ensure that all values for DisciplineActionLength and ActualDisciplineActionLength fall between 0 and 999.  This compatibility is required for a data conversion operation that will occur during the upgrade process.'
	PRINT @ErrorMessage;
	THROW 53004, @ErrorMessage, 1
END
ELSE
	PRINT N'All action length values in [edfi].[DisciplineAction] OK'
GO

IF EXISTS
(
SELECT 1
FROM [edfi].[CourseTranscript]
WHERE
	([AttemptedCredits] > 999999.999)
	OR ([EarnedCredits] > 999999.999)
	OR ([AttemptedCredits] < -999999.999)
	OR ([EarnedCredits] < -999999.999)
)
BEGIN
	DECLARE @ErrorMessage NVARCHAR(max) = N'Action Required - [edfi].[CourseTranscript]: Found one or more records with an absolute value larger than one million set for AttemptedCredits or EarnedCredits.  This number is too large for the new schema.  Please ensure that all course credit values fall between 0 and 999999.99.  This compatibility is required for a data conversion operation that will occur during the upgrade process.'
	PRINT @ErrorMessage;
	THROW 53004, @ErrorMessage, 1
END
ELSE
	PRINT N'All course credit values in [edfi].[CourseTranscript] OK'
GO

IF EXISTS
(
SELECT 1
FROM [edfi].[CourseTranscriptEarnedAdditionalCredits]
WHERE
	([Credits] > 999999.999)
	OR ([Credits] < -999999.999)
)
BEGIN
	DECLARE @ErrorMessage NVARCHAR(max) = N'Action Required - [edfi].[CourseTranscriptEarnedAdditionalCredits]: Found one or more records with an absolute value larger than one million set for Credits.  This number is too large for the new schema.  Please ensure that all course credit values fall between 0 and 999999.99.  This compatibility is required for a data conversion operation that will occur during the upgrade process.'
	PRINT @ErrorMessage;
	THROW 53004, @ErrorMessage, 1
END
ELSE
	PRINT N'All course credit values in [edfi].[CourseTranscriptEarnedAdditionalCredits] OK'
GO


IF EXISTS
(
SELECT 1
FROM [edfi].[StudentAcademicRecord]
WHERE
	([CumulativeEarnedCredits] > 999999.999)
	OR ([CumulativeAttemptedCredits] > 999999.999)
	OR ([SessionEarnedCredits] > 999999.999)
	OR ([SessionAttemptedCredits] > 999999.999)
	OR ([CumulativeEarnedCredits] < -999999.999)
	OR ([CumulativeAttemptedCredits] < -999999.999)
	OR ([SessionEarnedCredits] < -999999.999)
	OR ([SessionAttemptedCredits] < -999999.999)
)
BEGIN
	DECLARE @ErrorMessage NVARCHAR(max) = N'Action Required - [edfi].[StudentAcademicRecord]: Found one or more records with course credit value set to a number with an absolute value larger than one million.  This number is too large for the new schema.  Please ensure that all values for CumulativeAttemptedCredits, CumulativeAttemptedCredits, SessionEarnedCredits, and SessionAttemptedCredits fall between 0 and 999999.99.  This compatibility is required for a data conversion operation that will occur during the upgrade process.'
	PRINT @ErrorMessage;
	THROW 53004, @ErrorMessage, 1
END
ELSE
	PRINT N'All course credit values in [edfi].[StudentAcademicRecord] OK'
GO

IF EXISTS
(
SELECT 1
FROM [edfi].[GraduationPlan]
WHERE
	([TotalRequiredCredits] > 999999.999)
	OR ([TotalRequiredCredits] < -999999.999)
)
BEGIN
	DECLARE @ErrorMessage NVARCHAR(max) = N'Action Required - [edfi].[GraduationPlan]: Found one or more records with an absolute value larger than one million set for TotalRequiredCredits.  This number is too large for the new schema.  Please ensure that all course credit values fall between 0 and 999999.99.  This compatibility is required for a data conversion operation that will occur during the upgrade process.'
	PRINT @ErrorMessage;
	THROW 53004, @ErrorMessage, 1
END
ELSE
	PRINT N'All course credit values in [edfi].[GraduationPlan] OK'
GO

IF EXISTS
(
SELECT 1
FROM [edfi].[GraduationPlanCreditsByCourse]
WHERE
	([Credits] > 999999.999)
	OR ([Credits] < -999999.999)
)
BEGIN
	DECLARE @ErrorMessage NVARCHAR(max) = N'Action Required - [edfi].[GraduationPlanCreditsByCourse]: Found one or more records with an absolute value larger than one million set for Credits.  This number is too large for the new schema.  Please ensure that all course credit values fall between 0 and 999999.99.  This compatibility is required for a data conversion operation that will occur during the upgrade process.'
	PRINT @ErrorMessage;
	THROW 53004, @ErrorMessage, 1
END
ELSE
	PRINT N'All course credit values in [edfi].[GraduationPlanCreditsByCourse] OK'
GO

IF EXISTS
(
SELECT 1
FROM [edfi].[GraduationPlanCreditsBySubject]
WHERE
	([Credits] > 999999.999)
	OR ([Credits] < -999999.999)
)
BEGIN
	DECLARE @ErrorMessage NVARCHAR(max) = N'Action Required - [edfi].[GraduationPlanCreditsBySubject]: Found one or more records with an absolute value larger than one million set for Credits.  This number is too large for the new schema.  Please ensure that all course credit values fall between 0 and 999999.99.  This compatibility is required for a data conversion operation that will occur during the upgrade process.'
	PRINT @ErrorMessage;
	THROW 53004, @ErrorMessage, 1
END
ELSE
	PRINT N'All course credit values in [edfi].[GraduationPlanCreditsBySubject] OK'
GO

IF EXISTS
(
SELECT 1
FROM [edfi].[Section]
WHERE
	([AvailableCredits] > 999999.999)
	OR ([AvailableCredits] < -999999.999)
)
BEGIN
	DECLARE @ErrorMessage NVARCHAR(max) = N'Action Required - [edfi].[Section]: Found one or more records with an absolute value larger than one million set for AvailableCredits.  This number is too large for the new schema.  Please ensure that all course credit values fall between 0 and 999999.99.  This compatibility is required for a data conversion operation that will occur during the upgrade process.'
	PRINT @ErrorMessage;
	THROW 53004, @ErrorMessage, 1
END
ELSE
	PRINT N'All course credit values in [edfi].[Section] OK'
GO

IF EXISTS
(
SELECT 1
FROM [edfi].[Course]
WHERE
	([MinimumAvailableCredits] > 999999.999)
	OR ([MaximumAvailableCredits] > 999999.999)
	OR ([MinimumAvailableCredits] < -999999.999)
	OR ([MaximumAvailableCredits] < -999999.999)
)
BEGIN
	DECLARE @ErrorMessage NVARCHAR(max) = N'Action Required - [edfi].[Course]: Found one or more records with an absolute value larger than one million set for MinimumAvailableCredits or MaximumAvailableCredits.  This number is too large for the new schema.  Please ensure that all course credit values fall between 0 and 999999.99.  This compatibility is required for a data conversion operation that will occur during the upgrade process.'
	PRINT @ErrorMessage;
	THROW 53004, @ErrorMessage, 1
END
ELSE
	PRINT N'All course credit values in [edfi].[Course] OK'
GO
/*
	End compatibility checks for decimal precision/scale 
*/

/* 
	Begin compatibility checks for newly required StudentEducationOrganizationAssociation references
*/

DECLARE @StudentEducationOrganizationCompatibilityErrors TABLE 
(
	[ErrorMessage] NVARCHAR(max) NOT NULL
)

INSERT @StudentEducationOrganizationCompatibilityErrors ([ErrorMessage])
SELECT CONCAT
	(
	'* ', [TableName]
	, ' (',[ErrorCount], ' records found for students without an assigned EducationOrganizationId)'
	)
FROM
(
	SELECT '[edfi].[StudentProgramParticipation]' AS [TableName], COUNT(s.[StudentUSI]) AS [ErrorCount]
	FROM [edfi].[StudentProgramParticipation] s
	LEFT JOIN [migration_tempdata].[get_all_student_education_orgs_v20]() allStudentEdOrgs
		ON allStudentEdOrgs.[StudentUSI] = s.[StudentUSI]
	WHERE allStudentEdOrgs.[EducationOrganizationId] IS NULL

	UNION

	SELECT '[edfi].[StudentCharacteristic]' AS [TableName], COUNT(s.[StudentUSI]) AS [ErrorCount]
	FROM [edfi].[StudentCharacteristic] s
	LEFT JOIN [migration_tempdata].[get_all_student_education_orgs_v20]() allStudentEdOrgs
		ON allStudentEdOrgs.[StudentUSI] = s.[StudentUSI]
	WHERE allStudentEdOrgs.[EducationOrganizationId] IS NULL

	UNION

	SELECT '[edfi].[StudentIndicator]' AS [TableName], COUNT(s.[StudentUSI]) AS [ErrorCount]
	FROM [edfi].[StudentIndicator] s
	LEFT JOIN [migration_tempdata].[get_all_student_education_orgs_v20]() allStudentEdOrgs
		ON allStudentEdOrgs.[StudentUSI] = s.[StudentUSI]
	WHERE allStudentEdOrgs.[EducationOrganizationId] IS NULL

	UNION

	SELECT '[edfi].[StudentLearningStyle]' AS [TableName], COUNT(s.[StudentUSI]) AS [ErrorCount]
	FROM [edfi].[StudentLearningStyle] s
	LEFT JOIN [migration_tempdata].[get_all_student_education_orgs_v20]() allStudentEdOrgs
		ON allStudentEdOrgs.[StudentUSI] = s.[StudentUSI]
	WHERE allStudentEdOrgs.[EducationOrganizationId] IS NULL

	UNION

	SELECT '[edfi].[StudentAddress]' AS [TableName], COUNT(s.[StudentUSI]) AS [ErrorCount]
	FROM [edfi].[StudentAddress] s
	LEFT JOIN [migration_tempdata].[get_all_student_education_orgs_v20]() allStudentEdOrgs
		ON allStudentEdOrgs.[StudentUSI] = s.[StudentUSI]
	WHERE allStudentEdOrgs.[EducationOrganizationId] IS NULL

	UNION

	SELECT '[edfi].[StudentIdentificationCode]' AS [TableName], COUNT(s.[StudentUSI]) AS [ErrorCount]
	FROM [edfi].[StudentIdentificationCode] s
	LEFT JOIN [migration_tempdata].[get_all_student_education_orgs_v20]() allStudentEdOrgs
		ON allStudentEdOrgs.[StudentUSI] = s.[StudentUSI]
	WHERE allStudentEdOrgs.[EducationOrganizationId] IS NULL

	UNION

	SELECT '[edfi].[StudentElectronicMail]' AS [TableName], COUNT(s.[StudentUSI]) AS [ErrorCount]
	FROM [edfi].[StudentElectronicMail] s
	LEFT JOIN [migration_tempdata].[get_all_student_education_orgs_v20]() allStudentEdOrgs
		ON allStudentEdOrgs.[StudentUSI] = s.[StudentUSI]
	WHERE allStudentEdOrgs.[EducationOrganizationId] IS NULL

	UNION

	SELECT '[edfi].[StudentInternationalAddress]' AS [TableName], COUNT(s.[StudentUSI]) AS [ErrorCount]
	FROM [edfi].[StudentInternationalAddress] s
	LEFT JOIN [migration_tempdata].[get_all_student_education_orgs_v20]() allStudentEdOrgs
		ON allStudentEdOrgs.[StudentUSI] = s.[StudentUSI]
	WHERE allStudentEdOrgs.[EducationOrganizationId] IS NULL

	UNION

	SELECT '[edfi].[StudentLanguage]' AS [TableName], COUNT(s.[StudentUSI]) AS [ErrorCount]
	FROM [edfi].[StudentLanguage] s
	LEFT JOIN [migration_tempdata].[get_all_student_education_orgs_v20]() allStudentEdOrgs
		ON allStudentEdOrgs.[StudentUSI] = s.[StudentUSI]
	WHERE allStudentEdOrgs.[EducationOrganizationId] IS NULL

	UNION

	SELECT '[edfi].[StudentRace]' AS [TableName], COUNT(s.[StudentUSI]) AS [ErrorCount]
	FROM [edfi].[StudentRace] s
	LEFT JOIN [migration_tempdata].[get_all_student_education_orgs_v20]() allStudentEdOrgs
		ON allStudentEdOrgs.[StudentUSI] = s.[StudentUSI]
	WHERE allStudentEdOrgs.[EducationOrganizationId] IS NULL

	UNION

	SELECT '[edfi].[StudentDisability]' AS [TableName], COUNT(s.[StudentUSI]) AS [ErrorCount]
	FROM [edfi].[StudentDisability] s
	LEFT JOIN [migration_tempdata].[get_all_student_education_orgs_v20]() allStudentEdOrgs
		ON allStudentEdOrgs.[StudentUSI] = s.[StudentUSI]
	WHERE allStudentEdOrgs.[EducationOrganizationId] IS NULL

	UNION

	SELECT '[edfi].[StudentTelephone]' AS [TableName], COUNT(s.[StudentUSI]) AS [ErrorCount]
	FROM [edfi].[StudentTelephone] s
	LEFT JOIN [migration_tempdata].[get_all_student_education_orgs_v20]() allStudentEdOrgs
		ON allStudentEdOrgs.[StudentUSI] = s.[StudentUSI]
	WHERE allStudentEdOrgs.[EducationOrganizationId] IS NULL
) t
WHERE t.[ErrorCount] > 0
IF EXISTS
(
	SELECT * FROM @StudentEducationOrganizationCompatibilityErrors
)
BEGIN
	DECLARE @ListOfTablesWithMissingEdOrgReferences NVARCHAR(max)
	DECLARE @Newline CHAR(2) = CHAR(13) + CHAR(10)

	SELECT @ListOfTablesWithMissingEdOrgReferences = COALESCE(@ListOfTablesWithMissingEdOrgReferences + @Newline ,'') + [ErrorMessage]
	FROM @StudentEducationOrganizationCompatibilityErrors
	
	DECLARE @FinalErrorMessage NVARCHAR(max)
	SELECT  @FinalErrorMessage = CONCAT('Action Required - An EducationOrganizationId must be resolvable for every student in the following table(s) for compatibility with the upgraded schema starting in version 3:'
	, @Newline
	, @Newline
	, @ListOfTablesWithMissingEdOrgReferences
	, @Newline
	, @Newline
	, 'The easiest way to meet this requirement is to ensure that every student has a corresponding record in [edfi].[StudentSchoolAssociation] or [edfi].[StudentEducationOrganizationAssociation]')
	;THROW 53007, @FinalErrorMessage, 1
END
ELSE
	PRINT N'All student education organization references OK'
GO

/* 
	End compatibility checks for newly required StudentEducationOrganizationAssociation references
*/

IF EXISTS
(
	SELECT p.*
	FROM [edfi].[PostSecondaryEventPostSecondaryInstitution] p
	LEFT JOIN [edfi].[EducationOrganization] e
		ON p.[PostSecondaryInstitutionId] = CAST(e.[EducationOrganizationId] as nvarchar(30))
	WHERE e.[EducationOrganizationId] IS NULL
)
BEGIN
	DECLARE @ErrorMessage NVARCHAR(max) = N'Action Required - [edfi].[PostSecondaryEventPostSecondaryInstitution]: Please ensure that all every [PostSecondaryInstitutionId] has a corresponding EducationOrganizationId entry in [edfi].[EducationOrganization].  This requird value will become a foreign key reference in the upgraded schema.'
	PRINT @ErrorMessage;
	THROW 53007, @ErrorMessage, 1
END
ELSE
	PRINT N'Table [edfi].[PostSecondaryEventPostSecondaryInstitution]: EducationOrganization reference check OK'
GO

IF EXISTS
(
	SELECT *
	FROM [edfi].[AccountCode]
)
BEGIN
	DECLARE @ErrorMessage NVARCHAR(max) = N'Action Required - [edfi].[AccountCode]: This table must be empty before the schema can be upgraded.  This is required in order to replace AccountCodeDescriptor (removed in 2.0) with AccountClassificationDescriptor (new in version 3) in the primary key.  Please backup your data and then remove all records in [edfi].[AccountCode] before proceeding'
	PRINT @ErrorMessage;
	THROW 53008, @ErrorMessage, 1
END
ELSE
	PRINT N'Table [edfi].[AccountCode] compatibility check OK'
GO

IF EXISTS
(
	SELECT d.*
	FROM [edfi].[DisciplineActionDisciplineIncident] d
	LEFT JOIN [edfi].[StudentDisciplineIncidentAssociation] s
	ON s.[StudentUSI] = d.[StudentUSI]
			AND s.[SchoolId] = d.[SchoolId]
			AND s.[IncidentIdentifier] = d.[IncidentIdentifier]
	WHERE s.[StudentUSI] IS NULL
)
BEGIN
	DECLARE @ErrorMessage NVARCHAR(max) = N'Action Required - [edfi].[DisciplineActionDisciplineIncident]: Please ensure that every record in [edfi].[DisciplineActionDisciplineIncident] has a corresponding record in [edfi].[StudentDisciplineIncidentAssociation] with the same [StudentUSI], [SchoolId], and [IncidentIdentifier].  (Details: One or more discipline action records were found that reference discipline incidents where the student associated with the action was not involved in the incident.  This is no longer allowed in version 3)'
	PRINT @ErrorMessage;
	THROW 53009, @ErrorMessage, 1
END
ELSE
	PRINT N'Table [edfi].[DisciplineActionDisciplineIncident]: reference check OK'
GO

DECLARE @UnknownAssessmentNamespace TABLE ([Namespace] NVARCHAR(MAX))
INSERT @UnknownAssessmentNamespace
	SELECT DISTINCT TOP (5) '* Unknown Assessment Namespace: ' + CASE WHEN [Namespace] = '' THEN ''''' (an empty string)' ELSE [Namespace] END
	FROM [edfi].[Assessment]
	WHERE [migration_tempdata].[is_valid_v3_namespace_format] ([Namespace]) = 0
	AND [migration_tempdata].[get_org_from_v20_namespace] ([Namespace]) IS NULL
IF EXISTS
(
	SELECT * FROM @UnknownAssessmentNamespace
)
BEGIN
	DECLARE @InvalidAssessmentNamespaceList NVARCHAR(max)
	DECLARE @Newline CHAR(2) = CHAR(13) + CHAR(10)

	SELECT @InvalidAssessmentNamespaceList = COALESCE(@InvalidAssessmentNamespaceList + @Newline ,'') + [Namespace]
	FROM @UnknownAssessmentNamespace
	
	DECLARE @FinalErrorMessage NVARCHAR(max)
	SELECT  @FinalErrorMessage = CONCAT('Action Required - [edfi].[Assessment]: One or more [Namespace] values cannot be upgraded to version 3 format automatically.  Up to 5 unknown namespaces will be listed:'
	, @Newline
	, @Newline
	, @InvalidAssessmentNamespaceList
	, @Newline
	, @Newline
	, 'To proceed, update the [Namespace] values on [edfi].[Assessment].'
	,@Newline
	,'Set the namespace format to "uri://[organization-name]/Assessment". (Valid organization names can only contain alphanumeric and $-_.+!*''(),).')
	;THROW 55004, @FinalErrorMessage, 1
END
GO

DECLARE @UnknownLearningObjectiveNamespace TABLE ([Namespace] NVARCHAR(MAX))
INSERT @UnknownLearningObjectiveNamespace
	SELECT DISTINCT TOP (5) '* Unknown Learning Objective Namespace: ' +  + CASE WHEN [Namespace] = '' THEN ''''' (an empty string)' ELSE [Namespace] END
	FROM [edfi].[LearningObjective]
	WHERE [migration_tempdata].[is_valid_v3_namespace_format] ([Namespace]) = 0
	AND [migration_tempdata].[get_org_from_v20_namespace] ([Namespace]) IS NULL
IF EXISTS
(
	SELECT * FROM @UnknownLearningObjectiveNamespace
)
BEGIN
	DECLARE @InvalidLearningObjectiveNamespaceList NVARCHAR(max)
	DECLARE @Newline CHAR(2) = CHAR(13) + CHAR(10)

	SELECT @InvalidLearningObjectiveNamespaceList = COALESCE(@InvalidLearningObjectiveNamespaceList + @Newline ,'') + [Namespace]
	FROM @UnknownLearningObjectiveNamespace
	
	DECLARE @FinalErrorMessage NVARCHAR(max)
	SELECT  @FinalErrorMessage = CONCAT('Action Required - [edfi].[LearningObjective]: One or more [Namespace] values cannot be upgraded to version 3 format automatically.  Up to 5 unknown namespaces will be listed:'
	, @Newline
	, @Newline
	, @InvalidLearningObjectiveNamespaceList
	, @Newline
	, @Newline
	, 'To proceed, update the [Namespace] values on [edfi].[LearningObjective].'
	,@Newline
	,'Set the namespace format to "uri://[organization-name]/LearningObjective". (Valid organization names can only contain alphanumeric and $-_.+!*''(),).')
	;THROW 55006, @FinalErrorMessage, 1
END
GO

IF ('$CredentialNamespacePrefix$' = '') AND EXISTS
(
	SELECT 1
	FROM [edfi].[StaffCredential]
)
BEGIN
	DECLARE @ErrorMessage NVARCHAR(max) = N'Action Required - Command Line: Please include the --CredentialNamespace "uri://[example-organization-here]" option at the command line when launching the upgrade utility.  This value will be inserted as the default namespace when creating all version 3 [edfi].[Credential] records (formerly [edfi].[StaffCredential] in 2.0)'
	PRINT @ErrorMessage;
	THROW 55002, @ErrorMessage, 1
END
GO

DECLARE @EdFiTablesNewInV3 TABLE
(
	[ObjectName] NVARCHAR(128) NOT NULL
)

INSERT @EdFiTablesNewInV3 ([ObjectName])
VALUES
	('PostSecondaryInstitutionMediumOfInstruction'),
	('StudentEducationOrganizationAssociationLanguage'),
	('StudentSchoolFoodServiceProgramAssociationSchoolFoodServiceProgramService'),
	('StudentEducationOrganizationAssociationLanguageUse'),
	('StaffTribalAffiliation'),
	('StudentEducationOrganizationAssociationProgramParticipation'),
	('StudentEducationOrganizationAssociationProgramParticipationProgramCharacteristic'),
	('BellScheduleClassPeriod'),
	('StudentEducationOrganizationAssociationRace'),
	('BellScheduleDate'),
	('StudentEducationOrganizationAssociationStudentCharacteristic'),
	('BellScheduleGradeLevel'),
	('StudentSpecialEducationProgramAssociationDisability'),
	('StudentEducationOrganizationAssociationStudentCharacteristicPeriod'),
	('StudentSpecialEducationProgramAssociationDisabilityDesignation'),
	('StudentEducationOrganizationAssociationStudentIdentificationCode'),
	('StudentEducationOrganizationAssociationStudentIndicator'),
	('Credential'),
	('ProgramSponsor'),
	('Calendar'),
	('StudentSpecialEducationProgramAssociationSpecialEducationProgramService'),
	('StudentEducationOrganizationAssociationStudentIndicatorPeriod'),
	('CredentialAcademicSubject'),
	('StudentEducationOrganizationAssociationTelephone'),
	('StaffAbsenceEvent'),
	('StudentTitleIPartAProgramAssociationService'),
	('CredentialEndorsement'),
	('StudentEducationOrganizationAssociationTribalAffiliation'),
	('StudentEducationOrganizationResponsibilityAssociation'),
	('CredentialGradeLevel'),
	('StaffAddressPeriod'),
	('CalendarGradeLevel'),
	('StudentHomelessProgramAssociationHomelessProgramService'),
	('GeneralStudentProgramAssociation'),
	('StaffEducationOrganizationContactAssociation'),
	('AccountAccountCode'),
	('ClassPeriodMeetingTime'),
	('StaffEducationOrganizationContactAssociationAddress'),
	('StaffEducationOrganizationContactAssociationAddressPeriod'),
	('StaffEducationOrganizationContactAssociationTelephone'),
	('StudentLanguageInstructionProgramAssociationEnglishLanguageProficiencyAssessment'),
	('StudentLanguageInstructionProgramAssociationLanguageInstructionProgramService'),
	('DisciplineActionStudentDisciplineIncidentAssociation'),
	('CommunityProviderLicense'),
	('ParentAddressPeriod'),
	('StudentLearningObjectiveGeneralStudentProgramAssociation'),
	('StudentLearningObjectiveStudentSectionAssociation'),
	('StudentCompetencyObjectiveGeneralStudentProgramAssociation'),
	('StudentCompetencyObjectiveStudentSectionAssociation'),
	('ParentLanguage'),
	('StudentMigrantEducationProgramAssociationMigrantEducationProgramService'),
	('ParentLanguageUse'),
	('StudentNeglectedOrDelinquentProgramAssociationNeglectedOrDelinquentProgramService'),
	('StaffLeave'),
	('StudentCTEProgramAssociationService'),
	('ParentPersonalIdentificationDocument'),
	('GraduationPlanRequiredAssessmentPerformanceLevel'),
	('StaffPersonalIdentificationDocument'),
	('StudentPersonalIdentificationDocument'),
	('StudentEducationOrganizationAssociationAddress'),
	('StudentEducationOrganizationAssociationAddressPeriod'),
	('StaffRecognition'),
	('AssessmentPeriod'),
	('StudentEducationOrganizationAssociationCohortYear'),
	('StudentEducationOrganizationAssociationDisability'),
	('StudentEducationOrganizationAssociationDisabilityDesignation'),
	('StudentEducationOrganizationAssociationElectronicMail'),
	('SectionClassPeriod'),
	('StudentEducationOrganizationAssociationInternationalAddress'),
	('EducationOrganizationAddressPeriod'),
	('AbsenceEventCategoryDescriptor'),
	('AcademicHonorCategoryDescriptor'),
	('AccountClassificationDescriptor'),
	('AdditionalCreditTypeDescriptor'),
	('AddressTypeDescriptor'),
	('AdministrationEnvironmentDescriptor'),
	('PublicationStatusDescriptor'),
	('AssessmentItemCategoryDescriptor'),
	('AssessmentItemResultDescriptor'),
	('AssessmentReportingMethodDescriptor'),
	('ResultDatatypeTypeDescriptor'),
	('AttemptStatusDescriptor'),
	('CalendarTypeDescriptor'),
	('CareerPathwayDescriptor'),
	('CharterApprovalAgencyTypeDescriptor'),
	('CharterStatusDescriptor'),
	('CitizenshipStatusDescriptor'),
	('CohortScopeDescriptor'),
	('CohortTypeDescriptor'),
	('CohortYearTypeDescriptor'),
	('CommunityOrganization'),
	('CommunityProvider'),
	('ProviderCategoryDescriptor'),
	('ProviderProfitabilityDescriptor'),
	('ProviderStatusDescriptor'),
	('LicenseStatusDescriptor'),
	('LicenseTypeDescriptor'),
	('ContactTypeDescriptor'),
	('ContentClassDescriptor'),
	('CostRateDescriptor'),
	('CourseDefinedByDescriptor'),
	('CourseGPAApplicabilityDescriptor'),
	('CreditTypeDescriptor'),
	('CourseAttemptResultDescriptor'),
	('CourseLevelCharacteristicDescriptor'),
	('CurriculumUsedDescriptor'),
	('CourseRepeatCodeDescriptor'),
	('MethodCreditEarnedDescriptor'),
	('CredentialTypeDescriptor'),
	('StateAbbreviationDescriptor'),
	('TeachingCredentialBasisDescriptor'),
	('DeliveryMethodDescriptor'),
	('DiplomaLevelDescriptor'),
	('DiplomaTypeDescriptor'),
	('DisabilityDesignationDescriptor'),
	('DisabilityDeterminationSourceTypeDescriptor'),
	('DisciplineActionLengthDifferenceReasonDescriptor'),
	('IncidentLocationDescriptor'),
	('EducationalEnvironmentDescriptor'),
	('InteractivityStyleDescriptor'),
	('SexDescriptor'),
	('OperationalStatusDescriptor'),
	('EducationOrganizationCategoryDescriptor'),
	('InstitutionTelephoneNumberTypeDescriptor'),
	('NetworkPurposeDescriptor'),
	('EducationPlanDescriptor'),
	('ElectronicMailTypeDescriptor'),
	('EntryGradeLevelReasonDescriptor'),
	('EventCircumstanceDescriptor'),
	('GradeTypeDescriptor'),
	('PerformanceBaseConversionDescriptor'),
	('GradebookEntryTypeDescriptor'),
	('GunFreeSchoolsActReportingStatusDescriptor'),
	('HomelessPrimaryNighttimeResidenceDescriptor'),
	('HomelessProgramServiceDescriptor'),
	('IdentificationDocumentUseDescriptor'),
	('InternetAccessDescriptor'),
	('InterventionClassDescriptor'),
	('InterventionEffectivenessRatingDescriptor'),
	('PopulationServedDescriptor'),
	('LanguageInstructionProgramServiceDescriptor'),
	('LanguageUseDescriptor'),
	('LearningStandardCategoryDescriptor'),
	('LocalEducationAgencyCategoryDescriptor'),
	('SchoolChoiceImplementStatusDescriptor'),
	('MagnetSpecialProgramEmphasisSchoolDescriptor'),
	('MediumOfInstructionDescriptor'),
	('MigrantEducationProgramServiceDescriptor'),
	('MonitoredDescriptor'),
	('NeglectedOrDelinquentProgramDescriptor'),
	('NeglectedOrDelinquentProgramServiceDescriptor'),
	('OldEthnicityDescriptor'),
	('PostingResultDescriptor'),
	('OtherNameTypeDescriptor'),
	('PersonalInformationVerificationDescriptor'),
	('TelephoneNumberTypeDescriptor'),
	('ParticipationDescriptor'),
	('PostSecondaryEventCategoryDescriptor'),
	('PostSecondaryInstitution'),
	('PostSecondaryInstitutionLevelDescriptor'),
	('ProficiencyDescriptor'),
	('ProgramTypeDescriptor'),
	('ProgramSponsorDescriptor'),
	('ProgressDescriptor'),
	('ProgressLevelDescriptor'),
	('RaceDescriptor'),
	('ReasonNotTestedDescriptor'),
	('RecognitionTypeDescriptor'),
	('RelationDescriptor'),
	('RepeatIdentifierDescriptor'),
	('ResponseIndicatorDescriptor'),
	('RestraintEventReasonDescriptor'),
	('RetestIndicatorDescriptor'),
	('SchoolTypeDescriptor'),
	('TitleIPartASchoolDesignationDescriptor'),
	('SchoolCategoryDescriptor'),
	('SchoolFoodServiceProgramServiceDescriptor'),
	('SeparationDescriptor'),
	('SpecialEducationProgramServiceDescriptor'),
	('StaffLeaveEventCategoryDescriptor'),
	('TribalAffiliationDescriptor'),
	('VisaDescriptor'),
	('TechnicalSkillsAssessmentDescriptor'),
	('StudentParticipationCodeDescriptor'),
	('StudentHomelessProgramAssociation'),
	('StudentLanguageInstructionProgramAssociation'),
	('StudentNeglectedOrDelinquentProgramAssociation'),
	('StudentSchoolFoodServiceProgramAssociation'),
	('TitleIPartAParticipantDescriptor')

DECLARE @ExistingTablesWithConflictingNames TABLE 
(
	[ListItem] NVARCHAR(130) NOT NULL
)

INSERT @ExistingTablesWithConflictingNames ([ListItem])
SELECT DISTINCT CONCAT
(
'* edfi.', e.[ObjectName]
)
FROM @EdFiTablesNewInV3 e
INNER JOIN [sys].[objects] o
	ON o.[type] = 'U'
	AND o.[name] COLLATE DATABASE_DEFAULT = e.[ObjectName]
	AND OBJECT_SCHEMA_NAME(o.[object_id]) = 'edfi'

IF EXISTS
(
	SELECT * FROM @ExistingTablesWithConflictingNames 
)
BEGIN
	DECLARE @TableList NVARCHAR(max)
	DECLARE @Newline CHAR(2) = CHAR(13) + CHAR(10)

	SELECT @TableList = COALESCE(@TableList + @Newline ,'') + [ListItem]
	FROM @ExistingTablesWithConflictingNames
	
	DECLARE @FinalErrorMessage NVARCHAR(max)
	SELECT  @FinalErrorMessage = CONCAT('Action Required - Conflicting table name: The following existing table(s) will be created as a new part of the new schema'
	, @Newline
	, @Newline
	, @TableList
	, @Newline
	, @Newline
	, 'The above table(s) must be renamed or dropped before the upgrade can proceed.  You may also optionally create your own custom scripts to move existing data into the new tables once they have been created.')
	;THROW 53012, @FinalErrorMessage, 1
END
ELSE
	PRINT N'Table compatibility check: OK'
GO

PRINT N'Checking school references in supplied calendar configuration'
GO

--Raise an error if any of the provided SchoolIds do not appear in [edfi].[School]
DECLARE @SchoolList TABLE
(
  SchoolId INT
)
INSERT @SchoolList (SchoolId)
SELECT DISTINCT m.SchoolId
FROM [migration_tempdata].[CalendarConfig] m
LEFT JOIN [edfi].[School] s
ON 
	s.SchoolId = m.SchoolId
WHERE s.SchoolId IS NULL
IF EXISTS
(
	SELECT * FROM @SchoolList
)

BEGIN
	DECLARE @MaxErrors INT = 10
	DECLARE @SchoolErrors NVARCHAR(MAX) 
	SELECT TOP (@MaxErrors) @SchoolErrors = COALESCE(@SchoolErrors + ', ', '') + CONVERT(NVARCHAR(10),SchoolId) FROM @SchoolList ORDER BY SchoolId
	DECLARE @ErrorMessage NVARCHAR(max)
	SELECT  @ErrorMessage = CONCAT(N'Calendar configuration file error - Found ', COUNT(*), ' SchoolId values in the supplied calendar config that do not appear in table [edfi].[School].  The top ', @MaxErrors, ' schools will be listed:  ', @SchoolErrors) FROM @SchoolList
	PRINT @ErrorMessage;
	THROW 54000, @ErrorMessage, 1
END
GO

PRINT N'Validating calendar configuration against [edfi].[Session]'
GO

--Raise an error if any entries in edfi.Session are not covered by the date ranges in calendar config
DECLARE @SchoolList TABLE
(
  SchoolId INT
)
INSERT INTO @SchoolList (SchoolId) 
SELECT DISTINCT s.SchoolId
FROM [edfi].[Session] s
LEFT JOIN [migration_tempdata].[CalendarConfig] m
ON 
	s.SchoolId = m.SchoolId
	AND s.[BeginDate] >= m.[BeginDate]
	AND s.[EndDate] <= m.[EndDate]
WHERE m.SchoolId IS NULL

IF EXISTS
(
	SELECT * FROM @SchoolList
)
BEGIN
	DECLARE @MaxErrors INT = 10
	DECLARE @SchoolErrors NVARCHAR(MAX) 
	SELECT TOP (@MaxErrors) @SchoolErrors = COALESCE(@SchoolErrors + ', ', '') + CONVERT(NVARCHAR(10),SchoolId) FROM @SchoolList ORDER BY SchoolId
	DECLARE @ErrorMessage NVARCHAR(max)
	SELECT  @ErrorMessage = CONCAT(N'Calendar configuration file error - Found ', COUNT(*), ' date ranges in [edfi].[Session] which did not fall within the dates specified in the calendar configuration.  The top ', @MaxErrors, ' affected schools will be listed:  ', @SchoolErrors) FROM @SchoolList
	PRINT @ErrorMessage;
	THROW 54001, @ErrorMessage, 1
END
GO

--Raise an error if the school year information in edfi.Session does not match the calendar configuration
DECLARE @SchoolList TABLE
(
  SchoolId INT
)
INSERT @SchoolList (SchoolId)
SELECT DISTINCT s.SchoolId
FROM [edfi].[Session] s
LEFT JOIN [migration_tempdata].[CalendarConfig] m
ON 
	s.SchoolId = m.SchoolId
	AND s.[BeginDate] >= m.[BeginDate]
	AND s.[EndDate] <= m.[EndDate]
WHERE m.SchoolYear != s.SchoolYear
IF EXISTS
(
	SELECT * FROM @SchoolList
)

BEGIN
	DECLARE @MaxErrors INT = 10
	DECLARE @SchoolErrors NVARCHAR(MAX) 
	SELECT TOP (@MaxErrors) @SchoolErrors = COALESCE(@SchoolErrors + ', ', '') + CONVERT(NVARCHAR(10),SchoolId) FROM @SchoolList ORDER BY SchoolId
	DECLARE @ErrorMessage NVARCHAR(max)
	SELECT  @ErrorMessage = CONCAT(N'Calendar configuration file error - Found ', COUNT(*), ' entries [edfi].[Session] which did not match the school year entered in the supplied calendar configuration.  The top ', @MaxErrors, ' affected schools will be listed:  ', @SchoolErrors) FROM @SchoolList
	PRINT @ErrorMessage;
	THROW 54002, @ErrorMessage, 1
END
GO

PRINT N'Validating calendar configuration against [edfi].[CalendarDate]'
GO

--Raise an error if any entries in edfi.CalendarDate are not covered by the date ranges in calendar config
DECLARE @SchoolList TABLE
(
  SchoolId INT
)
INSERT @SchoolList (SchoolId)
SELECT DISTINCT c.SchoolId
FROM [edfi].[CalendarDate] c
LEFT JOIN [migration_tempdata].[CalendarConfig] m
ON 
	c.SchoolId = m.SchoolId
	AND c.[Date] >= m.[BeginDate]
	AND c.[Date] <= m.[EndDate]
WHERE m.SchoolId IS NULL

IF EXISTS
(
	SELECT * FROM  @SchoolList
)
BEGIN
	IF ('$CalendarConfigurationFilePath$' = '')
	BEGIN
		DECLARE @CalendarConfigRequiredErrorMessage NVARCHAR(MAX) 
		SELECT @CalendarConfigRequiredErrorMessage = 'Action Required:  Please create a calendar configuration csv file (see the contents of the directory "Sample Calendar Configuration Files" for examples).  Add command line option --CalendarConfigPath "C:\example\full\path\to\calendar-config.csv" to make this file accessible to the migration tool.  (Details:  A version 3 school calendar cannot be automatically resolved for this ODS because there are entries in [edfi].[CalendarDate] that fall outside of the dates defined in [edfi].[Session])' 
		PRINT @CalendarConfigRequiredErrorMessage;
		THROW 54010, @CalendarConfigRequiredErrorMessage, 1
	END
	ELSE
	BEGIN
		DECLARE @MaxErrors INT = 10
		DECLARE @SchoolErrors NVARCHAR(MAX) 
		SELECT TOP (@MaxErrors) @SchoolErrors = COALESCE(@SchoolErrors + ', ', '') + CONVERT(NVARCHAR(10),SchoolId) FROM @SchoolList ORDER BY SchoolId
		DECLARE @ErrorMessage NVARCHAR(max)
		SELECT  @ErrorMessage = CONCAT(N'Calendar configuration file error - Found ', COUNT(*), ' schools with dates in [edfi].[CalendarDate] which did not fall within the dates specified in the supplied calendar configuration.  The top ', @MaxErrors, ' affected schools will be listed:  ', @SchoolErrors) FROM @SchoolList
		PRINT @ErrorMessage;
		THROW 54003, @ErrorMessage, 1
	END
END
GO

--Raise an error if a calendar date is associated with more than one school year in calendar config
DECLARE @SchoolList TABLE
(
  SchoolId INT
)
INSERT @SchoolList (SchoolId)
SELECT DISTINCT c.SchoolId
FROM [edfi].[CalendarDate] c
INNER JOIN [migration_tempdata].[CalendarConfig] m
ON 
	c.SchoolId = m.SchoolId
	AND c.[Date] >= m.[BeginDate]
	AND c.[Date] <= m.[EndDate]
GROUP BY c.SchoolId, c.Date
HAVING COUNT(m.SchoolYear) > 1
IF EXISTS
(
	SELECT * FROM @SchoolList
)
BEGIN
	DECLARE @MaxErrors INT = 10
	DECLARE @SchoolErrors NVARCHAR(MAX)
	SELECT TOP (@MaxErrors) @SchoolErrors = COALESCE(@SchoolErrors + ', ', '') + CONVERT(NVARCHAR(10),SchoolId) FROM @SchoolList ORDER BY SchoolId
	DECLARE @ErrorMessage NVARCHAR(max)
	SELECT  @ErrorMessage = CONCAT(N'Calendar configuration file error - Found ', COUNT(*), ' schools with dates in [edfi].[CalendarDate] associated with more than one school year in the supplied calendar configuration.  The top ', @MaxErrors, ' affected schools will be listed:  ', @SchoolErrors) FROM @SchoolList
	PRINT @ErrorMessage;
	THROW 54004, @ErrorMessage, 1
END
GO

PRINT N'Validating calendar configuration against [edfi].[GradingPeriod]'
GO

--Raise an error if any entries in edfi.GradingPeriod are not covered by the date ranges in calendar config to support conversion to the new version 3 primary key
DECLARE @SchoolList TABLE
(
  SchoolId INT
)
INSERT INTO @SchoolList (SchoolId) 
SELECT DISTINCT g.SchoolId
FROM [edfi].[GradingPeriod] g
LEFT JOIN [migration_tempdata].[CalendarConfig] c
ON 
	g.[SchoolId] = c.[SchoolId]
	AND g.[BeginDate] >= c.[BeginDate]
	AND g.[BeginDate] <= c.[EndDate]
WHERE c.SchoolId IS NULL

IF EXISTS
(
	SELECT * FROM @SchoolList
)
BEGIN
	IF ('$CalendarConfigurationFilePath$' = '')
	BEGIN
		DECLARE @CalendarConfigRequiredErrorMessage NVARCHAR(MAX) 
		SELECT @CalendarConfigRequiredErrorMessage = 'Action Required:  Please create a calendar configuration csv file (see the contents of the directory "Sample Calendar Configuration Files" for examples).  Add command line option --CalendarConfigPath "C:\example\full\path\to\calendar-config.csv" to make this file accessible to the migration tool.  (Details:  A version 3 school calendar cannot be automatically resolved for this ODS because there are BeginDate entries in [edfi].[GradingPeriod] that fall outside of the dates defined in [edfi].[Session])' 
		PRINT @CalendarConfigRequiredErrorMessage;
		THROW 54011, @CalendarConfigRequiredErrorMessage, 1
	END
	ELSE
	BEGIN
		DECLARE @MaxErrors INT = 10
		DECLARE @SchoolErrors NVARCHAR(MAX) 
		SELECT TOP (@MaxErrors) @SchoolErrors = COALESCE(@SchoolErrors + ', ', '') + CONVERT(NVARCHAR(10),SchoolId) FROM @SchoolList ORDER BY SchoolId
		DECLARE @ErrorMessage NVARCHAR(max)
		SELECT  @ErrorMessage = CONCAT(N'Calendar configuration file error - Found ', COUNT(*), ' BeginDate entries in [edfi].[GradingPeriod] which did not fall within the dates specified in the calendar configuration.  The top ', @MaxErrors, ' affected schools will be listed:  ', @SchoolErrors) FROM @SchoolList
		PRINT @ErrorMessage;
		THROW 54005, @ErrorMessage, 1
	END
END
GO

--Raise an error if a BeginDate in edfi.GradingPeriod is associated with more than one school year in calendar config
DECLARE @SchoolList TABLE
(
  SchoolId INT
)
INSERT @SchoolList (SchoolId)
SELECT DISTINCT g.SchoolId
FROM [edfi].[GradingPeriod] g
INNER JOIN [migration_tempdata].[CalendarConfig] m
ON 
	g.SchoolId = m.SchoolId
	AND g.[BeginDate] >= m.[BeginDate]
	AND g.[BeginDate] <= m.[EndDate]
GROUP BY g.SchoolId, g.BeginDate
HAVING COUNT(DISTINCT m.SchoolYear) > 1
IF EXISTS
(
	SELECT * FROM @SchoolList
)
BEGIN
	DECLARE @MaxErrors INT = 10
	DECLARE @SchoolErrors NVARCHAR(MAX)
	SELECT TOP (@MaxErrors) @SchoolErrors = COALESCE(@SchoolErrors + ', ', '') + CONVERT(NVARCHAR(10),SchoolId) FROM @SchoolList ORDER BY SchoolId
	DECLARE @ErrorMessage NVARCHAR(max)
	SELECT  @ErrorMessage = CONCAT(N'Calendar configuration file error - Found ', COUNT(*), ' schools with BeginDates in [edfi].[GradingPeriod] associated with more than one school year in the supplied calendar configuration.  The top ', @MaxErrors, ' affected schools will be listed:  ', @SchoolErrors) FROM @SchoolList
	PRINT @ErrorMessage;
	THROW 54006, @ErrorMessage, 1
END
GO

PRINT N'Validating calendar configuration against school year data currently present in [edfi].[GradebookEntry]'
GO

--Raise an error if any SchoolYear entries in edfi.GradebookEntry with current valid GradingPeriod references are inconsistent with the supplied calendar config based on BeginDate
DECLARE @SchoolList TABLE
(
  SchoolId INT
)
INSERT @SchoolList (SchoolId)
SELECT DISTINCT g.SchoolId
FROM [edfi].[GradebookEntry] g
INNER JOIN [edfi].[GradingPeriod] p
ON g.[GradingPeriodDescriptorId] = p.[GradingPeriodDescriptorId]
AND g.[SchoolId] = p.[SchoolId]
AND g.[BeginDate] = p.[BeginDate]
LEFT JOIN [migration_tempdata].[CalendarConfig] c
ON 
	g.SchoolId = c.SchoolId
	AND g.[BeginDate] >= c.[BeginDate]
	AND g.[BeginDate] <= c.[EndDate]
WHERE
	g.[BeginDate] IS NOT NULL
	AND c.SchoolYear != g.SchoolYear
IF EXISTS
(
	SELECT * FROM @SchoolList
)

BEGIN
	DECLARE @MaxErrors INT = 10
	DECLARE @SchoolErrors NVARCHAR(MAX) 
	SELECT TOP (@MaxErrors) @SchoolErrors = COALESCE(@SchoolErrors + ', ', '') + CONVERT(NVARCHAR(10),SchoolId) FROM @SchoolList ORDER BY SchoolId
	DECLARE @ErrorMessage NVARCHAR(max)
	SELECT  @ErrorMessage = CONCAT(N'Calendar configuration file error - Found ', COUNT(*), ' SchoolYear entries on [edfi].[GradebookEntry] which did not match the school year entered in the supplied calendar configuration based on the corresponding BeginDate.  (Only records with a valid GradingPeriod reference have been checked).  The top ', @MaxErrors, ' affected schools will be listed:  ', @SchoolErrors) FROM @SchoolList
	PRINT @ErrorMessage;
	THROW 54007, @ErrorMessage, 1
END
GO

PRINT N'Validating calendar configuration against school year data currently present in [edfi].[SessionGradingPeriod]'
GO

--Raise an error if any SchoolYear entries in edfi.SessionGradingPeriod are inconsistent with the supplied calendar config based on BeginDate
DECLARE @SchoolList TABLE
(
  SchoolId INT
)
INSERT @SchoolList (SchoolId)
SELECT DISTINCT s.SchoolId
FROM [edfi].[SessionGradingPeriod] s
LEFT JOIN [migration_tempdata].[CalendarConfig] c
ON 
	s.SchoolId = c.SchoolId
	AND s.[BeginDate] >= c.[BeginDate]
	AND s.[BeginDate] <= c.[EndDate]
WHERE
	c.SchoolYear != s.SchoolYear
IF EXISTS
(
	SELECT * FROM @SchoolList
)

BEGIN
	DECLARE @MaxErrors INT = 10
	DECLARE @SchoolErrors NVARCHAR(MAX) 
	SELECT TOP (@MaxErrors) @SchoolErrors = COALESCE(@SchoolErrors + ', ', '') + CONVERT(NVARCHAR(10),SchoolId) FROM @SchoolList ORDER BY SchoolId
	DECLARE @ErrorMessage NVARCHAR(max)
	SELECT  @ErrorMessage = CONCAT(N'Calendar configuration file error - Found ', COUNT(*), ' SchoolYear entries [edfi].[SessionGradingPeriod] that not match the school year entered in the supplied calendar configuration based on the corresponding BeginDate.  The top ', @MaxErrors, ' affected schools will be listed:  ', @SchoolErrors) FROM @SchoolList
	PRINT @ErrorMessage;
	THROW 54008, @ErrorMessage, 1
END
GO


/*
Ensure that there are no duplicate GradingPeriod entries under the new primary key.
Old 2.0 Primary Key: GradingPeriodDescriptorId, SchoolId, BeginDate
New version 3 Primary Key: GradingPeriodDescriptorId, SchoolId, PeriodSequence, SchoolYear (BeginDate is removed)
*/
PRINT N'Checking [edfi].[GradingPeriod] version 3 key compatibility'
GO

IF EXISTS
(
SELECT g.[SchoolId], g.[GradingPeriodDescriptorId], c.[SchoolYear]
FROM [edfi].[GradingPeriod] g
INNER JOIN [migration_tempdata].[CalendarConfig] c
ON g.[SchoolId] = c.[SchoolId]
AND g.[BeginDate] >= c.[BeginDate]
AND g.[BeginDate] <= c.[EndDate]
WHERE g.[PeriodSequence] IS NOT NULL
GROUP BY g.[SchoolId], g.[GradingPeriodDescriptorId], c.[SchoolYear], g.[PeriodSequence]
HAVING COUNT(g.[PeriodSequence]) > 1
)
BEGIN
	DECLARE @ErrorMessage NVARCHAR(max) = N'Action Required - [edfi].[GradingPeriod]: Please ensure that there are no duplicate [PeriodSequence] values for the same school during the grading period/school year.  This uniqueness is required for the upgraded primary key.'
	PRINT @ErrorMessage;
	THROW 53006, @ErrorMessage, 1
END
ELSE
	PRINT N'All [PeriodSequence] values in [edfi].[GradingPeriod] OK'
GO

/*
Ensure that there are no duplicate GradingPeriod entries under the new primary key.
Old 2.0 Primary Key: GradingPeriodDescriptorId, SchoolId, BeginDate
New version 3 Primary Key: GradingPeriodDescriptorId, SchoolId, PeriodSequence, SchoolYear (BeginDate is removed)
*/

IF EXISTS
(
SELECT g.[SchoolId], g.[GradingPeriodDescriptorId], c.[SchoolYear]
FROM [edfi].[GradingPeriod] g
INNER JOIN [migration_tempdata].[CalendarConfig] c
ON g.[SchoolId] = c.[SchoolId]
AND g.[BeginDate] >= c.[BeginDate]
AND g.[BeginDate] <= c.[EndDate]
GROUP BY g.[SchoolId], g.[GradingPeriodDescriptorId], c.[SchoolYear], ISNULL(g.[PeriodSequence], 1)
HAVING COUNT(ISNULL(g.[PeriodSequence], 1)) > 1
)
BEGIN
	IF EXISTS
	(
	SELECT *
	FROM [edfi].[GradingPeriod]
	WHERE [PeriodSequence] IS NULL
	)
	BEGIN
		DECLARE @NullPeriodSequenceErrorMessage NVARCHAR(max) = N'Action Required - [edfi].[GradingPeriod]: Please ensure that all records have a non-null value for [PeriodSequence].  This number is the sequential order of this period relative to other periods.  Note:  you should ensure that there are no duplicate PeriodSequence values for the same school during the same grading period.  This required value will become part of the new unique primary key'
		PRINT @NullPeriodSequenceErrorMessage;
		THROW 53005, @NullPeriodSequenceErrorMessage, 1
	END
	ELSE
	BEGIN
		DECLARE @GradingPeriodKeyErrorMessage NVARCHAR(max) = N'Action Required - [edfi].[GradingPeriod]: Please ensure that there are no duplicate [PeriodSequence] values for the same school during the grading period/school year.  This uniqueness is required for the upgraded primary key.'
		PRINT @GradingPeriodKeyErrorMessage;
		THROW 53006, @GradingPeriodKeyErrorMessage, 1
	END
END
ELSE
	PRINT N'All [PeriodSequence] values in [edfi].[GradingPeriod] OK'
GO


PRINT N'Checking descriptor compatibility'
GO

--This exact check is performed once again during the destination validation step
DECLARE @descriptorNamespaceChanged BIT;
EXEC @descriptorNamespaceChanged = [migration_tempdata].[descriptor_namespace_changed] '$DescriptorNamespacePrefix$'
IF (@descriptorNamespaceChanged = 1)
BEGIN
	DECLARE @ErrorMessage NVARCHAR(max) = N'Action Required - The supplied descriptor namespace looks to have changed since the update was initiated.  This value must remain the same throughout the entire update process because it is used to update multiple tables.  To change the supplied namespace, please restore the ODS to the initial state and start the upgrade over.'
	PRINT @ErrorMessage;
	THROW 55000, @ErrorMessage, 1
END
GO

IF EXISTS
(
SELECT *
FROM [edfi].[Descriptor]
WHERE [CodeValue] LIKE '%#%'
)
BEGIN
	DECLARE @ErrorMessage NVARCHAR(max) = N'Action Required - [edfi].[Descriptor]: Please remove the "#" from the [CodeValue] of all records.  (Details: This character is no longer allowed by the API beginning in version 3 because it is used to construct namespaces of the format uri://[org indicator]/[name of descriptor]#[value]).'
	PRINT @ErrorMessage;
	THROW 55005, @ErrorMessage, 1
END
ELSE
	PRINT N'All [CodeValue] values in [edfi].[Descriptor] OK'
GO


DECLARE @defaultOrganizationNameFromDescriptorNamespacePrefix NVARCHAR(max)
SELECT @defaultOrganizationNameFromDescriptorNamespacePrefix = REPLACE('$DescriptorNamespacePrefix$','uri://','')

DECLARE @UnknownDescriptorNamespace TABLE ([Namespace] NVARCHAR(MAX))
INSERT @UnknownDescriptorNamespace
SELECT DISTINCT TOP (5) '* Unknown Descriptor Namespace: ' + [Namespace]
FROM [edfi].[Descriptor] a
WHERE [migration_tempdata].[is_valid_v3_namespace_format] ([Namespace]) = 0
AND [Namespace] NOT LIKE '%' + @defaultOrganizationNameFromDescriptorNamespacePrefix + '%'
AND [Namespace] NOT LIKE '%ed-fi.org%'

IF EXISTS
(
	SELECT * FROM @UnknownDescriptorNamespace
)
BEGIN
	DECLARE @InvalidDescriptorNamespaceList NVARCHAR(max)
	DECLARE @Newline CHAR(2) = CHAR(13) + CHAR(10)

	SELECT @InvalidDescriptorNamespaceList = COALESCE(@InvalidDescriptorNamespaceList + @Newline ,'') + [Namespace]
	FROM @UnknownDescriptorNamespace

	DECLARE @FinalErrorMessage NVARCHAR(max)
	SELECT @FinalErrorMessage = 
	CONCAT('Action Required - [edfi].[Descriptor]: One or more unknown [Namespace] values cannot be upgraded to version 3 format automatically.'
	,@Newline
	,'Up to 5 unknown namespaces will be listed:'
	, @Newline
	, @Newline
	, @InvalidDescriptorNamespaceList
	, @Newline
	,@Newline
	,'The migration utility can automatically upgrade the following types of namespaces for you:'
	,@Newline
	,@Newline
	,'* Namespaces containing "', @defaultOrganizationNameFromDescriptorNamespacePrefix, '" (from the DescriptorNamespacePrefix provided to the migration tool)'
	,@Newline
	,'* Namespaces containing "ed-fi.org"'
		,@Newline
	,'* Namespaces in the "uri://[any-valid-organization-name]/DescriptorName" format, which is already valid for version 3.  (Valid organization names can contain alphanumeric and $-_.+!*''(),).'
	,@Newline
	,@Newline
	,'ACTION REQUIRED: '
	,@Newline
	,'Please update [Namespace] on [edfi].[Descriptor] before proceeding.  Ensure that all [Namespace] values fall under at least one of the above categories')
	;THROW 55003, @FinalErrorMessage, 1
END
GO