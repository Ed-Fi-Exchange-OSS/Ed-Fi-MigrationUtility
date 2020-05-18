-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [SectionCharacteristic_PK] on [edfi].[SectionCharacteristic]'
GO
ALTER TABLE [edfi].[SectionCharacteristic] ADD CONSTRAINT [SectionCharacteristic_PK] PRIMARY KEY CLUSTERED  ([LocalCourseCode], [SchoolId], [SchoolYear], [SectionCharacteristicDescriptorId], [SectionIdentifier], [SessionName])
GO

PRINT N'Creating index [FK_SectionCharacteristic_Section] on [edfi].[SectionCharacteristic]'
GO
CREATE NONCLUSTERED INDEX [FK_SectionCharacteristic_Section] ON [edfi].[SectionCharacteristic] ([LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
GO

PRINT N'Creating index [FK_SectionCharacteristic_SectionCharacteristicDescriptor] on [edfi].[SectionCharacteristic]'
GO
CREATE NONCLUSTERED INDEX [FK_SectionCharacteristic_SectionCharacteristicDescriptor] ON [edfi].[SectionCharacteristic] ([SectionCharacteristicDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[SectionCharacteristic]'
GO
ALTER TABLE [edfi].[SectionCharacteristic] ADD CONSTRAINT [SectionCharacteristic_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
