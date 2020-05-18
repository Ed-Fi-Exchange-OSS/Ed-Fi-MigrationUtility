-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [Intervention_PK] on [edfi].[Intervention]'
GO
ALTER TABLE [edfi].[Intervention] ADD CONSTRAINT [Intervention_PK] PRIMARY KEY CLUSTERED  ([InterventionIdentificationCode], [EducationOrganizationId])
GO
PRINT N'Creating index [UX_Intervention_Id] on [edfi].[Intervention]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_Intervention_Id] ON [edfi].[Intervention] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO
PRINT N'Creating index [FK_Intervention_DeliveryMethodType] on [edfi].[Intervention]'
GO
CREATE NONCLUSTERED INDEX [FK_Intervention_DeliveryMethodType] ON [edfi].[Intervention] ([DeliveryMethodTypeId])
GO
PRINT N'Creating index [FK_Intervention_EducationOrganization] on [edfi].[Intervention]'
GO
CREATE NONCLUSTERED INDEX [FK_Intervention_EducationOrganization] ON [edfi].[Intervention] ([EducationOrganizationId])
GO
PRINT N'Creating index [FK_Intervention_InterventionClassType] on [edfi].[Intervention]'
GO
CREATE NONCLUSTERED INDEX [FK_Intervention_InterventionClassType] ON [edfi].[Intervention] ([InterventionClassTypeId])
GO

PRINT N'Adding constraints to [edfi].[Intervention]'
GO
ALTER TABLE [edfi].[Intervention] ADD CONSTRAINT [Intervention_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[Intervention] ADD CONSTRAINT [Intervention_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[Intervention] ADD CONSTRAINT [Intervention_DF_Id] DEFAULT (newid()) FOR [Id]
GO

