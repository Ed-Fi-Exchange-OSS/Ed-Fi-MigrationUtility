-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

IF EXISTS(SELECT * FROM edfi.SchoolYearType WHERE SchoolYear = 1990)
    UPDATE [edfi].[SchoolYearType] SET SchoolYearDescription = '1989-1990' WHERE SchoolYear = 1990;

IF NOT EXISTS(SELECT * FROM edfi.SchoolYearType WHERE SchoolYear = 1991)
    INSERT INTO [edfi].[SchoolYearType] ([SchoolYear], [SchoolYearDescription], [CurrentSchoolYear]) VALUES(1991, '1990-1991', 'false')
ELSE
    UPDATE [edfi].[SchoolYearType] SET SchoolYearDescription = '1990-1991' WHERE SchoolYear = 1991;

IF NOT EXISTS(SELECT * FROM edfi.SchoolYearType WHERE SchoolYear = 1992)
    INSERT INTO [edfi].[SchoolYearType] ([SchoolYear], [SchoolYearDescription], [CurrentSchoolYear]) VALUES(1992, '1991-1992', 'false')
ELSE
    UPDATE [edfi].[SchoolYearType] SET SchoolYearDescription = '1991-1992' WHERE SchoolYear = 1992;

IF NOT EXISTS(SELECT * FROM edfi.SchoolYearType WHERE SchoolYear = 1993)
    INSERT INTO [edfi].[SchoolYearType] ([SchoolYear], [SchoolYearDescription], [CurrentSchoolYear]) VALUES(1993, '1992-1993', 'false')
ELSE
    UPDATE [edfi].[SchoolYearType] SET SchoolYearDescription = '1992-1993' WHERE SchoolYear = 1993;

IF NOT EXISTS(SELECT * FROM edfi.SchoolYearType WHERE SchoolYear = 1994)
    INSERT INTO [edfi].[SchoolYearType] ([SchoolYear], [SchoolYearDescription], [CurrentSchoolYear]) VALUES(1994, '1993-1994', 'false')
ELSE
    UPDATE [edfi].[SchoolYearType] SET SchoolYearDescription = '1993-1994' WHERE SchoolYear = 1994;

IF NOT EXISTS(SELECT * FROM edfi.SchoolYearType WHERE SchoolYear = 1995)
    INSERT INTO [edfi].[SchoolYearType] ([SchoolYear], [SchoolYearDescription], [CurrentSchoolYear]) VALUES(1995, '1994-1995', 'false')
ELSE
    UPDATE [edfi].[SchoolYearType] SET SchoolYearDescription = '1994-1995' WHERE SchoolYear = 1995;

IF NOT EXISTS(SELECT * FROM edfi.SchoolYearType WHERE SchoolYear = 1996)
    INSERT INTO [edfi].[SchoolYearType] ([SchoolYear], [SchoolYearDescription], [CurrentSchoolYear]) VALUES(1996, '1995-1996', 'false')
ELSE
    UPDATE [edfi].[SchoolYearType] SET SchoolYearDescription = '1995-1996' WHERE SchoolYear = 1996;

IF NOT EXISTS(SELECT * FROM edfi.SchoolYearType WHERE SchoolYear = 1997)
    INSERT INTO [edfi].[SchoolYearType] ([SchoolYear], [SchoolYearDescription], [CurrentSchoolYear]) VALUES(1997, '1996-1997', 'false')
ELSE
    UPDATE [edfi].[SchoolYearType] SET SchoolYearDescription = '1996-1997' WHERE SchoolYear = 1997;

IF NOT EXISTS(SELECT * FROM edfi.SchoolYearType WHERE SchoolYear = 1998)
    INSERT INTO [edfi].[SchoolYearType] ([SchoolYear], [SchoolYearDescription], [CurrentSchoolYear]) VALUES(1998, '1997-1998', 'false')
ELSE
    UPDATE [edfi].[SchoolYearType] SET SchoolYearDescription = '1997-1998' WHERE SchoolYear = 1998;

