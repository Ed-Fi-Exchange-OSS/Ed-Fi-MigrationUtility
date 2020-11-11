-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [CourseGPAApplicabilityType_PK] on [edfi].[CourseGPAApplicabilityType]'
GO
ALTER TABLE [edfi].[CourseGPAApplicabilityType] ADD CONSTRAINT [CourseGPAApplicabilityType_PK] PRIMARY KEY CLUSTERED  ([CourseGPAApplicabilityTypeId])
GO
PRINT N'Creating index [UX_CourseGPAApplicabilityType_Id] on [edfi].[CourseGPAApplicabilityType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_CourseGPAApplicabilityType_Id] ON [edfi].[CourseGPAApplicabilityType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[CourseGPAApplicabilityType]'
GO
ALTER TABLE [edfi].[CourseGPAApplicabilityType] ADD CONSTRAINT [CourseGPAApplicabilityType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[CourseGPAApplicabilityType] ADD CONSTRAINT [CourseGPAApplicabilityType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[CourseGPAApplicabilityType] ADD CONSTRAINT [CourseGPAApplicabilityType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

