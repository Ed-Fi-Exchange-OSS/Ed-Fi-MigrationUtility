-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [InstitutionTelephoneNumberType_PK] on [edfi].[InstitutionTelephoneNumberType]'
GO
ALTER TABLE [edfi].[InstitutionTelephoneNumberType] ADD CONSTRAINT [InstitutionTelephoneNumberType_PK] PRIMARY KEY CLUSTERED  ([InstitutionTelephoneNumberTypeId])
GO
PRINT N'Creating index [UX_InstitutionTelephoneNumberType_Id] on [edfi].[InstitutionTelephoneNumberType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_InstitutionTelephoneNumberType_Id] ON [edfi].[InstitutionTelephoneNumberType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[InstitutionTelephoneNumberType]'
GO
ALTER TABLE [edfi].[InstitutionTelephoneNumberType] ADD CONSTRAINT [InstitutionTelephoneNumberType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[InstitutionTelephoneNumberType] ADD CONSTRAINT [InstitutionTelephoneNumberType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[InstitutionTelephoneNumberType] ADD CONSTRAINT [InstitutionTelephoneNumberType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

