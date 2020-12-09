-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StateEducationAgencyFederalFunds_PK] on [edfi].[StateEducationAgencyFederalFunds]'
GO
ALTER TABLE [edfi].[StateEducationAgencyFederalFunds] ADD CONSTRAINT [StateEducationAgencyFederalFunds_PK] PRIMARY KEY CLUSTERED  ([StateEducationAgencyId], [FiscalYear])
GO
PRINT N'Creating index [UX_StateEducationAgencyFederalFunds_Id] on [edfi].[StateEducationAgencyFederalFunds]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_StateEducationAgencyFederalFunds_Id] ON [edfi].[StateEducationAgencyFederalFunds] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO
PRINT N'Creating index [FK_StateEducationAgencyFederalFunds_StateEducationAgency] on [edfi].[StateEducationAgencyFederalFunds]'
GO
CREATE NONCLUSTERED INDEX [FK_StateEducationAgencyFederalFunds_StateEducationAgency] ON [edfi].[StateEducationAgencyFederalFunds] ([StateEducationAgencyId])
GO

PRINT N'Adding constraints to [edfi].[StateEducationAgencyFederalFunds]'
GO
ALTER TABLE [edfi].[StateEducationAgencyFederalFunds] ADD CONSTRAINT [StateEducationAgencyFederalFunds_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[StateEducationAgencyFederalFunds] ADD CONSTRAINT [StateEducationAgencyFederalFunds_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[StateEducationAgencyFederalFunds] ADD CONSTRAINT [StateEducationAgencyFederalFunds_DF_Id] DEFAULT (newid()) FOR [Id]
GO

