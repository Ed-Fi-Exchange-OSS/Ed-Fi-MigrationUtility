-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

--  Alter Table edfi.Parent---
ALTER TABLE edfi.Parent 
    ADD CONSTRAINT FK_Parent_Person FOREIGN KEY (PersonId, SourceSystemDescriptorId) REFERENCES edfi.Person (PersonId, SourceSystemDescriptorId);

CREATE INDEX FK_Parent_Person
    ON edfi.Parent(PersonId, SourceSystemDescriptorId);

--  Alter Table edfi.Staff---
ALTER TABLE edfi.Staff 
    ADD CONSTRAINT FK_Staff_Person FOREIGN KEY (PersonId, SourceSystemDescriptorId) REFERENCES edfi.Person (PersonId, SourceSystemDescriptorId);

CREATE INDEX FK_Staff_Person
    ON edfi.Staff(PersonId, SourceSystemDescriptorId);

--  Alter Table edfi.Student---
ALTER TABLE edfi.Student 
    ADD CONSTRAINT FK_Student_Person FOREIGN KEY (PersonId, SourceSystemDescriptorId) REFERENCES edfi.Person (PersonId, SourceSystemDescriptorId);

CREATE INDEX FK_Student_Person
    ON edfi.Student(PersonId, SourceSystemDescriptorId);