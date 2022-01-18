-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

CREATE TABLE tracked_deletes_edfi.BarrierToInternetAccessInResidenceDescriptor
(
       BarrierToInternetAccessInResidenceDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT BarrierToInternetAccessInResidenceDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_edfi.InternetAccessTypeInResidenceDescriptor
(
       InternetAccessTypeInResidenceDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT InternetAccessTypeInResidenceDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_edfi.InternetPerformanceInResidenceDescriptor
(
       InternetPerformanceInResidenceDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT InternetPerformanceInResidenceDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_edfi.PrimaryLearningDeviceAccessDescriptor
(
       PrimaryLearningDeviceAccessDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT PrimaryLearningDeviceAccessDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_edfi.PrimaryLearningDeviceAwayFromSchoolDescriptor
(
       PrimaryLearningDeviceAwayFromSchoolDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT PrimaryLearningDeviceAwayFromSchoolDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_edfi.PrimaryLearningDeviceProviderDescriptor
(
       PrimaryLearningDeviceProviderDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT PrimaryLearningDeviceProviderDescriptor_PK PRIMARY KEY (ChangeVersion)
);
