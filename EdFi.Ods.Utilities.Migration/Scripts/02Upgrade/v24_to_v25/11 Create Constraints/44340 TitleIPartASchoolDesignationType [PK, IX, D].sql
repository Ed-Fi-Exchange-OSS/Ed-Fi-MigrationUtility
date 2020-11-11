-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [TitleIPartASchoolDesignationType_PK] on [edfi].[TitleIPartASchoolDesignationType]'
GO
ALTER TABLE [edfi].[TitleIPartASchoolDesignationType] ADD CONSTRAINT [TitleIPartASchoolDesignationType_PK] PRIMARY KEY CLUSTERED  ([TitleIPartASchoolDesignationTypeId])
GO
PRINT N'Creating index [UX_TitleIPartASchoolDesignationType_Id] on [edfi].[TitleIPartASchoolDesignationType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_TitleIPartASchoolDesignationType_Id] ON [edfi].[TitleIPartASchoolDesignationType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[TitleIPartASchoolDesignationType]'
GO
ALTER TABLE [edfi].[TitleIPartASchoolDesignationType] ADD CONSTRAINT [TitleIPartASchoolDesignationType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[TitleIPartASchoolDesignationType] ADD CONSTRAINT [TitleIPartASchoolDesignationType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[TitleIPartASchoolDesignationType] ADD CONSTRAINT [TitleIPartASchoolDesignationType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

