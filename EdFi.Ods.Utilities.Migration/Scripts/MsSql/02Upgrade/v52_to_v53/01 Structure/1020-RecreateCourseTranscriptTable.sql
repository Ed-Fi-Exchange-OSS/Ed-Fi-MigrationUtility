-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

ALTER TABLE [edfi].[CourseTranscript] ADD
[ExternalEducationOrganizationNameOfInstitution] [nvarchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
GO
