-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentIndicator_PK] on [edfi].[StudentIndicator]'
GO
ALTER TABLE [edfi].[StudentIndicator] ADD CONSTRAINT [StudentIndicator_PK] PRIMARY KEY CLUSTERED  ([StudentUSI], [IndicatorName])
GO
PRINT N'Creating index [FK_StudentIndicator_Student] on [edfi].[StudentIndicator]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentIndicator_Student] ON [edfi].[StudentIndicator] ([StudentUSI])
GO

PRINT N'Adding constraints to [edfi].[StudentIndicator]'
GO
ALTER TABLE [edfi].[StudentIndicator] ADD CONSTRAINT [StudentIndicator_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

