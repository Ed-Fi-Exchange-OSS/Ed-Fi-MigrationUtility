-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [SchoolFoodServicesEligibilityDescriptor_PK] on [edfi].[SchoolFoodServicesEligibilityDescriptor]'
GO
ALTER TABLE [edfi].[SchoolFoodServicesEligibilityDescriptor] ADD CONSTRAINT [SchoolFoodServicesEligibilityDescriptor_PK] PRIMARY KEY CLUSTERED  ([SchoolFoodServicesEligibilityDescriptorId])
GO
PRINT N'Creating index [FK_SchoolFoodServicesEligibilityDescriptor_Descriptor] on [edfi].[SchoolFoodServicesEligibilityDescriptor]'
GO
CREATE NONCLUSTERED INDEX [FK_SchoolFoodServicesEligibilityDescriptor_Descriptor] ON [edfi].[SchoolFoodServicesEligibilityDescriptor] ([SchoolFoodServicesEligibilityDescriptorId])
GO
PRINT N'Creating index [FK_SchoolFoodServicesEligibilityDescriptor_SchoolFoodServicesEligibilityType] on [edfi].[SchoolFoodServicesEligibilityDescriptor]'
GO
CREATE NONCLUSTERED INDEX [FK_SchoolFoodServicesEligibilityDescriptor_SchoolFoodServicesEligibilityType] ON [edfi].[SchoolFoodServicesEligibilityDescriptor] ([SchoolFoodServicesEligibilityTypeId])
GO

