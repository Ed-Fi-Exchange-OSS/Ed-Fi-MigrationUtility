-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[RestraintEventReason]'
GO
ALTER TABLE [edfi].[RestraintEventReason] ADD CONSTRAINT [FK_RestraintEventReason_RestraintEvent] FOREIGN KEY ([RestraintEventIdentifier], [SchoolId], [StudentUSI]) REFERENCES [edfi].[RestraintEvent] ([RestraintEventIdentifier], [SchoolId], [StudentUSI]) ON DELETE CASCADE
GO
ALTER TABLE [edfi].[RestraintEventReason] ADD CONSTRAINT [FK_RestraintEventReason_RestraintEventReasonDescriptor] FOREIGN KEY ([RestraintEventReasonDescriptorId]) REFERENCES [edfi].[RestraintEventReasonDescriptor] ([RestraintEventReasonDescriptorId])
GO