IF NOT EXISTS(SELECT * FROM edfi.SchoolYearType WHERE SchoolYear = 1999)
    INSERT INTO [edfi].[SchoolYearType] ([SchoolYear], [SchoolYearDescription], [CurrentSchoolYear]) VALUES(1999, '1998-1999', 'false')
ELSE
    UPDATE [edfi].[SchoolYearType] SET SchoolYearDescription = '1998-1999' WHERE SchoolYear = 1999;

IF NOT EXISTS(SELECT * FROM edfi.SchoolYearType WHERE SchoolYear = 2000)
    INSERT INTO [edfi].[SchoolYearType] ([SchoolYear], [SchoolYearDescription], [CurrentSchoolYear]) VALUES(2000, '1999-2000', 'false')
ELSE
    UPDATE [edfi].[SchoolYearType] SET SchoolYearDescription = '1999-2000' WHERE SchoolYear = 2000;

IF NOT EXISTS(SELECT * FROM edfi.SchoolYearType WHERE SchoolYear = 2001)
    INSERT INTO [edfi].[SchoolYearType] ([SchoolYear], [SchoolYearDescription], [CurrentSchoolYear]) VALUES(2001, '2000-2001', 'false')
ELSE
    UPDATE [edfi].[SchoolYearType] SET SchoolYearDescription = '2000-2001' WHERE SchoolYear = 2001;

IF NOT EXISTS(SELECT * FROM edfi.SchoolYearType WHERE SchoolYear = 2002)
    INSERT INTO [edfi].[SchoolYearType] ([SchoolYear], [SchoolYearDescription], [CurrentSchoolYear]) VALUES(2002, '2001-2002', 'false')
ELSE
    UPDATE [edfi].[SchoolYearType] SET SchoolYearDescription = '2001-2002' WHERE SchoolYear = 2002;

IF NOT EXISTS(SELECT * FROM edfi.SchoolYearType WHERE SchoolYear = 2003)
    INSERT INTO [edfi].[SchoolYearType] ([SchoolYear], [SchoolYearDescription], [CurrentSchoolYear]) VALUES(2003, '2002-2003', 'false')
ELSE
    UPDATE [edfi].[SchoolYearType] SET SchoolYearDescription = '2002-2003' WHERE SchoolYear = 2003;

IF NOT EXISTS(SELECT * FROM edfi.SchoolYearType WHERE SchoolYear = 2004)
    INSERT INTO [edfi].[SchoolYearType] ([SchoolYear], [SchoolYearDescription], [CurrentSchoolYear]) VALUES(2004, '2003-2004', 'false')
ELSE
    UPDATE [edfi].[SchoolYearType] SET SchoolYearDescription = '2003-2004' WHERE SchoolYear = 2004;

IF NOT EXISTS(SELECT * FROM edfi.SchoolYearType WHERE SchoolYear = 2005)
    INSERT INTO [edfi].[SchoolYearType] ([SchoolYear], [SchoolYearDescription], [CurrentSchoolYear]) VALUES(2005, '2004-2005', 'false')
ELSE
    UPDATE [edfi].[SchoolYearType] SET SchoolYearDescription = '2004-2005' WHERE SchoolYear = 2005;

IF NOT EXISTS(SELECT * FROM edfi.SchoolYearType WHERE SchoolYear = 2006)
    INSERT INTO [edfi].[SchoolYearType] ([SchoolYear], [SchoolYearDescription], [CurrentSchoolYear]) VALUES(2006, '2005-2006', 'false')
ELSE
    UPDATE [edfi].[SchoolYearType] SET SchoolYearDescription = '2005-2006' WHERE SchoolYear = 2006;

IF NOT EXISTS(SELECT * FROM edfi.SchoolYearType WHERE SchoolYear = 2007)
    INSERT INTO [edfi].[SchoolYearType] ([SchoolYear], [SchoolYearDescription], [CurrentSchoolYear]) VALUES(2007, '2006-2007', 'false')
