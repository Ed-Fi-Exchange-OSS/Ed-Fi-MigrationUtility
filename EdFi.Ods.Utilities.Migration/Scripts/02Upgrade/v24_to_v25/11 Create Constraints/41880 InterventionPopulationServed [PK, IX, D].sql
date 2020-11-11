-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [InterventionPopulationServed_PK] on [edfi].[InterventionPopulationServed]'
GO
ALTER TABLE [edfi].[InterventionPopulationServed] ADD CONSTRAINT [InterventionPopulationServed_PK] PRIMARY KEY CLUSTERED  ([InterventionIdentificationCode], [EducationOrganizationId], [PopulationServedTypeId])
GO
PRINT N'Creating index [FK_InterventionPopulationServed_Intervention] on [edfi].[InterventionPopulationServed]'
GO
CREATE NONCLUSTERED INDEX [FK_InterventionPopulationServed_Intervention] ON [edfi].[InterventionPopulationServed] ([InterventionIdentificationCode], [EducationOrganizationId])
GO
PRINT N'Creating index [FK_InterventionPopulationServed_PopulationServedType] on [edfi].[InterventionPopulationServed]'
GO
CREATE NONCLUSTERED INDEX [FK_InterventionPopulationServed_PopulationServedType] ON [edfi].[InterventionPopulationServed] ([PopulationServedTypeId])
GO

PRINT N'Adding constraints to [edfi].[InterventionPopulationServed]'
GO
ALTER TABLE [edfi].[InterventionPopulationServed] ADD CONSTRAINT [InterventionPopulationServed_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

