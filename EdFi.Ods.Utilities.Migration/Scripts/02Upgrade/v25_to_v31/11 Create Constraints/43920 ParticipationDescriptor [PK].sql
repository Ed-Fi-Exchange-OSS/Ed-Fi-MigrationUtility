-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [ParticipationDescriptor_PK] on [edfi].[ParticipationDescriptor]'
GO
ALTER TABLE [edfi].[ParticipationDescriptor] ADD CONSTRAINT [ParticipationDescriptor_PK] PRIMARY KEY CLUSTERED  ([ParticipationDescriptorId])
GO
