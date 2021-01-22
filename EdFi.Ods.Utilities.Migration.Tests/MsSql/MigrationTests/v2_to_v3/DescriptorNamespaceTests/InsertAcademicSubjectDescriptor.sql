-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

DECLARE @TypeId INT = 1

IF NOT EXISTS (SELECT 1 FROM [edfi].[AcademicSubjectType])
BEGIN
SET IDENTITY_INSERT [edfi].[AcademicSubjectType] ON 
INSERT [edfi].[AcademicSubjectType] ([AcademicSubjectTypeId], [CodeValue], [Description], [ShortDescription], [Id], [LastModifiedDate], [CreateDate]) VALUES (@TypeId, N'Example', N'Example', N'Example', NEWID(), GETDATE(), GETDATE())
SET IDENTITY_INSERT [edfi].[AcademicSubjectType] OFF
END

INSERT [edfi].[Descriptor] ([Namespace], [CodeValue], [ShortDescription], [Description] ) VALUES
(@Namespace, @CodeValue, @ShortDescription, @Description)

INSERT [edfi].[AcademicSubjectDescriptor] ([AcademicSubjectDescriptorId], [AcademicSubjectTypeId]) 
SELECT [DescriptorId], @TypeId
FROM [edfi].[Descriptor]
WHERE
	[Namespace] = @Namespace
	AND [CodeValue] = @CodeValue