ELSE
    UPDATE [edfi].[SchoolYearType] SET SchoolYearDescription = '2006-2007' WHERE SchoolYear = 2007;

IF NOT EXISTS(SELECT * FROM edfi.SchoolYearType WHERE SchoolYear = 2008)
    INSERT INTO [edfi].[SchoolYearType] ([SchoolYear], [SchoolYearDescription], [CurrentSchoolYear]) VALUES(2008, '2007-2008', 'false')
ELSE
    UPDATE [edfi].[SchoolYearType] SET SchoolYearDescription = '2007-2008' WHERE SchoolYear = 2008;

IF NOT EXISTS(SELECT * FROM edfi.SchoolYearType WHERE SchoolYear = 2009)
    INSERT INTO [edfi].[SchoolYearType] ([SchoolYear], [SchoolYearDescription], [CurrentSchoolYear]) VALUES(2009, '2008-2009', 'false')
ELSE
    UPDATE [edfi].[SchoolYearType] SET SchoolYearDescription = '2008-2009' WHERE SchoolYear = 2009;

IF NOT EXISTS(SELECT * FROM edfi.SchoolYearType WHERE SchoolYear = 2010)
    INSERT INTO [edfi].[SchoolYearType] ([SchoolYear], [SchoolYearDescription], [CurrentSchoolYear]) VALUES(2010, '2009-2010', 'false')
ELSE
    UPDATE [edfi].[SchoolYearType] SET SchoolYearDescription = '2009-2010' WHERE SchoolYear = 2010;

IF NOT EXISTS(SELECT * FROM edfi.SchoolYearType WHERE SchoolYear = 2011)
    INSERT INTO [edfi].[SchoolYearType] ([SchoolYear], [SchoolYearDescription], [CurrentSchoolYear]) VALUES(2011, '2010-2011', 'false')
ELSE
    UPDATE [edfi].[SchoolYearType] SET SchoolYearDescription = '2010-2011' WHERE SchoolYear = 2011;

IF NOT EXISTS(SELECT * FROM edfi.SchoolYearType WHERE SchoolYear = 2012)
    INSERT INTO [edfi].[SchoolYearType] ([SchoolYear], [SchoolYearDescription], [CurrentSchoolYear]) VALUES(2012, '2011-2012', 'false')
ELSE
    UPDATE [edfi].[SchoolYearType] SET SchoolYearDescription = '2011-2012' WHERE SchoolYear = 2012;

IF NOT EXISTS(SELECT * FROM edfi.SchoolYearType WHERE SchoolYear = 2013)
    INSERT INTO [edfi].[SchoolYearType] ([SchoolYear], [SchoolYearDescription], [CurrentSchoolYear]) VALUES(2013, '2012-2013', 'false')
ELSE
    UPDATE [edfi].[SchoolYearType] SET SchoolYearDescription = '2012-2013' WHERE SchoolYear = 2013;

IF NOT EXISTS(SELECT * FROM edfi.SchoolYearType WHERE SchoolYear = 2014)
    INSERT INTO [edfi].[SchoolYearType] ([SchoolYear], [SchoolYearDescription], [CurrentSchoolYear]) VALUES(2014, '2013-2014', 'false')
ELSE
    UPDATE [edfi].[SchoolYearType] SET SchoolYearDescription = '2013-2014' WHERE SchoolYear = 2014;

IF NOT EXISTS(SELECT * FROM edfi.SchoolYearType WHERE SchoolYear = 2015)
    INSERT INTO [edfi].[SchoolYearType] ([SchoolYear], [SchoolYearDescription], [CurrentSchoolYear]) VALUES(2015, '2014-2015', 'false')
ELSE
    UPDATE [edfi].[SchoolYearType] SET SchoolYearDescription = '2014-2015' WHERE SchoolYear = 2015;

