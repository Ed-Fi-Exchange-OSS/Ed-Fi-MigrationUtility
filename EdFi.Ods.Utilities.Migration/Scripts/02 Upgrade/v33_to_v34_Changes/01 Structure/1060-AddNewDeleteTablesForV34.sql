-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

CREATE TABLE tracked_deletes_edfi.CreditCategoryDescriptor
(
    CreditCategoryDescriptorId [INT] NOT NULL,
    Id uniqueidentifier NOT NULL,
    ChangeVersion bigint NOT NULL,
    CONSTRAINT PK_CreditCategoryDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
);

CREATE TABLE tracked_deletes_edfi.GradePointAverageTypeDescriptor
(
    GradePointAverageTypeDescriptorId [INT] NOT NULL,
    Id uniqueidentifier NOT NULL,
    ChangeVersion bigint NOT NULL,
    CONSTRAINT PK_GradePointAverageTypeDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
);
