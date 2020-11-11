-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [InterventionStaff_PK] on [edfi].[InterventionStaff]'
GO
ALTER TABLE [edfi].[InterventionStaff] ADD CONSTRAINT [InterventionStaff_PK] PRIMARY KEY CLUSTERED  ([InterventionIdentificationCode], [EducationOrganizationId], [StaffUSI])
GO
PRINT N'Creating index [FK_InterventionStaff_Intervention] on [edfi].[InterventionStaff]'
GO
CREATE NONCLUSTERED INDEX [FK_InterventionStaff_Intervention] ON [edfi].[InterventionStaff] ([InterventionIdentificationCode], [EducationOrganizationId])
GO
PRINT N'Creating index [FK_InterventionStaff_Staff] on [edfi].[InterventionStaff]'
GO
CREATE NONCLUSTERED INDEX [FK_InterventionStaff_Staff] ON [edfi].[InterventionStaff] ([StaffUSI])
GO

PRINT N'Adding constraints to [edfi].[InterventionStaff]'
GO
ALTER TABLE [edfi].[InterventionStaff] ADD CONSTRAINT [InterventionStaff_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