IF NOT EXISTS(SELECT * FROM edfi.SchoolYearType WHERE SchoolYear = 2016)
    INSERT INTO [edfi].[SchoolYearType] ([SchoolYear], [SchoolYearDescription], [CurrentSchoolYear]) VALUES(2016, '2015-2016', 'false')
ELSE
    UPDATE [edfi].[SchoolYearType] SET SchoolYearDescription = '2015-2016' WHERE SchoolYear = 2016;

IF NOT EXISTS(SELECT * FROM edfi.SchoolYearType WHERE SchoolYear = 2017)
    INSERT INTO [edfi].[SchoolYearType] ([SchoolYear], [SchoolYearDescription], [CurrentSchoolYear]) VALUES(2017, '2016-2017', 'false')
ELSE
    UPDATE [edfi].[SchoolYearType] SET SchoolYearDescription = '2016-2017' WHERE SchoolYear = 2017;

IF NOT EXISTS(SELECT * FROM edfi.SchoolYearType WHERE SchoolYear = 2018)
    INSERT INTO [edfi].[SchoolYearType] ([SchoolYear], [SchoolYearDescription], [CurrentSchoolYear]) VALUES(2018, '2017-2018', 'false')
ELSE
    UPDATE [edfi].[SchoolYearType] SET SchoolYearDescription = '2017-2018' WHERE SchoolYear = 2018;

IF NOT EXISTS(SELECT * FROM edfi.SchoolYearType WHERE SchoolYear = 2019)
    INSERT INTO [edfi].[SchoolYearType] ([SchoolYear], [SchoolYearDescription], [CurrentSchoolYear]) VALUES(2019, '2018-2019', 'false')
ELSE
    UPDATE [edfi].[SchoolYearType] SET SchoolYearDescription = '2018-2019' WHERE SchoolYear = 2019;

IF NOT EXISTS(SELECT * FROM edfi.SchoolYearType WHERE SchoolYear = 2020)
    INSERT INTO [edfi].[SchoolYearType] ([SchoolYear], [SchoolYearDescription], [CurrentSchoolYear]) VALUES(2020, '2019-2020', 'false')
ELSE
    UPDATE [edfi].[SchoolYearType] SET SchoolYearDescription = '2019-2020' WHERE SchoolYear = 2020;

IF NOT EXISTS(SELECT * FROM edfi.SchoolYearType WHERE SchoolYear = 2021)
    INSERT INTO [edfi].[SchoolYearType] ([SchoolYear], [SchoolYearDescription], [CurrentSchoolYear]) VALUES(2021, '2020-2021', 'false')
ELSE
    UPDATE [edfi].[SchoolYearType] SET SchoolYearDescription = '2020-2021' WHERE SchoolYear = 2021;

IF NOT EXISTS(SELECT * FROM edfi.SchoolYearType WHERE SchoolYear = 2022)
    INSERT INTO [edfi].[SchoolYearType] ([SchoolYear], [SchoolYearDescription], [CurrentSchoolYear]) VALUES(2022, '2021-2022', 'false')
ELSE
    UPDATE [edfi].[SchoolYearType] SET SchoolYearDescription = '2021-2022' WHERE SchoolYear = 2022;

IF NOT EXISTS(SELECT * FROM edfi.SchoolYearType WHERE SchoolYear = 2023)
    INSERT INTO [edfi].[SchoolYearType] ([SchoolYear], [SchoolYearDescription], [CurrentSchoolYear]) VALUES(2023, '2022-2023', 'false')
ELSE
    UPDATE [edfi].[SchoolYearType] SET SchoolYearDescription = '2022-2023' WHERE SchoolYear = 2023;

IF NOT EXISTS(SELECT * FROM edfi.SchoolYearType WHERE SchoolYear = 2024)
    INSERT INTO [edfi].[SchoolYearType] ([SchoolYear], [SchoolYearDescription], [CurrentSchoolYear]) VALUES(2024, '2023-2024', 'false')
ELSE
    UPDATE [edfi].[SchoolYearType] SET SchoolYearDescription = '2023-2024' WHERE SchoolYear = 2024;

