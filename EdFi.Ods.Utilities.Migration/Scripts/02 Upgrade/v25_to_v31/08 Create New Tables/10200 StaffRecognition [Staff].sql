-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating [edfi].[StaffRecognition]'
GO

CREATE TABLE [edfi].[StaffRecognition]
(
[RecognitionTypeDescriptorId] [int] NOT NULL,
[StaffUSI] [int] NOT NULL,
[AchievementTitle] [nvarchar] (60) NULL,
[AchievementCategoryDescriptorId] [int] NULL,
[AchievementCategorySystem] [nvarchar] (60) NULL,
[IssuerName] [nvarchar] (150) NULL,
[IssuerOriginURL] [nvarchar] (255) NULL,
[Criteria] [nvarchar] (150) NULL,
[CriteriaURL] [nvarchar] (255) NULL,
[EvidenceStatement] [nvarchar] (150) NULL,
[ImageURL] [nvarchar] (255) NULL,
[RecognitionDescription] [nvarchar] (80) NULL,
[RecognitionAwardDate] [date] NULL,
[RecognitionAwardExpiresDate] [date] NULL,
[CreateDate] [datetime] NOT NULL
)
GO

