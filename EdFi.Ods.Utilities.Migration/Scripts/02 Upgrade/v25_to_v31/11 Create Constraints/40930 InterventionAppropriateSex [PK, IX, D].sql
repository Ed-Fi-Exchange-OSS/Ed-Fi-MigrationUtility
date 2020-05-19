-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [InterventionAppropriateSex_PK] on [edfi].[InterventionAppropriateSex]'
GO
ALTER TABLE [edfi].[InterventionAppropriateSex] ADD CONSTRAINT [InterventionAppropriateSex_PK] PRIMARY KEY CLUSTERED  ([EducationOrganizationId], [InterventionIdentificationCode], [SexDescriptorId])
GO

PRINT N'Creating index [FK_InterventionAppropriateSex_Intervention] on [edfi].[InterventionAppropriateSex]'
GO
CREATE NONCLUSTERED INDEX [FK_InterventionAppropriateSex_Intervention] ON [edfi].[InterventionAppropriateSex] ([EducationOrganizationId], [InterventionIdentificationCode])
GO

PRINT N'Creating index [FK_InterventionAppropriateSex_SexDescriptor] on [edfi].[InterventionAppropriateSex]'
GO
CREATE NONCLUSTERED INDEX [FK_InterventionAppropriateSex_SexDescriptor] ON [edfi].[InterventionAppropriateSex] ([SexDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[InterventionAppropriateSex]'
GO
ALTER TABLE [edfi].[InterventionAppropriateSex] ADD CONSTRAINT [InterventionAppropriateSex_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
