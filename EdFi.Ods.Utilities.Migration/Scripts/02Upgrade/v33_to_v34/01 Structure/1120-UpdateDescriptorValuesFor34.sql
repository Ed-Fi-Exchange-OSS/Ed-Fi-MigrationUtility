-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

DECLARE @oldUnWeighted INT, 
		@newUnWeighted INT, 
		@oldWeighted INT,  
		@newWeighted INT;

SELECT @oldUnWeighted = (SELECT DescriptorId FROM edfi.Descriptor WHERE [Namespace]='uri://ed-fi.org/GradePointAverageWeightSystemDescriptor' and CodeValue='UnWeighted');
SELECT @oldWeighted = (SELECT DescriptorId FROM edfi.Descriptor WHERE [Namespace]='uri://ed-fi.org/GradePointAverageWeightSystemDescriptor' and CodeValue='Weighted');

SELECT @newUnWeighted = (SELECT DescriptorId FROM edfi.Descriptor WHERE [Namespace]='uri://ed-fi.org/GradePointAverageTypeDescriptor' and CodeValue='UnWeighted');
SELECT @newWeighted = (SELECT DescriptorId FROM edfi.Descriptor WHERE [Namespace]='uri://ed-fi.org/GradePointAverageTypeDescriptor' and CodeValue='Weighted');

UPDATE [edfi].[ReportCardGradePointAverage]
SET GradePointAverageTypeDescriptorId = @newUnWeighted
WHERE GradePointAverageWeightSystemDescriptorId = @oldUnWeighted;

UPDATE [edfi].[ReportCardGradePointAverage]
SET GradePointAverageTypeDescriptorId = @newWeighted
WHERE GradePointAverageWeightSystemDescriptorId = @oldWeighted;

UPDATE [edfi].[StudentAcademicRecordGradePointAverage]
SET GradePointAverageTypeDescriptorId = @newUnWeighted
WHERE GradePointAverageWeightSystemDescriptorId = @oldUnWeighted;

UPDATE [edfi].[StudentAcademicRecordGradePointAverage]
SET GradePointAverageTypeDescriptorId = @newWeighted
WHERE GradePointAverageWeightSystemDescriptorId = @oldWeighted;
GO