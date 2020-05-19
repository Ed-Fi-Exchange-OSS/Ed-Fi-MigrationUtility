-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Updating [edfi].[SchoolYearType]'
GO

DECLARE @EdFiSchoolYearTypes TABLE
(
	[SchoolYear] [SMALLINT] NOT NULL PRIMARY KEY,
	[SchoolYearDescription] [NVARCHAR](50) NOT NULL
)

INSERT @EdFiSchoolYearTypes ([SchoolYear], [SchoolYearDescription])
VALUES
(1990, N'1989-1990'),
(1991, N'1990-1991'),
(1992, N'1991-1992'),
(1993, N'1992-1993'),
(1994, N'1993-1994'),
(1995, N'1994-1995'),
(1996, N'1995-1996'),
(1997, N'1996-1997'),
(1998, N'1997-1998'),
(1999, N'1998-1999'),
(2000, N'1999-2000'),
(2001, N'2000-2001'),
(2002, N'2001-2002'),
(2003, N'2002-2003'),
(2004, N'2003-2004'),
(2005, N'2004-2005'),
(2006, N'2005-2006'),
(2007, N'2006-2007'),
(2008, N'2007-2008'),
(2009, N'2008-2009'),
(2010, N'2009-2010'),
(2011, N'2010-2011'),
(2012, N'2011-2012'),
(2013, N'2012-2013'),
(2014, N'2013-2014'),
(2015, N'2014-2015'),
(2016, N'2015-2016'),
(2017, N'2016-2017'),
(2018, N'2017-2018'),
(2019, N'2018-2019'),
(2020, N'2019-2020'),
(2021, N'2020-2021'),
(2022, N'2021-2022'),
(2023, N'2022-2023'),
(2024, N'2023-2024'),
(2025, N'2024-2025'),
(2026, N'2025-2026'),
(2027, N'2026-2027'),
(2028, N'2027-2028'),
(2029, N'2028-2029'),
(2030, N'2029-2030'),
(2031, N'2030-2031'),
(2032, N'2031-2032'),
(2033, N'2032-2033'),
(2034, N'2033-2034'),
(2035, N'2034-2035'),
(2036, N'2035-2036'),
(2037, N'2036-2037'),
(2038, N'2037-2038'),
(2039, N'2038-2039'),
(2040, N'2039-2040'),
(2041, N'2040-2041'),
(2042, N'2041-2042'),
(2043, N'2042-2043'),
(2044, N'2043-2044'),
(2045, N'2044-2045'),
(2046, N'2045-2046'),
(2047, N'2046-2047'),
(2048, N'2047-2048'),
(2049, N'2048-2049'),
(2050, N'2049-2050')

UPDATE [edfi].[SchoolYearType]
SET
	[SchoolYearDescription] = [e].[SchoolYearDescription],
	[LastModifiedDate] = GETDATE()
FROM [edfi].[SchoolYearType] [t]
INNER JOIN @EdFiSchoolYearTypes [e]
	ON [t].[SchoolYear] = [e].[SchoolYear]
WHERE [t].[SchoolYearDescription] != [e].[SchoolYearDescription]

INSERT [edfi].[SchoolYearType]
(
	[SchoolYear], [SchoolYearDescription], [CurrentSchoolYear], [Id], [LastModifiedDate], [CreateDate]
)
SELECT
	[e].[SchoolYear], [e].[SchoolYearDescription], 0, NEWID(), GETDATE(), GETDATE()
FROM @EdFiSchoolYearTypes [e]
LEFT JOIN [edfi].[SchoolYearType] [t]
	ON [e].[SchoolYear] = [t].[SchoolYear]
WHERE [t].[SchoolYear] IS NULL
GO
