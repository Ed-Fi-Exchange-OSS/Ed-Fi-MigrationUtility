-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

SET IDENTITY_INSERT [edfi].[Descriptor] ON 
INSERT [edfi].[Descriptor] ([DescriptorId], [Namespace], [CodeValue], [ShortDescription], [Description], [PriorDescriptorId], [EffectiveBeginDate], [EffectiveEndDate], [Id], [LastModifiedDate], [CreateDate]) VALUES (22, N'uri://ed-fi.org/NotApplicable', N'EmploymentStatusDescriptor', N'EmploymentStatusDescriptor', N'EmploymentStatusDescriptor', NULL, NULL, NULL, N'00000000-0000-0000-0000-000000000022', CAST(N'2000-01-01T00:00:00.000' AS DateTime), CAST(N'2000-01-01T00:00:00.000' AS DateTime))
INSERT [edfi].[Descriptor] ([DescriptorId], [Namespace], [CodeValue], [ShortDescription], [Description], [PriorDescriptorId], [EffectiveBeginDate], [EffectiveEndDate], [Id], [LastModifiedDate], [CreateDate]) VALUES (44, N'uri://ed-fi.org/NotApplicable', N'StaffClassificationDescriptor1', N'StaffClassificationDescriptor1', N'StaffClassificationDescriptor1', NULL, NULL, NULL, N'00000000-0000-0000-0000-000000000044', CAST(N'2000-01-01T00:00:00.000' AS DateTime), CAST(N'2000-01-01T00:00:00.000' AS DateTime))
INSERT [edfi].[Descriptor] ([DescriptorId], [Namespace], [CodeValue], [ShortDescription], [Description], [PriorDescriptorId], [EffectiveBeginDate], [EffectiveEndDate], [Id], [LastModifiedDate], [CreateDate]) VALUES (45, N'uri://ed-fi.org/NotApplicable', N'StaffClassificationDescriptor2', N'StaffClassificationDescriptor2', N'StaffClassificationDescriptor2', NULL, NULL, NULL, N'00000000-0000-0000-0000-000000000045', CAST(N'2000-01-01T00:00:00.000' AS DateTime), CAST(N'2000-01-01T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [edfi].[Descriptor] OFF

SET IDENTITY_INSERT [edfi].[EmploymentStatusType] ON 
INSERT [edfi].[EmploymentStatusType] ([EmploymentStatusTypeId], [CodeValue], [Description], [ShortDescription], [Id], [LastModifiedDate], [CreateDate]) VALUES (1, N'Test-CodeValue', N'Test-Description', N'Test-ShortDescription', N'00000000-0000-0000-0000-000000000000', CAST(N'2000-01-01T00:00:00.000' AS DateTime), CAST(N'2000-01-01T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [edfi].[EmploymentStatusType] OFF

INSERT [edfi].[EmploymentStatusDescriptor] ([EmploymentStatusDescriptorId], [EmploymentStatusTypeId]) VALUES (22, 1)

INSERT [edfi].[StaffClassificationDescriptor] ([StaffClassificationDescriptorId], [StaffClassificationTypeId])
VALUES (44, NULL), (45, NULL)

INSERT [edfi].[EducationOrganization] ([EducationOrganizationId], [StateOrganizationId], [NameOfInstitution], [ShortNameOfInstitution], [WebSite], [OperationalStatusTypeId], [Id], [LastModifiedDate], [CreateDate]) VALUES (1, N'Test-StateOrganizationId', N'Test-NameOfInstitution', NULL, NULL, NULL, N'00000000-0000-0000-0000-000000000000', CAST(N'2000-01-01T00:00:00.000' AS DateTime), CAST(N'2000-01-01T00:00:00.000' AS DateTime))

INSERT [edfi].[OpenStaffPosition] ([EducationOrganizationId], [EmploymentStatusDescriptorId], [StaffClassificationDescriptorId], [RequisitionNumber], [DatePosted], [PositionTitle], [ProgramAssignmentDescriptorId], [DatePostingRemoved], [PostingResultTypeId], [Id], [LastModifiedDate], [CreateDate])
VALUES
	(1, 22, 44, N'Duplicate', CAST(N'2000-01-01' AS Date), NULL, NULL, NULL, NULL, N'00000000-0000-0000-0000-000000000000', CAST(N'2000-01-01T00:00:00.000' AS DateTime), CAST(N'2000-01-01T00:00:00.000' AS DateTime)),
	(1, 22, 45, N'Duplicate', CAST(N'2000-01-01' AS Date), NULL, NULL, NULL, NULL, N'00000000-0000-0000-0000-000000000001', CAST(N'2000-01-01T00:00:00.000' AS DateTime), CAST(N'2000-01-01T00:00:00.000' AS DateTime))
