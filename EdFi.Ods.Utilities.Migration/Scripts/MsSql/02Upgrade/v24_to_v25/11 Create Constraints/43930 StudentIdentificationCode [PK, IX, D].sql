-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentIdentificationCode_PK] on [edfi].[StudentIdentificationCode]'
GO
ALTER TABLE [edfi].[StudentIdentificationCode] ADD CONSTRAINT [StudentIdentificationCode_PK] PRIMARY KEY CLUSTERED  ([StudentUSI], [AssigningOrganizationIdentificationCode], [StudentIdentificationSystemDescriptorId])
GO
PRINT N'Creating index [FK_StudentIdentificationCode_StudentIdentificationSystemDescriptor] on [edfi].[StudentIdentificationCode]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentIdentificationCode_StudentIdentificationSystemDescriptor] ON [edfi].[StudentIdentificationCode] ([StudentIdentificationSystemDescriptorId])
GO
PRINT N'Creating index [FK_StudentIdentificationCode_Student] on [edfi].[StudentIdentificationCode]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentIdentificationCode_Student] ON [edfi].[StudentIdentificationCode] ([StudentUSI])
GO

PRINT N'Adding constraints to [edfi].[StudentIdentificationCode]'
GO
ALTER TABLE [edfi].[StudentIdentificationCode] ADD CONSTRAINT [StudentIdentificationCode_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

