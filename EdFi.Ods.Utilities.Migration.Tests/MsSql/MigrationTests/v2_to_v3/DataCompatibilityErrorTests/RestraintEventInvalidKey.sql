-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

SET IDENTITY_INSERT [edfi].[SexType] ON 
INSERT [edfi].[SexType] ([SexTypeId], [CodeValue], [Description], [ShortDescription], [Id], [LastModifiedDate], [CreateDate]) VALUES (1, N'Test-CodeValue', N'Test-Description', N'Test-ShortDescription', N'00000000-0000-0000-0000-000000000000', CAST(N'2000-01-01T00:00:00.000' AS DateTime), CAST(N'2000-01-01T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [edfi].[SexType] OFF

SET IDENTITY_INSERT [edfi].[Student] ON 
INSERT [edfi].[Student] ([StudentUSI], [PersonalTitlePrefix], [FirstName], [MiddleName], [LastSurname], [GenerationCodeSuffix], [MaidenName], [SexTypeId], [BirthDate], [BirthCity], [BirthStateAbbreviationTypeId], [DateEnteredUS], [MultipleBirthStatus], [ProfileThumbnail], [HispanicLatinoEthnicity], [OldEthnicityTypeId], [EconomicDisadvantaged], [SchoolFoodServicesEligibilityDescriptorId], [LimitedEnglishProficiencyDescriptorId], [DisplacementStatus], [LoginId], [BirthInternationalProvince], [CitizenshipStatusTypeId], [StudentUniqueId], [Id], [LastModifiedDate], [CreateDate], [BirthCountryDescriptorId]) VALUES (1, NULL, N'Test-FirstName', NULL, N'Test-LastSurname', NULL, NULL, 1, CAST(N'2000-01-01' AS Date), NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Test-StudentUniqueId', N'00000000-0000-0000-0000-000000000000', CAST(N'2000-01-01T00:00:00.000' AS DateTime), CAST(N'2000-01-01T00:00:00.000' AS DateTime), NULL)
SET IDENTITY_INSERT [edfi].[Student] OFF

INSERT [edfi].[EducationOrganization] ([EducationOrganizationId], [StateOrganizationId], [NameOfInstitution], [ShortNameOfInstitution], [WebSite], [OperationalStatusTypeId], [Id], [LastModifiedDate], [CreateDate]) VALUES (1, N'Test-StateOrganizationId', N'Test-NameOfInstitution', NULL, NULL, NULL, N'00000000-0000-0000-0000-000000000000', CAST(N'2000-01-01T00:00:00.000' AS DateTime), CAST(N'2000-01-01T00:00:00.000' AS DateTime))

INSERT [edfi].[School] ([SchoolId], [LocalEducationAgencyId], [SchoolTypeId], [CharterStatusTypeId], [TitleIPartASchoolDesignationTypeId], [MagnetSpecialProgramEmphasisSchoolTypeId], [AdministrativeFundingControlDescriptorId], [InternetAccessTypeId], [CharterApprovalAgencyTypeId], [CharterApprovalSchoolYear]) VALUES (1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)

INSERT [edfi].[RestraintEvent] ([StudentUSI], [SchoolId], [RestraintEventIdentifier], [EventDate], [EducationalEnvironmentTypeId], [Id], [LastModifiedDate], [CreateDate])
VALUES
	(1, 1, N'Duplicate', CAST(N'2000-01-01' AS Date), NULL, N'00000000-0000-0000-0000-000000000000', CAST(N'2000-01-01T00:00:00.000' AS DateTime), CAST(N'2000-01-01T00:00:00.000' AS DateTime)),
	(1, 1, N'Duplicate', CAST(N'2000-01-02' AS Date), NULL, N'00000000-0000-0000-0000-000000000001', CAST(N'2000-01-01T00:00:00.000' AS DateTime), CAST(N'2000-01-01T00:00:00.000' AS DateTime))
