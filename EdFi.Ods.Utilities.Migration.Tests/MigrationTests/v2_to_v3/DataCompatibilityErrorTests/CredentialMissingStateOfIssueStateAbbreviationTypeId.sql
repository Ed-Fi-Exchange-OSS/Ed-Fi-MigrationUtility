-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

SET IDENTITY_INSERT [edfi].[GradeLevelType] ON 
INSERT [edfi].[GradeLevelType] ([GradeLevelTypeId], [CodeValue], [Description], [ShortDescription], [Id], [LastModifiedDate], [CreateDate]) VALUES (1, N'Test-CodeValue', N'Test-Description', N'Test-ShortDescription', N'00000000-0000-0000-0000-000000000000', CAST(N'2000-01-01T00:00:00.000' AS DateTime), CAST(N'2000-01-01T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [edfi].[GradeLevelType] OFF

SET IDENTITY_INSERT [edfi].[Descriptor] ON 
INSERT [edfi].[Descriptor] ([DescriptorId], [Namespace], [CodeValue], [ShortDescription], [Description], [PriorDescriptorId], [EffectiveBeginDate], [EffectiveEndDate], [Id], [LastModifiedDate], [CreateDate]) VALUES (17, N'uri://ed-fi.org/NotApplicable', N'CredentialFieldDescriptor', N'CredentialFieldDescriptor', N'CredentialFieldDescriptor', NULL, NULL, NULL, N'00000000-0000-0000-0000-000000000017', CAST(N'2000-01-01T00:00:00.000' AS DateTime), CAST(N'2000-01-01T00:00:00.000' AS DateTime))
INSERT [edfi].[Descriptor] ([DescriptorId], [Namespace], [CodeValue], [ShortDescription], [Description], [PriorDescriptorId], [EffectiveBeginDate], [EffectiveEndDate], [Id], [LastModifiedDate], [CreateDate]) VALUES (25, N'uri://ed-fi.org/NotApplicable', N'GradeLevelDescriptor', N'GradeLevelDescriptor', N'GradeLevelDescriptor', NULL, NULL, NULL, N'00000000-0000-0000-0000-000000000025', CAST(N'2000-01-01T00:00:00.000' AS DateTime), CAST(N'2000-01-01T00:00:00.000' AS DateTime))
INSERT [edfi].[Descriptor] ([DescriptorId], [Namespace], [CodeValue], [ShortDescription], [Description], [PriorDescriptorId], [EffectiveBeginDate], [EffectiveEndDate], [Id], [LastModifiedDate], [CreateDate]) VALUES (29, N'uri://ed-fi.org/NotApplicable', N'LevelDescriptor', N'LevelDescriptor', N'LevelDescriptor', NULL, NULL, NULL, N'00000000-0000-0000-0000-000000000029', CAST(N'2000-01-01T00:00:00.000' AS DateTime), CAST(N'2000-01-01T00:00:00.000' AS DateTime))
INSERT [edfi].[Descriptor] ([DescriptorId], [Namespace], [CodeValue], [ShortDescription], [Description], [PriorDescriptorId], [EffectiveBeginDate], [EffectiveEndDate], [Id], [LastModifiedDate], [CreateDate]) VALUES (48, N'uri://ed-fi.org/NotApplicable', N'TeachingCredentialDescriptor', N'TeachingCredentialDescriptor', N'TeachingCredentialDescriptor', NULL, NULL, NULL, N'00000000-0000-0000-0000-000000000048', CAST(N'2000-01-01T00:00:00.000' AS DateTime), CAST(N'2000-01-01T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [edfi].[Descriptor] OFF

INSERT [edfi].[GradeLevelDescriptor] ([GradeLevelDescriptorId], [GradeLevelTypeId]) VALUES (25, 1)
INSERT [edfi].[LevelDescriptor] ([LevelDescriptorId]) VALUES (29)
INSERT [edfi].[LevelDescriptorGradeLevel] ([LevelDescriptorId], [GradeLevelDescriptorId], [CreateDate]) VALUES (29, 25, CAST(N'2000-01-01T00:00:00.000' AS DateTime))


SET IDENTITY_INSERT [edfi].[LevelOfEducationType] ON 
INSERT [edfi].[LevelOfEducationType] ([LevelOfEducationTypeId], [CodeValue], [Description], [ShortDescription], [Id], [LastModifiedDate], [CreateDate]) VALUES (1, N'Test-CodeValue', N'Test-Description', N'Test-ShortDescription', N'00000000-0000-0000-0000-000000000000', CAST(N'2000-01-01T00:00:00.000' AS DateTime), CAST(N'2000-01-01T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [edfi].[LevelOfEducationType] OFF

SET IDENTITY_INSERT [edfi].[TeachingCredentialType] ON 
INSERT [edfi].[TeachingCredentialType] ([TeachingCredentialTypeId], [CodeValue], [Description], [ShortDescription], [Id], [LastModifiedDate], [CreateDate]) VALUES (1, N'Test-CodeValue', N'Test-Description', N'Test-ShortDescription', N'00000000-0000-0000-0000-000000000000', CAST(N'2000-01-01T00:00:00.000' AS DateTime), CAST(N'2000-01-01T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [edfi].[TeachingCredentialType] OFF
INSERT [edfi].[TeachingCredentialDescriptor] ([TeachingCredentialDescriptorId], [TeachingCredentialTypeId]) VALUES (48, NULL)
SET IDENTITY_INSERT [edfi].[AcademicSubjectType] ON 
INSERT [edfi].[AcademicSubjectType] ([AcademicSubjectTypeId], [CodeValue], [Description], [ShortDescription], [Id], [LastModifiedDate], [CreateDate]) VALUES (1, N'Test-CodeValue', N'Test-Description', N'Test-ShortDescription', N'00000000-0000-0000-0000-000000000000', CAST(N'2000-01-01T00:00:00.000' AS DateTime), CAST(N'2000-01-01T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [edfi].[AcademicSubjectType] OFF
INSERT [edfi].[CredentialFieldDescriptor] ([CredentialFieldDescriptorId], [AcademicSubjectDescriptorId]) VALUES (17, NULL)

SET IDENTITY_INSERT [edfi].[Staff] ON 
INSERT [edfi].[Staff] ([StaffUSI], [PersonalTitlePrefix], [FirstName], [MiddleName], [LastSurname], [GenerationCodeSuffix], [MaidenName], [SexTypeId], [BirthDate], [HispanicLatinoEthnicity], [OldEthnicityTypeId], [HighestCompletedLevelOfEducationDescriptorId], [YearsOfPriorProfessionalExperience], [YearsOfPriorTeachingExperience], [HighlyQualifiedTeacher], [LoginId], [CitizenshipStatusTypeId], [StaffUniqueId], [Id], [LastModifiedDate], [CreateDate]) VALUES (1, NULL, N'Test-FirstName', NULL, N'Test-LastSurname', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Test-StaffUniqueId', N'00000000-0000-0000-0000-000000000000', CAST(N'2000-01-01T00:00:00.000' AS DateTime), CAST(N'2000-01-01T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [edfi].[Staff] OFF

SET IDENTITY_INSERT [edfi].[TeachingCredentialBasisType] ON 
INSERT [edfi].[TeachingCredentialBasisType] ([TeachingCredentialBasisTypeId], [CodeValue], [Description], [ShortDescription], [Id], [LastModifiedDate], [CreateDate]) VALUES (1, N'Test-CodeValue', N'Test-Description', N'Test-ShortDescription', N'00000000-0000-0000-0000-000000000000', CAST(N'2000-01-01T00:00:00.000' AS DateTime), CAST(N'2000-01-01T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [edfi].[TeachingCredentialBasisType] OFF

SET IDENTITY_INSERT [edfi].[CredentialType] ON 
INSERT [edfi].[CredentialType] ([CredentialTypeId], [CodeValue], [Description], [ShortDescription], [Id], [LastModifiedDate], [CreateDate]) VALUES (1, N'Test-CodeValue', N'Test-Description', N'Test-ShortDescription', N'00000000-0000-0000-0000-000000000000', CAST(N'2000-01-01T00:00:00.000' AS DateTime), CAST(N'2000-01-01T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [edfi].[CredentialType] OFF

INSERT [edfi].[StaffCredential] ([StaffUSI], [CredentialFieldDescriptorId], [CredentialTypeId], [LevelDescriptorId], [TeachingCredentialDescriptorId], [CredentialIssuanceDate], [CredentialExpirationDate], [TeachingCredentialBasisTypeId], [StateOfIssueStateAbbreviationTypeId], [CreateDate]) VALUES (1, 17, 1, 29, 48, CAST(N'2000-01-01' AS Date), NULL, NULL, NULL, CAST(N'2000-01-01T00:00:00.000' AS DateTime))
