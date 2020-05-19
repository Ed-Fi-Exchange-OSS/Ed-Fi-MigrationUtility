-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StaffSchoolAssociationGradeLevel_PK] on [edfi].[StaffSchoolAssociationGradeLevel]'
GO
ALTER TABLE [edfi].[StaffSchoolAssociationGradeLevel] ADD CONSTRAINT [StaffSchoolAssociationGradeLevel_PK] PRIMARY KEY CLUSTERED  ([GradeLevelDescriptorId], [ProgramAssignmentDescriptorId], [SchoolId], [StaffUSI])
GO

PRINT N'Creating index [FK_StaffSchoolAssociationGradeLevel_GradeLevelDescriptor] on [edfi].[StaffSchoolAssociationGradeLevel]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffSchoolAssociationGradeLevel_GradeLevelDescriptor] ON [edfi].[StaffSchoolAssociationGradeLevel] ([GradeLevelDescriptorId])
GO

PRINT N'Creating index [FK_StaffSchoolAssociationGradeLevel_StaffSchoolAssociation] on [edfi].[StaffSchoolAssociationGradeLevel]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffSchoolAssociationGradeLevel_StaffSchoolAssociation] ON [edfi].[StaffSchoolAssociationGradeLevel] ([ProgramAssignmentDescriptorId], [SchoolId], [StaffUSI])
GO

PRINT N'Adding constraints to [edfi].[StaffSchoolAssociationGradeLevel]'
GO
ALTER TABLE [edfi].[StaffSchoolAssociationGradeLevel] ADD CONSTRAINT [StaffSchoolAssociationGradeLevel_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
