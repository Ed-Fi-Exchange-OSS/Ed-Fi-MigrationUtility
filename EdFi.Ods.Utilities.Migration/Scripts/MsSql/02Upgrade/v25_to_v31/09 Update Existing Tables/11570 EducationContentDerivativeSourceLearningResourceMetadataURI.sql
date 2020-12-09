-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Updating [edfi].[EducationContentDerivativeSourceLearningResourceMetadataURI]'
GO

ALTER TABLE [edfi].[EducationContentDerivativeSourceLearningResourceMetadataURI]
ADD [DerivativeSourceLearningResourceMetadataURI] [nvarchar] (255) NULL
GO

UPDATE [edfi].[EducationContentDerivativeSourceLearningResourceMetadataURI]
SET [DerivativeSourceLearningResourceMetadataURI] = [LearningResourceMetadataURI]
GO

ALTER TABLE [edfi].[EducationContentDerivativeSourceLearningResourceMetadataURI]
ALTER COLUMN [DerivativeSourceLearningResourceMetadataURI] [nvarchar] (255) NOT NULL
GO

ALTER TABLE [edfi].[EducationContentDerivativeSourceLearningResourceMetadataURI]
DROP COLUMN [LearningResourceMetadataURI]
GO