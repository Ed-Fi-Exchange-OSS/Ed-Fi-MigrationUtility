-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating [edfi].[CommunityProviderLicense]'

CREATE TABLE [edfi].[CommunityProviderLicense]
(
[CommunityProviderId] [int] NOT NULL,
[LicenseIdentifier] [nvarchar] (20) NOT NULL,
[LicensingOrganization] [nvarchar] (75) NOT NULL,
[LicenseEffectiveDate] [date] NOT NULL,
[LicenseExpirationDate] [date] NULL,
[LicenseIssueDate] [date] NULL,
[LicenseStatusDescriptorId] [int] NULL,
[LicenseTypeDescriptorId] [int] NOT NULL,
[AuthorizedFacilityCapacity] [int] NULL,
[OldestAgeAuthorizedToServe] [int] NULL,
[YoungestAgeAuthorizedToServe] [int] NULL,
[CreateDate] [datetime] NOT NULL,
[LastModifiedDate] [datetime] NOT NULL,
[Id] [uniqueidentifier] NOT NULL
)
GO