IF NOT EXISTS(SELECT * FROM edfi.SchoolYearType WHERE SchoolYear = 2025)
    INSERT INTO [edfi].[SchoolYearType] ([SchoolYear], [SchoolYearDescription], [CurrentSchoolYear]) VALUES(2025, '2024-2025', 'false')
ELSE
    UPDATE [edfi].[SchoolYearType] SET SchoolYearDescription = '2024-2025' WHERE SchoolYear = 2025;

IF NOT EXISTS(SELECT * FROM edfi.SchoolYearType WHERE SchoolYear = 2026)
    INSERT INTO [edfi].[SchoolYearType] ([SchoolYear], [SchoolYearDescription], [CurrentSchoolYear]) VALUES(2026, '2025-2026', 'false')
ELSE
    UPDATE [edfi].[SchoolYearType] SET SchoolYearDescription = '2025-2026' WHERE SchoolYear = 2026;

IF NOT EXISTS(SELECT * FROM edfi.SchoolYearType WHERE SchoolYear = 2027)
    INSERT INTO [edfi].[SchoolYearType] ([SchoolYear], [SchoolYearDescription], [CurrentSchoolYear]) VALUES(2027, '2026-2027', 'false')
ELSE
    UPDATE [edfi].[SchoolYearType] SET SchoolYearDescription = '2026-2027' WHERE SchoolYear = 2027;

IF NOT EXISTS(SELECT * FROM edfi.SchoolYearType WHERE SchoolYear = 2028)
    INSERT INTO [edfi].[SchoolYearType] ([SchoolYear], [SchoolYearDescription], [CurrentSchoolYear]) VALUES(2028, '2027-2028', 'false')
ELSE
    UPDATE [edfi].[SchoolYearType] SET SchoolYearDescription = '2027-2028' WHERE SchoolYear = 2028;

IF NOT EXISTS(SELECT * FROM edfi.SchoolYearType WHERE SchoolYear = 2029)
    INSERT INTO [edfi].[SchoolYearType] ([SchoolYear], [SchoolYearDescription], [CurrentSchoolYear]) VALUES(2029, '2028-2029', 'false')
ELSE
    UPDATE [edfi].[SchoolYearType] SET SchoolYearDescription = '2028-2029' WHERE SchoolYear = 2029;

IF NOT EXISTS(SELECT * FROM edfi.SchoolYearType WHERE SchoolYear = 2030)
    INSERT INTO [edfi].[SchoolYearType] ([SchoolYear], [SchoolYearDescription], [CurrentSchoolYear]) VALUES(2030, '2029-2030', 'false')
ELSE
    UPDATE [edfi].[SchoolYearType] SET SchoolYearDescription = '2029-2030' WHERE SchoolYear = 2030;

IF NOT EXISTS(SELECT * FROM edfi.SchoolYearType WHERE SchoolYear = 2031)
    INSERT INTO [edfi].[SchoolYearType] ([SchoolYear], [SchoolYearDescription], [CurrentSchoolYear]) VALUES(2031, '2030-2031', 'false')
ELSE
    UPDATE [edfi].[SchoolYearType] SET SchoolYearDescription = '2030-2031' WHERE SchoolYear = 2031;

IF NOT EXISTS(SELECT * FROM edfi.SchoolYearType WHERE SchoolYear = 2032)
    INSERT INTO [edfi].[SchoolYearType] ([SchoolYear], [SchoolYearDescription], [CurrentSchoolYear]) VALUES(2032, '2031-2032', 'false')
ELSE
    UPDATE [edfi].[SchoolYearType] SET SchoolYearDescription = '2031-2032' WHERE SchoolYear = 2032;

IF NOT EXISTS(SELECT * FROM edfi.SchoolYearType WHERE SchoolYear = 2033)
    INSERT INTO [edfi].[SchoolYearType] ([SchoolYear], [SchoolYearDescription], [CurrentSchoolYear]) VALUES(2033, '2032-2033', 'false')
