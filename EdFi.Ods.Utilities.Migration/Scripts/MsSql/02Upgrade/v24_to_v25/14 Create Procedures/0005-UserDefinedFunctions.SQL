-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[util].[Split]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'

CREATE FUNCTION [util].[Split](@String nvarchar(MAX), @Delimiter nvarchar(1)) 
RETURNS @Tokens table (Id int identity(1, 1), Token nvarchar(max)) 
AS
BEGIN
	WHILE(CHARINDEX(@Delimiter, @String) > 0)
	BEGIN 
		INSERT INTO @Tokens(Token) 
		SELECT LEFT(@String, ISNULL(NULLIF(CHARINDEX(@Delimiter, @String) -1, -1), LEN(@String)))
		
		SELECT @String = CASE WHEN CHARINDEX(@Delimiter, @String) > 0 THEN SUBSTRING(@String, CHARINDEX(@Delimiter, @String) + 1, LEN(@String)) ELSE '''' END
	END

	INSERT INTO @Tokens(Token) 
	SELECT @String
	
	UPDATE @Tokens
	SET Token = LTRIM(RTRIM(Token))

	RETURN
END

--' 
END

GO
