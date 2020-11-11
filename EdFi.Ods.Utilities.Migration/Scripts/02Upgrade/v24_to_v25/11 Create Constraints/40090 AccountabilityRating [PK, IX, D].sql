-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [AccountabilityRating_PK] on [edfi].[AccountabilityRating]'
GO
ALTER TABLE [edfi].[AccountabilityRating] ADD CONSTRAINT [AccountabilityRating_PK] PRIMARY KEY CLUSTERED  ([RatingTitle], [EducationOrganizationId], [SchoolYear])
GO
PRINT N'Creating index [UX_AccountabilityRating_Id] on [edfi].[AccountabilityRating]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_AccountabilityRating_Id] ON [edfi].[AccountabilityRating] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO
PRINT N'Creating index [FK_AccountabilityRating_EducationOrganization] on [edfi].[AccountabilityRating]'
GO
CREATE NONCLUSTERED INDEX [FK_AccountabilityRating_EducationOrganization] ON [edfi].[AccountabilityRating] ([EducationOrganizationId])
GO
PRINT N'Creating index [FK_AccountabilityRating_SchoolYearType] on [edfi].[AccountabilityRating]'
GO
CREATE NONCLUSTERED INDEX [FK_AccountabilityRating_SchoolYearType] ON [edfi].[AccountabilityRating] ([SchoolYear])
GO

PRINT N'Adding constraints to [edfi].[AccountabilityRating]'
GO
ALTER TABLE [edfi].[AccountabilityRating] ADD CONSTRAINT [AccountabilityRating_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[AccountabilityRating] ADD CONSTRAINT [AccountabilityRating_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[AccountabilityRating] ADD CONSTRAINT [AccountabilityRating_DF_Id] DEFAULT (newid()) FOR [Id]
GO

