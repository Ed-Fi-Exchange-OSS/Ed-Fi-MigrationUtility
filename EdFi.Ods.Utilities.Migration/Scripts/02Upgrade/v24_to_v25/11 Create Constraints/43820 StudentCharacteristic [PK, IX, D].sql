-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentCharacteristic_PK] on [edfi].[StudentCharacteristic]'
GO
ALTER TABLE [edfi].[StudentCharacteristic] ADD CONSTRAINT [StudentCharacteristic_PK] PRIMARY KEY CLUSTERED  ([StudentUSI], [StudentCharacteristicDescriptorId])
GO
PRINT N'Creating index [FK_StudentCharacteristic_StudentCharacteristicDescriptor] on [edfi].[StudentCharacteristic]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentCharacteristic_StudentCharacteristicDescriptor] ON [edfi].[StudentCharacteristic] ([StudentCharacteristicDescriptorId])
GO
PRINT N'Creating index [FK_StudentCharacteristic_Student] on [edfi].[StudentCharacteristic]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentCharacteristic_Student] ON [edfi].[StudentCharacteristic] ([StudentUSI])
GO

PRINT N'Adding constraints to [edfi].[StudentCharacteristic]'
GO
ALTER TABLE [edfi].[StudentCharacteristic] ADD CONSTRAINT [StudentCharacteristic_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

