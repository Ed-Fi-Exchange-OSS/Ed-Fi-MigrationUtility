-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentDisciplineIncidentAssociationBehavior_PK] on [edfi].[StudentDisciplineIncidentAssociationBehavior]'
GO
ALTER TABLE [edfi].[StudentDisciplineIncidentAssociationBehavior] ADD CONSTRAINT [StudentDisciplineIncidentAssociationBehavior_PK] PRIMARY KEY CLUSTERED  ([StudentUSI], [SchoolId], [IncidentIdentifier], [BehaviorDescriptorId])
GO
PRINT N'Creating index [FK_StudentDisciplineIncidentAssociationBehavior_BehaviorDescriptor] on [edfi].[StudentDisciplineIncidentAssociationBehavior]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentDisciplineIncidentAssociationBehavior_BehaviorDescriptor] ON [edfi].[StudentDisciplineIncidentAssociationBehavior] ([BehaviorDescriptorId])
GO
PRINT N'Creating index [FK_StudentDisciplineIncidentAssociationBehavior_StudentDisciplineIncidentAssociation] on [edfi].[StudentDisciplineIncidentAssociationBehavior]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentDisciplineIncidentAssociationBehavior_StudentDisciplineIncidentAssociation] ON [edfi].[StudentDisciplineIncidentAssociationBehavior] ([StudentUSI], [SchoolId], [IncidentIdentifier])
GO

PRINT N'Adding constraints to [edfi].[StudentDisciplineIncidentAssociationBehavior]'
GO
ALTER TABLE [edfi].[StudentDisciplineIncidentAssociationBehavior] ADD CONSTRAINT [StudentDisciplineIncidentAssociationBehavior_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

