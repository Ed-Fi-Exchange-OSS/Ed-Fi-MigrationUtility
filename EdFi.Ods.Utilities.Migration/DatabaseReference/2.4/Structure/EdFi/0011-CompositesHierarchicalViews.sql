-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

IF EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[edfi].[AssessmentFamilyH]'))
	DROP VIEW edfi.AssessmentFamilyH;
GO

CREATE VIEW edfi.AssessmentFamilyH AS
WITH AssessmentFamilyH_CTE
AS (
  SELECT
        [AssessmentFamilyTitle],
        [AcademicSubjectDescriptorId],
        [AssessmentCategoryDescriptorId],
        [ParentAssessmentFamilyTitle],
        [AssessedGradeLevelDescriptorId],
        [LowestAssessedGradeLevelDescriptorId],
        [Version],
        [RevisionDate],
        [Nomenclature],
        [Namespace],
        [Id],
        [LastModifiedDate],
        [CreateDate]
  FROM edfi.AssessmentFamily
  WHERE ParentAssessmentFamilyTitle IS NULL
  UNION ALL
  SELECT
        [t1].[AssessmentFamilyTitle],
        [t1].[AcademicSubjectDescriptorId],
        [t1].[AssessmentCategoryDescriptorId],
        [t1].[ParentAssessmentFamilyTitle],
        [t1].[AssessedGradeLevelDescriptorId],
        [t1].[LowestAssessedGradeLevelDescriptorId],
        [t1].[Version],
        [t1].[RevisionDate],
        [t1].[Nomenclature],
        [t1].[Namespace],
        [t1].[Id],
        [t1].[LastModifiedDate],
        [t1].[CreateDate]
  FROM edfi.AssessmentFamily t1
  INNER JOIN AssessmentFamilyH_CTE
      ON t1.ParentAssessmentFamilyTitle = AssessmentFamilyH_CTE.AssessmentFamilyTitle
    WHERE [t1].ParentAssessmentFamilyTitle IS NOT NULL)

SELECT * FROM AssessmentFamilyH_CTE
GO  
    
IF EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[edfi].[LearningObjectiveH]'))
	DROP VIEW edfi.LearningObjectiveH;
GO

CREATE VIEW edfi.LearningObjectiveH AS
WITH LearningObjectiveH_CTE
AS (
  SELECT
        [AcademicSubjectDescriptorId],
        [ObjectiveGradeLevelDescriptorId],
        [Objective],
        [ParentObjective],
        [ParentAcademicSubjectDescriptorId],
        [ParentObjectiveGradeLevelDescriptorId],
        [LearningObjectiveId],
        [Description],
        [Nomenclature],
        [SuccessCriteria],
        [Namespace],
        [Id],
        [LastModifiedDate],
        [CreateDate]
  FROM edfi.LearningObjective
  WHERE ParentObjective IS NULL
        AND ParentAcademicSubjectDescriptorId IS NULL
        AND ParentObjectiveGradeLevelDescriptorId IS NULL
  UNION ALL
  SELECT
        [t1].[AcademicSubjectDescriptorId],
        [t1].[ObjectiveGradeLevelDescriptorId],
        [t1].[Objective],
        [t1].[ParentObjective],
        [t1].[ParentAcademicSubjectDescriptorId],
        [t1].[ParentObjectiveGradeLevelDescriptorId],
        [t1].[LearningObjectiveId],
        [t1].[Description],
        [t1].[Nomenclature],
        [t1].[SuccessCriteria],
        [t1].[Namespace],
        [t1].[Id],
        [t1].[LastModifiedDate],
        [t1].[CreateDate]
  FROM edfi.LearningObjective t1
  INNER JOIN LearningObjectiveH_CTE
      ON t1.ParentObjective = LearningObjectiveH_CTE.Objective 
        AND t1.ParentAcademicSubjectDescriptorId = LearningObjectiveH_CTE.AcademicSubjectDescriptorId 
        AND t1.ParentObjectiveGradeLevelDescriptorId = LearningObjectiveH_CTE.ObjectiveGradeLevelDescriptorId
    WHERE [t1].ParentObjective IS NOT NULL
        AND [t1].ParentAcademicSubjectDescriptorId IS NOT NULL
        AND [t1].ParentObjectiveGradeLevelDescriptorId IS NOT NULL)

SELECT * FROM LearningObjectiveH_CTE
GO  
    
IF EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[edfi].[LearningStandardH]'))
	DROP VIEW edfi.LearningStandardH;
GO

CREATE VIEW edfi.LearningStandardH AS
WITH LearningStandardH_CTE
AS (
  SELECT
        [LearningStandardId],
        [AcademicSubjectDescriptorId],
        [ParentLearningStandardId],
        [Description],
        [LearningStandardItemCode],
        [URI],
        [CourseTitle],
        [SuccessCriteria],
        [Id],
        [Namespace],
        [LastModifiedDate],
        [CreateDate]
  FROM edfi.LearningStandard
  WHERE ParentLearningStandardId IS NULL
  UNION ALL
  SELECT
        [t1].[LearningStandardId],
        [t1].[AcademicSubjectDescriptorId],
        [t1].[ParentLearningStandardId],
        [t1].[Description],
        [t1].[LearningStandardItemCode],
        [t1].[URI],
        [t1].[CourseTitle],
        [t1].[SuccessCriteria],
        [t1].[Id],
        [t1].[Namespace],
        [t1].[LastModifiedDate],
        [t1].[CreateDate]
  FROM edfi.LearningStandard t1
  INNER JOIN LearningStandardH_CTE
      ON t1.ParentLearningStandardId = LearningStandardH_CTE.LearningStandardId
    WHERE [t1].ParentLearningStandardId IS NOT NULL)

