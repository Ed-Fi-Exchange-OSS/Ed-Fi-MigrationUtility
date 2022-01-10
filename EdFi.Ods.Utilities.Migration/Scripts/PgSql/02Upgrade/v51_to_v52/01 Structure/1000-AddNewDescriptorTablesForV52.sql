-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

CREATE TABLE edfi.AncestryEthnicOriginDescriptor (
    AncestryEthnicOriginDescriptorId INT NOT NULL,
    CONSTRAINT AncestryEthnicOriginDescriptor_PK PRIMARY KEY (AncestryEthnicOriginDescriptorId),
    CONSTRAINT fk_a21217_descriptor FOREIGN KEY (AncestryEthnicOriginDescriptorId) REFERENCES edfi.Descriptor (DescriptorId) ON DELETE CASCADE
);

