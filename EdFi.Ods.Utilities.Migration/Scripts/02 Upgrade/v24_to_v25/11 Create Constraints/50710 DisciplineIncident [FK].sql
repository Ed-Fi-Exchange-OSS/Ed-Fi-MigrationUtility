-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[DisciplineIncident]'
GO
ALTER TABLE [edfi].[DisciplineIncident] ADD CONSTRAINT [FK_DisciplineIncident_IncidentLocationType] FOREIGN KEY ([IncidentLocationTypeId]) REFERENCES [edfi].[IncidentLocationType] ([IncidentLocationTypeId])
GO
ALTER TABLE [edfi].[DisciplineIncident] ADD CONSTRAINT [FK_DisciplineIncident_ReporterDescriptionDescriptor] FOREIGN KEY ([ReporterDescriptionDescriptorId]) REFERENCES [edfi].[ReporterDescriptionDescriptor] ([ReporterDescriptionDescriptorId])
GO
ALTER TABLE [edfi].[DisciplineIncident] ADD CONSTRAINT [FK_DisciplineIncident_School] FOREIGN KEY ([SchoolId]) REFERENCES [edfi].[School] ([SchoolId])
GO
ALTER TABLE [edfi].[DisciplineIncident] ADD CONSTRAINT [FK_DisciplineIncident_Staff] FOREIGN KEY ([StaffUSI]) REFERENCES [edfi].[Staff] ([StaffUSI])
GO
