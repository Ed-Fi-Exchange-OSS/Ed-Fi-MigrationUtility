-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [DeliveryMethodType_PK] on [edfi].[DeliveryMethodType]'
GO
ALTER TABLE [edfi].[DeliveryMethodType] ADD CONSTRAINT [DeliveryMethodType_PK] PRIMARY KEY CLUSTERED  ([DeliveryMethodTypeId])
GO
PRINT N'Creating index [UX_DeliveryMethodType_Id] on [edfi].[DeliveryMethodType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_DeliveryMethodType_Id] ON [edfi].[DeliveryMethodType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[DeliveryMethodType]'
GO
ALTER TABLE [edfi].[DeliveryMethodType] ADD CONSTRAINT [DeliveryMethodType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[DeliveryMethodType] ADD CONSTRAINT [DeliveryMethodType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[DeliveryMethodType] ADD CONSTRAINT [DeliveryMethodType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

