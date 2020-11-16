-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[LocalEducationAgencyFederalFunds]'
GO
ALTER TABLE [edfi].[LocalEducationAgencyFederalFunds] ADD CONSTRAINT [FK_LocalEducationAgencyFederalFunds_LocalEducationAgency] FOREIGN KEY ([LocalEducationAgencyId]) REFERENCES [edfi].[LocalEducationAgency] ([LocalEducationAgencyId]) ON DELETE CASCADE
GO
