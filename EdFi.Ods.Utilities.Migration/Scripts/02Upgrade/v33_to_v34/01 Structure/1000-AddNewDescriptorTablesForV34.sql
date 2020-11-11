-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

CREATE TABLE [edfi].[CreditCategoryDescriptor] (
    [CreditCategoryDescriptorId] [INT] NOT NULL,
    CONSTRAINT [CreditCategoryDescriptor_PK] PRIMARY KEY CLUSTERED (
        [CreditCategoryDescriptorId] ASC
    )
);
GO

-- Table [edfi].[GradePointAverageTypeDescriptor] --
CREATE TABLE [edfi].[GradePointAverageTypeDescriptor] (
    [GradePointAverageTypeDescriptorId] [INT] NOT NULL,
    CONSTRAINT [GradePointAverageTypeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [GradePointAverageTypeDescriptorId] ASC
    )
);
GO