ELSE
    UPDATE [edfi].[SchoolYearType] SET SchoolYearDescription = '2032-2033' WHERE SchoolYear = 2033;

IF NOT EXISTS(SELECT * FROM edfi.SchoolYearType WHERE SchoolYear = 2034)
    INSERT INTO [edfi].[SchoolYearType] ([SchoolYear], [SchoolYearDescription], [CurrentSchoolYear]) VALUES(2034, '2033-2034', 'false')
ELSE
    UPDATE [edfi].[SchoolYearType] SET SchoolYearDescription = '2033-2034' WHERE SchoolYear = 2034;

IF NOT EXISTS(SELECT * FROM edfi.SchoolYearType WHERE SchoolYear = 2035)
    INSERT INTO [edfi].[SchoolYearType] ([SchoolYear], [SchoolYearDescription], [CurrentSchoolYear]) VALUES(2035, '2034-2035', 'false')
ELSE
    UPDATE [edfi].[SchoolYearType] SET SchoolYearDescription = '2034-2035' WHERE SchoolYear = 2035;

IF NOT EXISTS(SELECT * FROM edfi.SchoolYearType WHERE SchoolYear = 2036)
    INSERT INTO [edfi].[SchoolYearType] ([SchoolYear], [SchoolYearDescription], [CurrentSchoolYear]) VALUES(2036, '2035-2036', 'false')
ELSE
    UPDATE [edfi].[SchoolYearType] SET SchoolYearDescription = '2035-2036' WHERE SchoolYear = 2036;

IF NOT EXISTS(SELECT * FROM edfi.SchoolYearType WHERE SchoolYear = 2037)
    INSERT INTO [edfi].[SchoolYearType] ([SchoolYear], [SchoolYearDescription], [CurrentSchoolYear]) VALUES(2037, '2036-2037', 'false')
ELSE
    UPDATE [edfi].[SchoolYearType] SET SchoolYearDescription = '2036-2037' WHERE SchoolYear = 2037;

IF NOT EXISTS(SELECT * FROM edfi.SchoolYearType WHERE SchoolYear = 2038)
    INSERT INTO [edfi].[SchoolYearType] ([SchoolYear], [SchoolYearDescription], [CurrentSchoolYear]) VALUES(2038, '2037-2038', 'false')
ELSE
    UPDATE [edfi].[SchoolYearType] SET SchoolYearDescription = '2037-2038' WHERE SchoolYear = 2038;

IF NOT EXISTS(SELECT * FROM edfi.SchoolYearType WHERE SchoolYear = 2039)
    INSERT INTO [edfi].[SchoolYearType] ([SchoolYear], [SchoolYearDescription], [CurrentSchoolYear]) VALUES(2039, '2038-2039', 'false')
ELSE
    UPDATE [edfi].[SchoolYearType] SET SchoolYearDescription = '2038-2039' WHERE SchoolYear = 2039;

IF NOT EXISTS(SELECT * FROM edfi.SchoolYearType WHERE SchoolYear = 2040)
    INSERT INTO [edfi].[SchoolYearType] ([SchoolYear], [SchoolYearDescription], [CurrentSchoolYear]) VALUES(2040, '2039-2040', 'false')
ELSE
    UPDATE [edfi].[SchoolYearType] SET SchoolYearDescription = '2039-2040' WHERE SchoolYear = 2040;

IF NOT EXISTS(SELECT * FROM edfi.SchoolYearType WHERE SchoolYear = 2041)
    INSERT INTO [edfi].[SchoolYearType] ([SchoolYear], [SchoolYearDescription], [CurrentSchoolYear]) VALUES(2041, '2040-2041', 'false')
ELSE
    UPDATE [edfi].[SchoolYearType] SET SchoolYearDescription = '2040-2041' WHERE SchoolYear = 2041;

