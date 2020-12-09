-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [RestraintEventReason_PK] on [edfi].[RestraintEventReason]'
GO
ALTER TABLE [edfi].[RestraintEventReason] ADD CONSTRAINT [RestraintEventReason_PK] PRIMARY KEY CLUSTERED  ([RestraintEventIdentifier], [RestraintEventReasonDescriptorId], [SchoolId], [StudentUSI])
GO

PRINT N'Creating index [FK_RestraintEventReason_RestraintEvent] on [edfi].[RestraintEventReason]'
GO
CREATE NONCLUSTERED INDEX [FK_RestraintEventReason_RestraintEvent] ON [edfi].[RestraintEventReason] ([RestraintEventIdentifier], [SchoolId], [StudentUSI])
GO

PRINT N'Creating index [FK_RestraintEventReason_RestraintEventReasonDescriptor] on [edfi].[RestraintEventReason]'
GO
CREATE NONCLUSTERED INDEX [FK_RestraintEventReason_RestraintEventReasonDescriptor] ON [edfi].[RestraintEventReason] ([RestraintEventReasonDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[RestraintEventReason]'
GO
ALTER TABLE [edfi].[RestraintEventReason] ADD CONSTRAINT [RestraintEventReason_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
