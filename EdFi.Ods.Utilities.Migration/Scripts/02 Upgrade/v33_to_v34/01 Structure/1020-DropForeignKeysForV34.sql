-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

ALTER TABLE [edfi].[GradePointAverageWeightSystemDescriptor]
    DROP CONSTRAINT [FK_GradePointAverageWeightSystemDescriptor_Descriptor];
GO

DROP INDEX IF EXISTS [FK_ReportCardGradePointAverage_GradePointAverageWeightSystemDescriptor]
 ON [edfi].[ReportCardGradePointAverage];
GO

ALTER TABLE [edfi].[ReportCardGradePointAverage] 
	DROP CONSTRAINT [FK_ReportCardGradePointAverage_GradePointAverageWeightSystemDescriptor];
GO

DROP INDEX IF EXISTS [FK_StudentAcademicRecordGradePointAverage_GradePointAverageWeightSystemDescriptor]
    ON [edfi].[StudentAcademicRecordGradePointAverage];
GO

ALTER TABLE [edfi].[StudentAcademicRecordGradePointAverage] DROP CONSTRAINT [FK_StudentAcademicRecordGradePointAverage_GradePointAverageWeightSystemDescriptor]
GO