IF NOT EXISTS(SELECT * FROM edfi.SchoolYearType WHERE SchoolYear = 2042)
    INSERT INTO [edfi].[SchoolYearType] ([SchoolYear], [SchoolYearDescription], [CurrentSchoolYear]) VALUES(2042, '2041-2042', 'false')
ELSE
    UPDATE [edfi].[SchoolYearType] SET SchoolYearDescription = '2041-2042' WHERE SchoolYear = 2042;

IF NOT EXISTS(SELECT * FROM edfi.SchoolYearType WHERE SchoolYear = 2043)
    INSERT INTO [edfi].[SchoolYearType] ([SchoolYear], [SchoolYearDescription], [CurrentSchoolYear]) VALUES(2043, '2042-2043', 'false')
ELSE
    UPDATE [edfi].[SchoolYearType] SET SchoolYearDescription = '2042-2043' WHERE SchoolYear = 2043;

IF NOT EXISTS(SELECT * FROM edfi.SchoolYearType WHERE SchoolYear = 2044)
    INSERT INTO [edfi].[SchoolYearType] ([SchoolYear], [SchoolYearDescription], [CurrentSchoolYear]) VALUES(2044, '2043-2044', 'false')
ELSE
    UPDATE [edfi].[SchoolYearType] SET SchoolYearDescription = '2043-2044' WHERE SchoolYear = 2044;

IF NOT EXISTS(SELECT * FROM edfi.SchoolYearType WHERE SchoolYear = 2045)
    INSERT INTO [edfi].[SchoolYearType] ([SchoolYear], [SchoolYearDescription], [CurrentSchoolYear]) VALUES(2045, '2044-2045', 'false')
ELSE
    UPDATE [edfi].[SchoolYearType] SET SchoolYearDescription = '2044-2045' WHERE SchoolYear = 2045;

IF NOT EXISTS(SELECT * FROM edfi.SchoolYearType WHERE SchoolYear = 2046)
    INSERT INTO [edfi].[SchoolYearType] ([SchoolYear], [SchoolYearDescription], [CurrentSchoolYear]) VALUES(2046, '2045-2046', 'false')
ELSE
    UPDATE [edfi].[SchoolYearType] SET SchoolYearDescription = '2045-2046' WHERE SchoolYear = 2046;

IF NOT EXISTS(SELECT * FROM edfi.SchoolYearType WHERE SchoolYear = 2047)
    INSERT INTO [edfi].[SchoolYearType] ([SchoolYear], [SchoolYearDescription], [CurrentSchoolYear]) VALUES(2047, '2046-2047', 'false')
ELSE
    UPDATE [edfi].[SchoolYearType] SET SchoolYearDescription = '2046-2047' WHERE SchoolYear = 2047;

IF NOT EXISTS(SELECT * FROM edfi.SchoolYearType WHERE SchoolYear = 2048)
    INSERT INTO [edfi].[SchoolYearType] ([SchoolYear], [SchoolYearDescription], [CurrentSchoolYear]) VALUES(2048, '2047-2048', 'false')
ELSE
    UPDATE [edfi].[SchoolYearType] SET SchoolYearDescription = '2047-2048' WHERE SchoolYear = 2048;

IF NOT EXISTS(SELECT * FROM edfi.SchoolYearType WHERE SchoolYear = 2049)
    INSERT INTO [edfi].[SchoolYearType] ([SchoolYear], [SchoolYearDescription], [CurrentSchoolYear]) VALUES(2049, '2048-2049', 'false')
ELSE
    UPDATE [edfi].[SchoolYearType] SET SchoolYearDescription = '2048-2049' WHERE SchoolYear = 2049;

IF NOT EXISTS(SELECT * FROM edfi.SchoolYearType WHERE SchoolYear = 2050)
    INSERT INTO [edfi].[SchoolYearType] ([SchoolYear], [SchoolYearDescription], [CurrentSchoolYear]) VALUES(2050, '2049-2050', 'false')
ELSE
    UPDATE [edfi].[SchoolYearType] SET SchoolYearDescription = '2049-2050' WHERE SchoolYear = 2050;