SELECT * FROM LearningStandardH_CTE
GO  
    
IF EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[edfi].[LocalEducationAgencyH]'))
	DROP VIEW edfi.LocalEducationAgencyH;
GO

CREATE VIEW edfi.LocalEducationAgencyH AS
WITH LocalEducationAgencyH_CTE
AS (
  SELECT
        [LocalEducationAgencyId],
        [CharterStatusTypeId],
        [EducationServiceCenterId],
        [ParentLocalEducationAgencyId],
        [LocalEducationAgencyCategoryTypeId],
        [StateEducationAgencyId]
  FROM edfi.LocalEducationAgency
  WHERE ParentLocalEducationAgencyId IS NULL
  UNION ALL
  SELECT
        [t1].[LocalEducationAgencyId],
        [t1].[CharterStatusTypeId],
        [t1].[EducationServiceCenterId],
        [t1].[ParentLocalEducationAgencyId],
        [t1].[LocalEducationAgencyCategoryTypeId],
        [t1].[StateEducationAgencyId]
  FROM edfi.LocalEducationAgency t1
  INNER JOIN LocalEducationAgencyH_CTE
      ON t1.ParentLocalEducationAgencyId = LocalEducationAgencyH_CTE.LocalEducationAgencyId
    WHERE [t1].ParentLocalEducationAgencyId IS NOT NULL)

SELECT * FROM LocalEducationAgencyH_CTE
GO  
    
IF EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[edfi].[ObjectiveAssessmentH]'))
	DROP VIEW edfi.ObjectiveAssessmentH;
GO

CREATE VIEW edfi.ObjectiveAssessmentH AS
WITH ObjectiveAssessmentH_CTE
AS (
  SELECT
        [AssessmentTitle],
        [AssessedGradeLevelDescriptorId],
        [AcademicSubjectDescriptorId],
        [Version],
        [IdentificationCode],
        [ParentIdentificationCode],
        [MaxRawScore],
        [PercentOfAssessment],
        [Nomenclature],
        [Description],
        [Id],
        [LastModifiedDate],
        [CreateDate]
  FROM edfi.ObjectiveAssessment
  WHERE ParentIdentificationCode IS NULL
  UNION ALL
  SELECT
        [t1].[AssessmentTitle],
        [t1].[AssessedGradeLevelDescriptorId],
        [t1].[AcademicSubjectDescriptorId],
        [t1].[Version],
        [t1].[IdentificationCode],
        [t1].[ParentIdentificationCode],
        [t1].[MaxRawScore],
        [t1].[PercentOfAssessment],
        [t1].[Nomenclature],
        [t1].[Description],
        [t1].[Id],
        [t1].[LastModifiedDate],
        [t1].[CreateDate]
  FROM edfi.ObjectiveAssessment t1
  INNER JOIN ObjectiveAssessmentH_CTE
      ON t1.AssessmentTitle = ObjectiveAssessmentH_CTE.AssessmentTitle 
        AND t1.AcademicSubjectDescriptorId = ObjectiveAssessmentH_CTE.AcademicSubjectDescriptorId 
        AND t1.AssessedGradeLevelDescriptorId = ObjectiveAssessmentH_CTE.AssessedGradeLevelDescriptorId 
        AND t1.Version = ObjectiveAssessmentH_CTE.Version 
        AND t1.ParentIdentificationCode = ObjectiveAssessmentH_CTE.IdentificationCode
    WHERE [t1].AssessmentTitle IS NOT NULL
        AND [t1].AcademicSubjectDescriptorId IS NOT NULL
        AND [t1].AssessedGradeLevelDescriptorId IS NOT NULL
        AND [t1].Version IS NOT NULL
        AND [t1].ParentIdentificationCode IS NOT NULL)

SELECT * FROM ObjectiveAssessmentH_CTE
GO  

IF EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[edfi].[StudentAssessmentStudentObjectiveAssessmentH]'))
    DROP VIEW edfi.StudentAssessmentStudentObjectiveAssessmentH;
GO

CREATE VIEW [edfi].[StudentAssessmentStudentObjectiveAssessmentH] AS
    WITH RecursivelyOrderedData 
    AS (
        SELECT  *
        FROM    edfi.ObjectiveAssessment
        WHERE   ParentIdentificationCode IS NULL
        UNION ALL
        SELECT  childSelector.*
        FROM    edfi.ObjectiveAssessment AS childSelector
                INNER JOIN RecursivelyOrderedData
                    ON  childSelector.IdentificationCode = RecursivelyOrderedData.ParentIdentificationCode
    )

    SELECT 
        t.[StudentUSI],
        t.[AssessmentTitle],
        t.[AssessedGradeLevelDescriptorId],
        t.[AcademicSubjectDescriptorId],
        t.[Version],
        t.[IdentificationCode],
        t.[AdministrationDate],
        rt.[ParentIdentificationCode],
        rt.[MaxRawScore],
        rt.[PercentOfAssessment],
        rt.[Nomenclature],
        rt.[Description],
        t.[CreateDate]
    FROM edfi.StudentAssessmentStudentObjectiveAssessment t
    INNER JOIN RecursivelyOrderedData AS rt
        ON t.AssessmentTitle = rt.AssessmentTitle
            AND t.AssessedGradeLevelDescriptorId = rt.AssessedGradeLevelDescriptorId
            AND t.AcademicSubjectDescriptorId = rt.AcademicSubjectDescriptorId
            AND t.Version = rt.Version
            AND t.IdentificationCode = rt.IdentificationCode
GO
