-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Updating [edfi].[EducationContentDerivativeSourceURI]'
GO

ALTER TABLE [edfi].[EducationContentDerivativeSourceURI]
ADD [DerivativeSourceURI] [nvarchar] (255) NULL
GO

UPDATE [edfi].[EducationContentDerivativeSourceURI]
SET [DerivativeSourceURI] = [URI]
GO

ALTER TABLE [edfi].[EducationContentDerivativeSourceURI]
ALTER COLUMN [DerivativeSourceURI] [nvarchar] (255) NOT NULL
GO

ALTER TABLE [edfi].[EducationContentDerivativeSourceURI]
DROP COLUMN [URI]
GO