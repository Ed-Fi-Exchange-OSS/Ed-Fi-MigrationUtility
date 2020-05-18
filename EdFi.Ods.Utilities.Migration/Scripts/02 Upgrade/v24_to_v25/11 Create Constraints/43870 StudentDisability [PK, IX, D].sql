-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentDisability_PK] on [edfi].[StudentDisability]'
GO
ALTER TABLE [edfi].[StudentDisability] ADD CONSTRAINT [StudentDisability_PK] PRIMARY KEY CLUSTERED  ([StudentUSI], [DisabilityDescriptorId])
GO
PRINT N'Creating index [FK_StudentDisability_DisabilityDescriptor] on [edfi].[StudentDisability]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentDisability_DisabilityDescriptor] ON [edfi].[StudentDisability] ([DisabilityDescriptorId])
GO
PRINT N'Creating index [FK_StudentDisability_DisabilityDeterminationSourceType] on [edfi].[StudentDisability]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentDisability_DisabilityDeterminationSourceType] ON [edfi].[StudentDisability] ([DisabilityDeterminationSourceTypeId])
GO
PRINT N'Creating index [FK_StudentDisability_Student] on [edfi].[StudentDisability]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentDisability_Student] ON [edfi].[StudentDisability] ([StudentUSI])
GO

PRINT N'Adding constraints to [edfi].[StudentDisability]'
GO
ALTER TABLE [edfi].[StudentDisability] ADD CONSTRAINT [StudentDisability_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

