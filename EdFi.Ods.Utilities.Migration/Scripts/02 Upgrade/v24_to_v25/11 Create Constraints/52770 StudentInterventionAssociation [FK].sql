-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StudentInterventionAssociation]'
GO
ALTER TABLE [edfi].[StudentInterventionAssociation] ADD CONSTRAINT [FK_StudentInterventionAssociation_Cohort] FOREIGN KEY ([CohortIdentifier], [CohortEducationOrganizationId]) REFERENCES [edfi].[Cohort] ([CohortIdentifier], [EducationOrganizationId])
GO
ALTER TABLE [edfi].[StudentInterventionAssociation] ADD CONSTRAINT [FK_StudentInterventionAssociation_Intervention] FOREIGN KEY ([InterventionIdentificationCode], [EducationOrganizationId]) REFERENCES [edfi].[Intervention] ([InterventionIdentificationCode], [EducationOrganizationId])
GO
ALTER TABLE [edfi].[StudentInterventionAssociation] ADD CONSTRAINT [FK_StudentInterventionAssociation_Student] FOREIGN KEY ([StudentUSI]) REFERENCES [edfi].[Student] ([StudentUSI])
GO
