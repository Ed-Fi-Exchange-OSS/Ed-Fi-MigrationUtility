-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

SET IDENTITY_INSERT [edfi].[Descriptor] ON 
INSERT [edfi].[Descriptor] ([DescriptorId], [Namespace], [CodeValue], [ShortDescription], [Description], [PriorDescriptorId], [EffectiveBeginDate], [EffectiveEndDate], [Id], [LastModifiedDate], [CreateDate]) VALUES (1, N'uri://ed-fi.org/NotApplicable', N'AcademicSubjectDescriptor', N'AcademicSubjectDescriptor', N'AcademicSubjectDescriptor', NULL, NULL, NULL, N'00000000-0000-0000-0000-000000000001', CAST(N'2000-01-01T00:00:00.000' AS DateTime), CAST(N'2000-01-01T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [edfi].[Descriptor] OFF

INSERT [edfi].[AcademicSubjectDescriptor] ([AcademicSubjectDescriptorId], [AcademicSubjectTypeId]) VALUES (1, 1)

INSERT [edfi].[Assessment] ([AssessmentIdentifier], [Namespace], [AssessmentTitle]) VALUES (N'Test-AssessmentId', 'http://ed-fi.org/Assessment/Assessment.xml', N'Test-AssessmentTitle')

INSERT [edfi].[EducationOrganization] ([EducationOrganizationId], [StateOrganizationId], [NameOfInstitution], [ShortNameOfInstitution], [WebSite], [OperationalStatusTypeId], [Id], [LastModifiedDate], [CreateDate]) VALUES (1, N'Test-StateOrganizationId', N'Test-NameOfInstitution', NULL, NULL, NULL, N'00000000-0000-0000-0000-000000000000', CAST(N'2000-01-01T00:00:00.000' AS DateTime), CAST(N'2000-01-01T00:00:00.000' AS DateTime))

INSERT [edfi].[AssessmentContentStandard] ([AssessmentIdentifier], [Namespace], [Title], [Version], [URI], [PublicationDate], [PublicationYear], [PublicationStatusTypeId], [MandatingEducationOrganizationId], [BeginDate], [EndDate], [CreateDate]) VALUES (N'Test-AssessmentId', 'http://ed-fi.org/Assessment/Assessment.xml', N'Test-Title', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2000-01-01T00:00:00.000' AS DateTime))

INSERT [edfi].[AssessmentContentStandardAuthor] ([AssessmentIdentifier], [Namespace], [Author], [CreateDate]) VALUES (N'Test-AssessmentId', 'http://ed-fi.org/Assessment/Assessment.xml', @longAuthorName, CAST(N'2000-01-01T00:00:00.000' AS DateTime))
INSERT [edfi].[AssessmentContentStandardAuthor] ([AssessmentIdentifier], [Namespace], [Author], [CreateDate]) VALUES (N'Test-AssessmentId', 'http://ed-fi.org/Assessment/Assessment.xml', @longAuthorNameDuplicate, CAST(N'2000-01-01T00:00:00.000' AS DateTime))
INSERT [edfi].[AssessmentContentStandardAuthor] ([AssessmentIdentifier], [Namespace], [Author], [CreateDate]) VALUES (N'Test-AssessmentId', 'http://ed-fi.org/Assessment/Assessment.xml', @shortAuthorName, CAST(N'2000-01-01T00:00:00.000' AS DateTime))

INSERT [edfi].[EducationContent] ([ContentIdentifier], [Namespace]) VALUES (N'Test-EducationContent', 'Test-Namespace')

INSERT [edfi].[EducationContentAuthor] ([ContentIdentifier], [Author]) VALUES (N'Test-EducationContent', @longAuthorName)
INSERT [edfi].[EducationContentAuthor] ([ContentIdentifier], [Author]) VALUES (N'Test-EducationContent', @longAuthorNameDuplicate)
INSERT [edfi].[EducationContentAuthor] ([ContentIdentifier], [Author]) VALUES (N'Test-EducationContent', @shortAuthorName)

INSERT [edfi].[LearningStandard] ([LearningStandardId], [Description], [AcademicSubjectDescriptorId], [Namespace]) VALUES (N'Test-LearningStandard', N'Test-LearningStandard', 1, 'Test-Namespace')

INSERT [edfi].[LearningObjective] ([Objective], [LearningObjectiveId], [Namespace]) VALUES ('Test-Objective', 'Test-Objective', 'http://ed-fi.org/LearningObjective/LearningObjective.xml')
  
INSERT [edfi].[LearningObjectiveContentStandard] ([LearningObjectiveId], [Namespace], [Title]) VALUES ('Test-Objective', 'http://ed-fi.org/LearningObjective/LearningObjective.xml', N'Test-Objective')

INSERT [edfi].[LearningObjectiveContentStandardAuthor] ([LearningObjectiveId], [Namespace], [Author]) VALUES (N'Test-Objective', 'http://ed-fi.org/LearningObjective/LearningObjective.xml', @longAuthorName)
INSERT [edfi].[LearningObjectiveContentStandardAuthor] ([LearningObjectiveId], [Namespace], [Author]) VALUES (N'Test-Objective', 'http://ed-fi.org/LearningObjective/LearningObjective.xml', @longAuthorNameDuplicate)
INSERT [edfi].[LearningObjectiveContentStandardAuthor] ([LearningObjectiveId], [Namespace], [Author]) VALUES (N'Test-Objective', 'http://ed-fi.org/LearningObjective/LearningObjective.xml', @shortAuthorName)

INSERT [edfi].[LearningStandardContentStandard] ([LearningStandardId],[Title]) VALUES (N'Test-LearningStandard', N'Test-LearningStandard');

INSERT [edfi].[LearningStandardContentStandardAuthor] ([LearningStandardId], [Author]) VALUES (N'Test-LearningStandard', @longAuthorName)
INSERT [edfi].[LearningStandardContentStandardAuthor] ([LearningStandardId], [Author]) VALUES (N'Test-LearningStandard', @longAuthorNameDuplicate)
INSERT [edfi].[LearningStandardContentStandardAuthor] ([LearningStandardId], [Author]) VALUES (N'Test-LearningStandard', @shortAuthorName)


