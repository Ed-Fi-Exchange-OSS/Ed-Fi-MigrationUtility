-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [InterventionURI_PK] on [edfi].[InterventionURI]'
GO
ALTER TABLE [edfi].[InterventionURI] ADD CONSTRAINT [InterventionURI_PK] PRIMARY KEY CLUSTERED  ([EducationOrganizationId], [InterventionIdentificationCode], [URI])
GO

PRINT N'Creating index [FK_InterventionURI_Intervention] on [edfi].[InterventionURI]'
GO
CREATE NONCLUSTERED INDEX [FK_InterventionURI_Intervention] ON [edfi].[InterventionURI] ([EducationOrganizationId], [InterventionIdentificationCode])
GO

PRINT N'Adding constraints to [edfi].[InterventionURI]'
GO
ALTER TABLE [edfi].[InterventionURI] ADD CONSTRAINT [InterventionURI_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
