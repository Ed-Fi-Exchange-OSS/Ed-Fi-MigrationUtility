-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

--  Alter Table edfi.Parent---
ALTER TABLE edfi.Parent
    ADD CONSTRAINT fk_5f7953_person FOREIGN KEY (PersonId, SourceSystemDescriptorId) REFERENCES edfi.Person (PersonId, SourceSystemDescriptorId);

CREATE INDEX fk_5f7953_person
    ON edfi.Parent(PersonId, SourceSystemDescriptorId);

--  Alter Table edfi.Staff---
ALTER TABLE edfi.Staff
    ADD CONSTRAINT fk_681927_person FOREIGN KEY (PersonId, SourceSystemDescriptorId) REFERENCES edfi.Person (PersonId, SourceSystemDescriptorId);

CREATE INDEX fk_681927_person
    ON edfi.Staff(PersonId, SourceSystemDescriptorId);

--  Alter Table edfi.Student---
ALTER TABLE edfi.Student
    ADD CONSTRAINT fk_2a164d_person FOREIGN KEY (PersonId, SourceSystemDescriptorId) REFERENCES edfi.Person (PersonId, SourceSystemDescriptorId);

CREATE INDEX fk_2a164d_person
    ON edfi.Student(PersonId, SourceSystemDescriptorId);