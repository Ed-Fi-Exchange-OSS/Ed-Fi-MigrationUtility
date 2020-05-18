-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

ALTER TABLE [edfi].[CourseIdentificationCode]
    ADD [CourseCatalogURL] [NVARCHAR](255) NULL;
GO

ALTER TABLE [edfi].[CourseTranscript]
    ADD [AssigningOrganizationIdentificationCode] [NVARCHAR](60) NULL,
        [CourseCatalogURL] [NVARCHAR](255) NULL;
GO

ALTER TABLE [edfi].[ReportCardGradePointAverage]
    ADD [GradePointAverageTypeDescriptorId] [INT] NULL,
        [MaxGradePointAverageValue] [DECIMAL](18, 4) NULL;
GO

ALTER TABLE [edfi].[ReportCardGradePointAverage]
    ALTER COLUMN [IsCumulative] [BIT] NULL;
GO

ALTER TABLE [edfi].[Section]
    ADD [SectionName] [NVARCHAR](100) NULL;
GO

ALTER TABLE [edfi].[StudentAcademicRecordGradePointAverage]
    ADD [GradePointAverageTypeDescriptorId] [INT] NULL,
        [MaxGradePointAverageValue] [DECIMAL](18, 4) NULL;
GO

ALTER TABLE [edfi].[StudentAcademicRecordGradePointAverage]
    ALTER COLUMN [IsCumulative] [BIT] NULL;
GO
