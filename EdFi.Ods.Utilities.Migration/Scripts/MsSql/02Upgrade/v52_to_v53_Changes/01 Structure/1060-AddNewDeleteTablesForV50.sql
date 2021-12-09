-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

CREATE TABLE [tracked_deletes_edfi].[BarrierToInternetAccessInResidenceDescriptor] (
    [BarrierToInternetAccessInResidenceDescriptorId] INT              NOT NULL,
    [Id]                                             UNIQUEIDENTIFIER NOT NULL,
    [ChangeVersion]                                  BIGINT           NOT NULL,
    CONSTRAINT [PK_BarrierToInternetAccessInResidenceDescriptor] PRIMARY KEY CLUSTERED ([ChangeVersion] ASC)
);
GO

CREATE TABLE [tracked_deletes_edfi].[InternetAccessTypeInResidenceDescriptor] (
    [InternetAccessTypeInResidenceDescriptorId] INT              NOT NULL,
    [Id]                                        UNIQUEIDENTIFIER NOT NULL,
    [ChangeVersion]                             BIGINT           NOT NULL,
    CONSTRAINT [PK_InternetAccessTypeInResidenceDescriptor] PRIMARY KEY CLUSTERED ([ChangeVersion] ASC)
);
GO

CREATE TABLE [tracked_deletes_edfi].[InternetPerformanceInResidenceDescriptor] (
    [InternetPerformanceInResidenceDescriptorId] INT              NOT NULL,
    [Id]                                         UNIQUEIDENTIFIER NOT NULL,
    [ChangeVersion]                              BIGINT           NOT NULL,
    CONSTRAINT [PK_InternetPerformanceInResidenceDescriptor] PRIMARY KEY CLUSTERED ([ChangeVersion] ASC)
);
GO

CREATE TABLE [tracked_deletes_edfi].[PrimaryLearningDeviceAccessDescriptor] (
    [PrimaryLearningDeviceAccessDescriptorId] INT              NOT NULL,
    [Id]                                      UNIQUEIDENTIFIER NOT NULL,
    [ChangeVersion]                           BIGINT           NOT NULL,
    CONSTRAINT [PK_PrimaryLearningDeviceAccessDescriptor] PRIMARY KEY CLUSTERED ([ChangeVersion] ASC)
);
GO

CREATE TABLE [tracked_deletes_edfi].[PrimaryLearningDeviceAwayFromSchoolDescriptor] (
    [PrimaryLearningDeviceAwayFromSchoolDescriptorId] INT              NOT NULL,
    [Id]                                              UNIQUEIDENTIFIER NOT NULL,
    [ChangeVersion]                                   BIGINT           NOT NULL,
    CONSTRAINT [PK_PrimaryLearningDeviceAwayFromSchoolDescriptor] PRIMARY KEY CLUSTERED ([ChangeVersion] ASC)
);
GO

CREATE TABLE [tracked_deletes_edfi].[PrimaryLearningDeviceProviderDescriptor] (
    [PrimaryLearningDeviceProviderDescriptorId] INT              NOT NULL,
    [Id]                                        UNIQUEIDENTIFIER NOT NULL,
    [ChangeVersion]                             BIGINT           NOT NULL,
    CONSTRAINT [PK_PrimaryLearningDeviceProviderDescriptor] PRIMARY KEY CLUSTERED ([ChangeVersion] ASC)
);
GO

