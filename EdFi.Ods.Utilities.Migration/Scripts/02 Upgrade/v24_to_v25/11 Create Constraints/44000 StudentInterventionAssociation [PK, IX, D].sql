-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentInterventionAssociation_PK] on [edfi].[StudentInterventionAssociation]'
GO
ALTER TABLE [edfi].[StudentInterventionAssociation] ADD CONSTRAINT [StudentInterventionAssociation_PK] PRIMARY KEY CLUSTERED  ([StudentUSI], [InterventionIdentificationCode], [EducationOrganizationId])
GO
PRINT N'Creating index [UX_StudentInterventionAssociation_Id] on [edfi].[StudentInterventionAssociation]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_StudentInterventionAssociation_Id] ON [edfi].[StudentInterventionAssociation] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO
PRINT N'Creating index [FK_StudentInterventionAssociation_Cohort] on [edfi].[StudentInterventionAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentInterventionAssociation_Cohort] ON [edfi].[StudentInterventionAssociation] ([CohortIdentifier], [CohortEducationOrganizationId])
GO
PRINT N'Creating index [FK_StudentInterventionAssociation_Intervention] on [edfi].[StudentInterventionAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentInterventionAssociation_Intervention] ON [edfi].[StudentInterventionAssociation] ([InterventionIdentificationCode], [EducationOrganizationId])
GO
PRINT N'Creating index [FK_StudentInterventionAssociation_Student] on [edfi].[StudentInterventionAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentInterventionAssociation_Student] ON [edfi].[StudentInterventionAssociation] ([StudentUSI])
GO

PRINT N'Adding constraints to [edfi].[StudentInterventionAssociation]'
GO
ALTER TABLE [edfi].[StudentInterventionAssociation] ADD CONSTRAINT [StudentInterventionAssociation_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[StudentInterventionAssociation] ADD CONSTRAINT [StudentInterventionAssociation_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[StudentInterventionAssociation] ADD CONSTRAINT [StudentInterventionAssociation_DF_Id] DEFAULT (newid()) FOR [Id]
GO

