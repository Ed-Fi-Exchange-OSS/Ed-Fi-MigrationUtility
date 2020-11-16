-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [EducationContentAppropriateSex_PK] on [edfi].[EducationContentAppropriateSex]'
GO
ALTER TABLE [edfi].[EducationContentAppropriateSex] ADD CONSTRAINT [EducationContentAppropriateSex_PK] PRIMARY KEY CLUSTERED  ([ContentIdentifier], [SexTypeId])
GO
PRINT N'Creating index [FK_EducationContentAppropriateSex_EducationContent] on [edfi].[EducationContentAppropriateSex]'
GO
CREATE NONCLUSTERED INDEX [FK_EducationContentAppropriateSex_EducationContent] ON [edfi].[EducationContentAppropriateSex] ([ContentIdentifier])
GO
PRINT N'Creating index [FK_EducationContentAppropriateSex_SexType] on [edfi].[EducationContentAppropriateSex]'
GO
CREATE NONCLUSTERED INDEX [FK_EducationContentAppropriateSex_SexType] ON [edfi].[EducationContentAppropriateSex] ([SexTypeId])
GO

PRINT N'Adding constraints to [edfi].[EducationContentAppropriateSex]'
GO
ALTER TABLE [edfi].[EducationContentAppropriateSex] ADD CONSTRAINT [EducationContentAppropriateSex_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

