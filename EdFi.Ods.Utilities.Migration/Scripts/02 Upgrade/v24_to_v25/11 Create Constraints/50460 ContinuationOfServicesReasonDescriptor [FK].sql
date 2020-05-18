-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[ContinuationOfServicesReasonDescriptor]'
GO
ALTER TABLE [edfi].[ContinuationOfServicesReasonDescriptor] ADD CONSTRAINT [FK_ContinuationOfServicesReasonDescriptor_ContinuationOfServicesReasonType] FOREIGN KEY ([ContinuationOfServicesReasonTypeId]) REFERENCES [edfi].[ContinuationOfServicesReasonType] ([ContinuationOfServicesReasonTypeId])
GO
ALTER TABLE [edfi].[ContinuationOfServicesReasonDescriptor] ADD CONSTRAINT [FK_ContinuationOfServicesReasonDescriptor_Descriptor] FOREIGN KEY ([ContinuationOfServicesReasonDescriptorId]) REFERENCES [edfi].[Descriptor] ([DescriptorId]) ON DELETE CASCADE
GO
