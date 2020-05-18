-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

INSERT INTO edfi.Descriptor ([Namespace], CodeValue, ShortDescription, [Description])
VALUES ('uri://ed-fi.org/GradePointAverageTypeDescriptor', 'Weighted', 'Weighted', 'Weighted');

INSERT INTO edfi.Descriptor ([Namespace], CodeValue, ShortDescription, [Description])
VALUES ('uri://ed-fi.org/GradePointAverageTypeDescriptor', 'Unweighted', 'Unweighted', 'Unweighted');

INSERT INTO edfi.GradePointAverageTypeDescriptor
SELECT DescriptorId FROM edfi.Descriptor
WHERE [Namespace] = 'uri://ed-fi.org/GradePointAverageTypeDescriptor';
