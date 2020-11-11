-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Dropping [edfi].[EducationContentDerivativeSourceEducationContent_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[EducationContentDerivativeSourceEducationContent] DROP CONSTRAINT [EducationContentDerivativeSourceEducationContent_DF_CreateDate];


GO
PRINT N'Altering [edfi].[EducationContentDerivativeSourceEducationContent]...';


GO
ALTER TABLE [edfi].[EducationContentDerivativeSourceEducationContent] ALTER COLUMN [CreateDate] DATETIME2 (7) NOT NULL;


GO
PRINT N'Creating [edfi].[EducationContentDerivativeSourceEducationContent_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[EducationContentDerivativeSourceEducationContent]
    ADD CONSTRAINT [EducationContentDerivativeSourceEducationContent_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
