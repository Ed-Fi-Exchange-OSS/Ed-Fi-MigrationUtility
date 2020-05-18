-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Dropping [edfi].[StudentCTEProgramAssociationService_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentCTEProgramAssociationService] DROP CONSTRAINT [StudentCTEProgramAssociationService_DF_CreateDate];


GO
PRINT N'Altering [edfi].[StudentCTEProgramAssociationService]...';


GO
ALTER TABLE [edfi].[StudentCTEProgramAssociationService] ALTER COLUMN [CreateDate] DATETIME2 (7) NOT NULL;


GO
PRINT N'Creating [edfi].[StudentCTEProgramAssociationService_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentCTEProgramAssociationService]
    ADD CONSTRAINT [StudentCTEProgramAssociationService_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
