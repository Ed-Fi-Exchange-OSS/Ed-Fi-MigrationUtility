-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [CohortYearTypeDescriptor_PK] on [edfi].[CohortYearTypeDescriptor]'
GO
ALTER TABLE [edfi].[CohortYearTypeDescriptor] ADD CONSTRAINT [CohortYearTypeDescriptor_PK] PRIMARY KEY CLUSTERED  ([CohortYearTypeDescriptorId])
GO
