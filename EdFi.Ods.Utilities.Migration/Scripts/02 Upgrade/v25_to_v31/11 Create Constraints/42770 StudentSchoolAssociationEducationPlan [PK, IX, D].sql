-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentSchoolAssociationEducationPlan_PK] on [edfi].[StudentSchoolAssociationEducationPlan]'
GO
ALTER TABLE [edfi].[StudentSchoolAssociationEducationPlan] ADD CONSTRAINT [StudentSchoolAssociationEducationPlan_PK] PRIMARY KEY CLUSTERED  ([EducationPlanDescriptorId], [EntryDate], [SchoolId], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentSchoolAssociationEducationPlan_EducationPlanDescriptor] on [edfi].[StudentSchoolAssociationEducationPlan]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentSchoolAssociationEducationPlan_EducationPlanDescriptor] ON [edfi].[StudentSchoolAssociationEducationPlan] ([EducationPlanDescriptorId])
GO

PRINT N'Creating index [FK_StudentSchoolAssociationEducationPlan_StudentSchoolAssociation] on [edfi].[StudentSchoolAssociationEducationPlan]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentSchoolAssociationEducationPlan_StudentSchoolAssociation] ON [edfi].[StudentSchoolAssociationEducationPlan] ([EntryDate], [SchoolId], [StudentUSI])
GO

PRINT N'Adding constraints to [edfi].[StudentSchoolAssociationEducationPlan]'
GO
ALTER TABLE [edfi].[StudentSchoolAssociationEducationPlan] ADD CONSTRAINT [StudentSchoolAssociationEducationPlan_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
