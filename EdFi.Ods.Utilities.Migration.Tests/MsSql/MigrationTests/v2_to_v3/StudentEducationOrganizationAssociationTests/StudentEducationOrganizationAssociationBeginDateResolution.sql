-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

SET IDENTITY_INSERT [edfi].[Student] ON 
INSERT [edfi].[Student] ([StudentUSI], [PersonalTitlePrefix], [FirstName], [MiddleName], [LastSurname], [GenerationCodeSuffix], [MaidenName], [SexTypeId], [BirthDate], [BirthCity], [BirthStateAbbreviationTypeId], [DateEnteredUS], [MultipleBirthStatus], [ProfileThumbnail], [HispanicLatinoEthnicity], [OldEthnicityTypeId], [EconomicDisadvantaged], [SchoolFoodServicesEligibilityDescriptorId], [LimitedEnglishProficiencyDescriptorId], [DisplacementStatus], [LoginId], [BirthInternationalProvince], [CitizenshipStatusTypeId], [StudentUniqueId], [Id], [LastModifiedDate], [CreateDate], [BirthCountryDescriptorId]) VALUES (@studentWithEdOrgAssociationUSI, NULL, N'EducationOrganization', NULL, N'Association', NULL, NULL, 1, CAST(N'2000-01-01' AS Date), NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, @studentWithEdOrgAssociationUSI , NEWID(), GETDATE(), GETDATE(), NULL)
INSERT [edfi].[Student] ([StudentUSI], [PersonalTitlePrefix], [FirstName], [MiddleName], [LastSurname], [GenerationCodeSuffix], [MaidenName], [SexTypeId], [BirthDate], [BirthCity], [BirthStateAbbreviationTypeId], [DateEnteredUS], [MultipleBirthStatus], [ProfileThumbnail], [HispanicLatinoEthnicity], [OldEthnicityTypeId], [EconomicDisadvantaged], [SchoolFoodServicesEligibilityDescriptorId], [LimitedEnglishProficiencyDescriptorId], [DisplacementStatus], [LoginId], [BirthInternationalProvince], [CitizenshipStatusTypeId], [StudentUniqueId], [Id], [LastModifiedDate], [CreateDate], [BirthCountryDescriptorId]) VALUES (@studentWithSchoolAssociationUSI, NULL, N'School', NULL, N'Association', NULL, NULL, 1, CAST(N'2000-01-01' AS Date), NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, @studentWithSchoolAssociationUSI, NEWID(), GETDATE(), GETDATE(), NULL)
INSERT [edfi].[Student] ([StudentUSI], [PersonalTitlePrefix], [FirstName], [MiddleName], [LastSurname], [GenerationCodeSuffix], [MaidenName], [SexTypeId], [BirthDate], [BirthCity], [BirthStateAbbreviationTypeId], [DateEnteredUS], [MultipleBirthStatus], [ProfileThumbnail], [HispanicLatinoEthnicity], [OldEthnicityTypeId], [EconomicDisadvantaged], [SchoolFoodServicesEligibilityDescriptorId], [LimitedEnglishProficiencyDescriptorId], [DisplacementStatus], [LoginId], [BirthInternationalProvince], [CitizenshipStatusTypeId], [StudentUniqueId], [Id], [LastModifiedDate], [CreateDate], [BirthCountryDescriptorId]) VALUES (@studentWithDistrictAssociationUSI, NULL, N'District', NULL, N'Association', NULL, NULL, 1, CAST(N'2000-01-01' AS Date), NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, @studentWithDistrictAssociationUSI, NEWID(), GETDATE(), GETDATE(), NULL)
INSERT [edfi].[Student] ([StudentUSI], [PersonalTitlePrefix], [FirstName], [MiddleName], [LastSurname], [GenerationCodeSuffix], [MaidenName], [SexTypeId], [BirthDate], [BirthCity], [BirthStateAbbreviationTypeId], [DateEnteredUS], [MultipleBirthStatus], [ProfileThumbnail], [HispanicLatinoEthnicity], [OldEthnicityTypeId], [EconomicDisadvantaged], [SchoolFoodServicesEligibilityDescriptorId], [LimitedEnglishProficiencyDescriptorId], [DisplacementStatus], [LoginId], [BirthInternationalProvince], [CitizenshipStatusTypeId], [StudentUniqueId], [Id], [LastModifiedDate], [CreateDate], [BirthCountryDescriptorId]) VALUES (@studentWithSchoolAssociationButNoEdOrgAssociationUSI, NULL, N'School Only', NULL, N'No EdOrg', NULL, NULL, 1, CAST(N'2000-01-01' AS Date), NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, @studentWithSchoolAssociationButNoEdOrgAssociationUSI, NEWID(), GETDATE(), GETDATE(), NULL)
INSERT [edfi].[Student] ([StudentUSI], [PersonalTitlePrefix], [FirstName], [MiddleName], [LastSurname], [GenerationCodeSuffix], [MaidenName], [SexTypeId], [BirthDate], [BirthCity], [BirthStateAbbreviationTypeId], [DateEnteredUS], [MultipleBirthStatus], [ProfileThumbnail], [HispanicLatinoEthnicity], [OldEthnicityTypeId], [EconomicDisadvantaged], [SchoolFoodServicesEligibilityDescriptorId], [LimitedEnglishProficiencyDescriptorId], [DisplacementStatus], [LoginId], [BirthInternationalProvince], [CitizenshipStatusTypeId], [StudentUniqueId], [Id], [LastModifiedDate], [CreateDate], [BirthCountryDescriptorId]) VALUES (@studentWithDistrictAssociationButNoEdOrgAssociationUSI, NULL, N'District And School', NULL, N'No EdOrg', NULL, NULL, 1, CAST(N'2000-01-01' AS Date), NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, @studentWithDistrictAssociationButNoEdOrgAssociationUSI, NEWID(), GETDATE(), GETDATE(), NULL)
INSERT [edfi].[Student] ([StudentUSI], [PersonalTitlePrefix], [FirstName], [MiddleName], [LastSurname], [GenerationCodeSuffix], [MaidenName], [SexTypeId], [BirthDate], [BirthCity], [BirthStateAbbreviationTypeId], [DateEnteredUS], [MultipleBirthStatus], [ProfileThumbnail], [HispanicLatinoEthnicity], [OldEthnicityTypeId], [EconomicDisadvantaged], [SchoolFoodServicesEligibilityDescriptorId], [LimitedEnglishProficiencyDescriptorId], [DisplacementStatus], [LoginId], [BirthInternationalProvince], [CitizenshipStatusTypeId], [StudentUniqueId], [Id], [LastModifiedDate], [CreateDate], [BirthCountryDescriptorId]) VALUES (@studentWithDualEnrollmentsUSI, NULL, N'Dual', NULL, N'Dual Enrollment', NULL, NULL, 1, CAST(N'2000-01-01' AS Date), NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, @studentWithDualEnrollmentsUSI, NEWID(), GETDATE(), GETDATE(), NULL)
SET IDENTITY_INSERT [edfi].[Student] OFF
SET IDENTITY_INSERT [edfi].[Descriptor] ON 
INSERT [edfi].[Descriptor] ([DescriptorId], [Namespace], [CodeValue], [ShortDescription], [Description], [PriorDescriptorId], [EffectiveBeginDate], [EffectiveEndDate], [Id], [LastModifiedDate], [CreateDate]) VALUES (15, N'uri://ed-fi.org/NotApplicable', N'CountryDescriptor', N'CountryDescriptor', N'CountryDescriptor', NULL, NULL, NULL, N'00000000-0000-0000-0000-000000000015', CAST(N'2000-01-01T00:00:00.000' AS DateTime), CAST(N'2000-01-01T00:00:00.000' AS DateTime))
INSERT [edfi].[Descriptor] ([DescriptorId], [Namespace], [CodeValue], [ShortDescription], [Description], [PriorDescriptorId], [EffectiveBeginDate], [EffectiveEndDate], [Id], [LastModifiedDate], [CreateDate]) VALUES (19, N'uri://ed-fi.org/NotApplicable', N'DisabilityDescriptor', N'DisabilityDescriptor', N'DisabilityDescriptor', NULL, NULL, NULL, N'00000000-0000-0000-0000-000000000019', CAST(N'2000-01-01T00:00:00.000' AS DateTime), CAST(N'2000-01-01T00:00:00.000' AS DateTime))
INSERT [edfi].[Descriptor] ([DescriptorId], [Namespace], [CodeValue], [ShortDescription], [Description], [PriorDescriptorId], [EffectiveBeginDate], [EffectiveEndDate], [Id], [LastModifiedDate], [CreateDate]) VALUES (25, N'uri://ed-fi.org/NotApplicable', N'GradeLevelDescriptor', N'GradeLevelDescriptor', N'GradeLevelDescriptor', NULL, NULL, NULL, NEWID(), GETDATE(), GETDATE())
INSERT [edfi].[Descriptor] ([DescriptorId], [Namespace], [CodeValue], [ShortDescription], [Description], [PriorDescriptorId], [EffectiveBeginDate], [EffectiveEndDate], [Id], [LastModifiedDate], [CreateDate]) VALUES (28, N'uri://ed-fi.org/NotApplicable', N'LanguageDescriptor', N'LanguageDescriptor', N'LanguageDescriptor', NULL, NULL, NULL, N'00000000-0000-0000-0000-000000000028', CAST(N'2000-01-01T00:00:00.000' AS DateTime), CAST(N'2000-01-01T00:00:00.000' AS DateTime))
INSERT [edfi].[Descriptor] ([DescriptorId], [Namespace], [CodeValue], [ShortDescription], [Description], [PriorDescriptorId], [EffectiveBeginDate], [EffectiveEndDate], [Id], [LastModifiedDate], [CreateDate]) VALUES (34, N'uri://ed-fi.org/NotApplicable', N'ProgramCharacteristicDescriptor1', N'ProgramCharacteristicDescriptor1', N'ProgramCharacteristicDescriptor1', NULL, NULL, NULL, N'00000000-0000-0000-0000-000000000034', CAST(N'2000-01-01T00:00:00.000' AS DateTime), CAST(N'2000-01-01T00:00:00.000' AS DateTime))
INSERT [edfi].[Descriptor] ([DescriptorId], [Namespace], [CodeValue], [ShortDescription], [Description], [PriorDescriptorId], [EffectiveBeginDate], [EffectiveEndDate], [Id], [LastModifiedDate], [CreateDate]) VALUES (35, N'uri://ed-fi.org/NotApplicable', N'ProgramCharacteristicDescriptor2', N'ProgramCharacteristicDescriptor2', N'ProgramCharacteristicDescriptor2', NULL, NULL, NULL, N'00000000-0000-0000-0000-000000000035', CAST(N'2000-01-01T00:00:00.000' AS DateTime), CAST(N'2000-01-01T00:00:00.000' AS DateTime))
INSERT [edfi].[Descriptor] ([DescriptorId], [Namespace], [CodeValue], [ShortDescription], [Description], [PriorDescriptorId], [EffectiveBeginDate], [EffectiveEndDate], [Id], [LastModifiedDate], [CreateDate]) VALUES (38, N'uri://ed-fi.org/NotApplicable', N'ResponsibilityDescriptor', N'ResponsibilityDescriptor', N'ResponsibilityDescriptor', NULL, NULL, NULL, NEWID(), GETDATE(), GETDATE())
INSERT [edfi].[Descriptor] ([DescriptorId], [Namespace], [CodeValue], [ShortDescription], [Description], [PriorDescriptorId], [EffectiveBeginDate], [EffectiveEndDate], [Id], [LastModifiedDate], [CreateDate]) VALUES (46, N'uri://ed-fi.org/NotApplicable', N'StudentCharacteristicDescriptor', N'StudentCharacteristicDescriptor', N'StudentCharacteristicDescriptor', NULL, NULL, NULL, N'00000000-0000-0000-0000-000000000046', CAST(N'2000-01-01T00:00:00.000' AS DateTime), CAST(N'2000-01-01T00:00:00.000' AS DateTime))
INSERT [edfi].[Descriptor] ([DescriptorId], [Namespace], [CodeValue], [ShortDescription], [Description], [PriorDescriptorId], [EffectiveBeginDate], [EffectiveEndDate], [Id], [LastModifiedDate], [CreateDate]) VALUES (47, N'uri://ed-fi.org/NotApplicable', N'StudentIdentificationSystemDescriptor', N'StudentIdentificationSystemDescriptor', N'StudentIdentificationSystemDescriptor', NULL, NULL, NULL, N'00000000-0000-0000-0000-000000000047', CAST(N'2000-01-01T00:00:00.000' AS DateTime), CAST(N'2000-01-01T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [edfi].[Descriptor] OFF

INSERT [edfi].[CountryDescriptor] ([CountryDescriptorId]) VALUES (15)
INSERT [edfi].[DisabilityDescriptor] ([DisabilityDescriptorId], [DisabilityCategoryTypeId]) VALUES (19, 1)
INSERT [edfi].[GradeLevelDescriptor] ([GradeLevelDescriptorId], [GradeLevelTypeId]) VALUES (25, 1)
INSERT [edfi].[LanguageDescriptor] ([LanguageDescriptorId], [LanguageTypeId]) VALUES (28, 1)
INSERT [edfi].[ProgramCharacteristicDescriptor] ([ProgramCharacteristicDescriptorId], [ProgramCharacteristicTypeId]) VALUES (34, NULL)
INSERT [edfi].[ProgramCharacteristicDescriptor] ([ProgramCharacteristicDescriptorId], [ProgramCharacteristicTypeId]) VALUES (35, NULL)
INSERT [edfi].[ResponsibilityDescriptor] ([ResponsibilityDescriptorId], [ResponsibilityTypeId]) VALUES (38, NULL)
INSERT [edfi].[StudentCharacteristicDescriptor] ([StudentCharacteristicDescriptorId], [StudentCharacteristicTypeId]) VALUES (46, NULL)
INSERT [edfi].[StudentIdentificationSystemDescriptor] ([StudentIdentificationSystemDescriptorId], [StudentIdentificationSystemTypeId]) VALUES (47, 1)

INSERT [edfi].[StudentProgramParticipation] ([ProgramTypeId], [StudentUSI])
SELECT 1, [StudentUSI]
FROM [edfi].[Student]

INSERT [edfi].[StudentProgramParticipationProgramCharacteristic] ([ProgramTypeId], [StudentUSI], [ProgramCharacteristicDescriptorId])
SELECT 1, [StudentUSI], 34
FROM [edfi].[Student]
INSERT [edfi].[StudentProgramParticipationProgramCharacteristic] ([ProgramTypeId], [StudentUSI], [ProgramCharacteristicDescriptorId])
SELECT 1, [StudentUSI], 35
FROM [edfi].[Student]

INSERT [edfi].[StudentLearningStyle] ([StudentUSI], [VisualLearning], [AuditoryLearning], [TactileLearning], [CreateDate])
SELECT [StudentUSI], @visualLearningIndicator, @auditoryLearningIndicator, @tactileLearningIndicator, GETDATE()
FROM [edfi].[Student]

INSERT [edfi].[StudentIndicator] ([StudentUSI], [IndicatorName], [Indicator], [CreateDate])
SELECT [StudentUSI], @sampleIndicatorName,@sampleIndicatorName, GETDATE()
FROM [edfi].[Student]

INSERT [edfi].[StudentCharacteristic] ([StudentUSI], [StudentCharacteristicDescriptorId], [CreateDate])
SELECT [StudentUSI], 46, GETDATE()
FROM [edfi].[Student]

INSERT edfi.[StudentElectronicMail]
([StudentUSI], [ElectronicMailTypeId], [ElectronicMailAddress], [PrimaryEmailAddressIndicator], [CreateDate])
SELECT [StudentUSI], 1, 'n/a', NULL, GETDATE()
FROM [edfi].[Student]

INSERT [edfi].[StudentInternationalAddress] ([StudentUSI], [AddressTypeId], [AddressLine1] ,[CountryDescriptorId])
SELECT [StudentUSI], 1, 'Address', 15
FROM [edfi].[Student]

INSERT [edfi].[StudentLanguage] ([StudentUSI], [LanguageDescriptorId])
SELECT [StudentUSI], 28
FROM [edfi].[Student]

INSERT [edfi].[StudentLanguageUse] ([StudentUSI], [LanguageDescriptorId], [LanguageUseTypeId])
SELECT [StudentUSI], 28, 1
FROM [edfi].[Student]

INSERT edfi.[StudentRace] ([StudentUSI], [RaceTypeId])
SELECT [StudentUSI], 1
FROM [edfi].[Student]

INSERT [edfi].[StudentIdentificationCode] ([StudentUSI], [AssigningOrganizationIdentificationCode], [StudentIdentificationSystemDescriptorId], [IdentificationCode])
SELECT [StudentUSI], 'Test-AssigningOrganizationIdentificationCode', 47, 'Test-IdentificationCode'
FROM [edfi].[Student]

INSERT [edfi].[StudentDisability] ([StudentUSI],[DisabilityDescriptorId])
SELECT [StudentUSI], 19
FROM [edfi].[Student]

INSERT [edfi].[StudentTelephone]
([StudentUSI],[TelephoneNumberTypeId] ,[TelephoneNumber])
SELECT [StudentUSI], 1, 'n/a'
FROM [edfi].[Student]

INSERT [edfi].[StudentAddress]
([StudentUSI],[AddressTypeId],[StreetNumberName],[City],[StateAbbreviationTypeId],[PostalCode])
SELECT [StudentUSI], 1, 'n/a', 'n/a', 1, 'n/a'
FROM [edfi].[Student]

INSERT [edfi].[EducationOrganization] ([EducationOrganizationId], [StateOrganizationId], [NameOfInstitution], [ShortNameOfInstitution], [WebSite], [OperationalStatusTypeId], [Id], [LastModifiedDate], [CreateDate]) VALUES (@edOrgId, N'Test-StateOrganizationId1', N'Test-EdOrg', NULL, NULL, NULL, NEWID(), GETDATE(), GETDATE())
INSERT [edfi].[EducationOrganization] ([EducationOrganizationId], [StateOrganizationId], [NameOfInstitution], [ShortNameOfInstitution], [WebSite], [OperationalStatusTypeId], [Id], [LastModifiedDate], [CreateDate]) VALUES (@schoolWithNoDistrictAssociationId, N'Test-StateOrganizationId2', N'Test-School-NoDistrict', NULL, NULL, NULL, NEWID(), GETDATE(), GETDATE())
INSERT [edfi].[EducationOrganization] ([EducationOrganizationId], [StateOrganizationId], [NameOfInstitution], [ShortNameOfInstitution], [WebSite], [OperationalStatusTypeId], [Id], [LastModifiedDate], [CreateDate]) VALUES (@districtID1, N'Test-StateOrganizationId3', N'Test-District1', NULL, NULL, NULL, NEWID(), GETDATE(), GETDATE())
INSERT [edfi].[EducationOrganization] ([EducationOrganizationId], [StateOrganizationId], [NameOfInstitution], [ShortNameOfInstitution], [WebSite], [OperationalStatusTypeId], [Id], [LastModifiedDate], [CreateDate]) VALUES (@cohortAssociationDistrict, N'Test-StateOrganizationId32', N'Test-District2', NULL, NULL, NULL, NEWID(), GETDATE(), GETDATE())
INSERT [edfi].[EducationOrganization] ([EducationOrganizationId], [StateOrganizationId], [NameOfInstitution], [ShortNameOfInstitution], [WebSite], [OperationalStatusTypeId], [Id], [LastModifiedDate], [CreateDate]) VALUES (@schoolWithDistrictAssociationId, N'Test-StateOrganizationId3', N'Test-School-WithDistrict', NULL, NULL, NULL, NEWID(), GETDATE(), GETDATE())
INSERT [edfi].[EducationOrganization] ([EducationOrganizationId], [StateOrganizationId], [NameOfInstitution], [ShortNameOfInstitution], [WebSite], [OperationalStatusTypeId], [Id], [LastModifiedDate], [CreateDate]) VALUES (@studentWithDualEnrollmentsSchool1, N'Test-StateOrganizationId3', N'Test-Dual1', NULL, NULL, NULL, NEWID(), GETDATE(), GETDATE())
INSERT [edfi].[EducationOrganization] ([EducationOrganizationId], [StateOrganizationId], [NameOfInstitution], [ShortNameOfInstitution], [WebSite], [OperationalStatusTypeId], [Id], [LastModifiedDate], [CreateDate]) VALUES (@studentWithDualEnrollmentsSchool2, N'Test-StateOrganizationId32', N'Test-Dual2', NULL, NULL, NULL, NEWID(), GETDATE(), GETDATE())

INSERT [edfi].[LocalEducationAgency] ([LocalEducationAgencyId], [ParentLocalEducationAgencyId], [LocalEducationAgencyCategoryTypeId], [CharterStatusTypeId], [EducationServiceCenterId], [StateEducationAgencyId]) VALUES (@districtID1, NULL, 1, NULL, NULL, NULL)
INSERT [edfi].[LocalEducationAgency] ([LocalEducationAgencyId], [ParentLocalEducationAgencyId], [LocalEducationAgencyCategoryTypeId], [CharterStatusTypeId], [EducationServiceCenterId], [StateEducationAgencyId]) VALUES (@cohortAssociationDistrict, NULL, 1, NULL, NULL, NULL)

INSERT [edfi].[School] ([SchoolId], [LocalEducationAgencyId], [SchoolTypeId], [CharterStatusTypeId], [TitleIPartASchoolDesignationTypeId], [MagnetSpecialProgramEmphasisSchoolTypeId], [AdministrativeFundingControlDescriptorId], [InternetAccessTypeId], [CharterApprovalAgencyTypeId], [CharterApprovalSchoolYear]) VALUES (@schoolWithNoDistrictAssociationId, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [edfi].[School] ([SchoolId], [LocalEducationAgencyId], [SchoolTypeId], [CharterStatusTypeId], [TitleIPartASchoolDesignationTypeId], [MagnetSpecialProgramEmphasisSchoolTypeId], [AdministrativeFundingControlDescriptorId], [InternetAccessTypeId], [CharterApprovalAgencyTypeId], [CharterApprovalSchoolYear]) VALUES (@schoolWithDistrictAssociationId, @districtID1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [edfi].[School] ([SchoolId], [LocalEducationAgencyId], [SchoolTypeId], [CharterStatusTypeId], [TitleIPartASchoolDesignationTypeId], [MagnetSpecialProgramEmphasisSchoolTypeId], [AdministrativeFundingControlDescriptorId], [InternetAccessTypeId], [CharterApprovalAgencyTypeId], [CharterApprovalSchoolYear]) VALUES (@studentWithDualEnrollmentsSchool1, @districtID1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [edfi].[School] ([SchoolId], [LocalEducationAgencyId], [SchoolTypeId], [CharterStatusTypeId], [TitleIPartASchoolDesignationTypeId], [MagnetSpecialProgramEmphasisSchoolTypeId], [AdministrativeFundingControlDescriptorId], [InternetAccessTypeId], [CharterApprovalAgencyTypeId], [CharterApprovalSchoolYear]) VALUES (@studentWithDualEnrollmentsSchool2, @cohortAssociationDistrict, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)

INSERT [edfi].[StudentSchoolAssociation] ([StudentUSI], [SchoolId], [SchoolYear], [EntryDate], [EntryGradeLevelDescriptorId], [EntryGradeLevelReasonTypeId], [EntryTypeDescriptorId], [RepeatGradeIndicator], [SchoolChoiceTransfer], [ExitWithdrawDate], [ExitWithdrawTypeDescriptorId], [ResidencyStatusDescriptorId], [PrimarySchool], [EmployedWhileEnrolled], [ClassOfSchoolYear], [EducationOrganizationId], [GraduationPlanTypeDescriptorId], [GraduationSchoolYear], [Id], [LastModifiedDate], [CreateDate]) VALUES (@studentWithSchoolAssociationUSI, @schoolWithNoDistrictAssociationId, NULL, CAST(@studentWithSchoolAssociationEntryDate AS Date), 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NEWID(), GETDATE(), GETDATE())
INSERT [edfi].[StudentSchoolAssociation] ([StudentUSI], [SchoolId], [SchoolYear], [EntryDate], [EntryGradeLevelDescriptorId], [EntryGradeLevelReasonTypeId], [EntryTypeDescriptorId], [RepeatGradeIndicator], [SchoolChoiceTransfer], [ExitWithdrawDate], [ExitWithdrawTypeDescriptorId], [ResidencyStatusDescriptorId], [PrimarySchool], [EmployedWhileEnrolled], [ClassOfSchoolYear], [EducationOrganizationId], [GraduationPlanTypeDescriptorId], [GraduationSchoolYear], [Id], [LastModifiedDate], [CreateDate]) VALUES (@studentWithDistrictAssociationUSI, @schoolWithDistrictAssociationId, NULL, CAST(@studentWithDistrictAssociationEntryDate AS Date), 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NEWID(), GETDATE(), GETDATE())
INSERT [edfi].[StudentSchoolAssociation] ([StudentUSI], [SchoolId], [SchoolYear], [EntryDate], [EntryGradeLevelDescriptorId], [EntryGradeLevelReasonTypeId], [EntryTypeDescriptorId], [RepeatGradeIndicator], [SchoolChoiceTransfer], [ExitWithdrawDate], [ExitWithdrawTypeDescriptorId], [ResidencyStatusDescriptorId], [PrimarySchool], [EmployedWhileEnrolled], [ClassOfSchoolYear], [EducationOrganizationId], [GraduationPlanTypeDescriptorId], [GraduationSchoolYear], [Id], [LastModifiedDate], [CreateDate]) VALUES (@studentWithSchoolAssociationButNoEdOrgAssociationUSI, @schoolWithNoDistrictAssociationId, NULL, GETDATE(), 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NEWID(), GETDATE(), GETDATE())
INSERT [edfi].[StudentSchoolAssociation] ([StudentUSI], [SchoolId], [SchoolYear], [EntryDate], [EntryGradeLevelDescriptorId], [EntryGradeLevelReasonTypeId], [EntryTypeDescriptorId], [RepeatGradeIndicator], [SchoolChoiceTransfer], [ExitWithdrawDate], [ExitWithdrawTypeDescriptorId], [ResidencyStatusDescriptorId], [PrimarySchool], [EmployedWhileEnrolled], [ClassOfSchoolYear], [EducationOrganizationId], [GraduationPlanTypeDescriptorId], [GraduationSchoolYear], [Id], [LastModifiedDate], [CreateDate]) VALUES (@studentWithDistrictAssociationButNoEdOrgAssociationUSI, @schoolWithDistrictAssociationId, NULL, GETDATE(), 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NEWID(), GETDATE(), GETDATE())
INSERT [edfi].[StudentSchoolAssociation] ([StudentUSI], [SchoolId], [SchoolYear], [EntryDate], [EntryGradeLevelDescriptorId], [EntryGradeLevelReasonTypeId], [EntryTypeDescriptorId], [RepeatGradeIndicator], [SchoolChoiceTransfer], [ExitWithdrawDate], [ExitWithdrawTypeDescriptorId], [ResidencyStatusDescriptorId], [PrimarySchool], [EmployedWhileEnrolled], [ClassOfSchoolYear], [EducationOrganizationId], [GraduationPlanTypeDescriptorId], [GraduationSchoolYear], [Id], [LastModifiedDate], [CreateDate]) VALUES (@studentWithDualEnrollmentsUSI, @studentWithDualEnrollmentsSchool1, NULL, CAST(@studentWithDualEnrollmentsEntryDateSchool1 AS Date), 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NEWID(), GETDATE(), GETDATE())
INSERT [edfi].[StudentSchoolAssociation] ([StudentUSI], [SchoolId], [SchoolYear], [EntryDate], [EntryGradeLevelDescriptorId], [EntryGradeLevelReasonTypeId], [EntryTypeDescriptorId], [RepeatGradeIndicator], [SchoolChoiceTransfer], [ExitWithdrawDate], [ExitWithdrawTypeDescriptorId], [ResidencyStatusDescriptorId], [PrimarySchool], [EmployedWhileEnrolled], [ClassOfSchoolYear], [EducationOrganizationId], [GraduationPlanTypeDescriptorId], [GraduationSchoolYear], [Id], [LastModifiedDate], [CreateDate]) VALUES (@studentWithDualEnrollmentsUSI, @studentWithDualEnrollmentsSchool2, NULL, CAST(@studentWithDualEnrollmentsEntryDateSchool2 AS Date), 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NEWID(), GETDATE(), GETDATE())

INSERT [edfi].[StudentEducationOrganizationAssociation] ([StudentUSI], [EducationOrganizationId], [ResponsibilityDescriptorId], [Id], [LastModifiedDate], [CreateDate]) VALUES (@studentWithEdOrgAssociationUSI, @edOrgId, 38, NEWID(), GETDATE(), GETDATE())
INSERT [edfi].[StudentEducationOrganizationAssociation] ([StudentUSI], [EducationOrganizationId], [ResponsibilityDescriptorId], [Id], [LastModifiedDate], [CreateDate]) VALUES (@studentWithSchoolAssociationUSI, @schoolWithNoDistrictAssociationId, 38, NEWID(), GETDATE(), GETDATE())
INSERT [edfi].[StudentEducationOrganizationAssociation] ([StudentUSI], [EducationOrganizationId], [ResponsibilityDescriptorId], [Id], [LastModifiedDate], [CreateDate]) VALUES (@studentWithDistrictAssociationUSI, @districtID1, 38, NEWID(), GETDATE(), GETDATE())
INSERT [edfi].[StudentEducationOrganizationAssociation] ([StudentUSI], [EducationOrganizationId], [ResponsibilityDescriptorId], [Id], [LastModifiedDate], [CreateDate]) VALUES (@studentWithDualEnrollmentsUSI, @studentWithDualEnrollmentsSchool1, 38, NEWID(), GETDATE(), GETDATE())
INSERT [edfi].[StudentEducationOrganizationAssociation] ([StudentUSI], [EducationOrganizationId], [ResponsibilityDescriptorId], [Id], [LastModifiedDate], [CreateDate]) VALUES (@studentWithDualEnrollmentsUSI, @cohortAssociationDistrict, 38, NEWID(), GETDATE(), GETDATE())

INSERT [edfi].[StudentCohortYear] ([StudentUSI], [CohortYearTypeId], [SchoolYear])
SELECT [StudentUSI], 1, 2000
FROM [edfi].[Student]

INSERT [edfi].[Cohort] ([CohortIdentifier], [CohortTypeId], [EducationOrganizationId])
VALUES ('n/a', 1, @cohortAssociationDistrict)

INSERT [edfi].[StudentCohortAssociation] ([StudentUSI], [EducationOrganizationId],[CohortIdentifier], [BeginDate])
VALUES (@studentWithDualEnrollmentsUSI, @cohortAssociationDistrict, 'n/a', GETDATE())
