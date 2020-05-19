-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

-- Drop the unused views
/****** Object:  View [auth].[LocalEducationAgencyIdToParent]    Script Date: 6/10/2016 6:46:56 PM ******/
DROP VIEW [auth].[LocalEducationAgencyIdToParent]
GO

/****** Object:  View [auth].[LocalEducationAgencyIdToSchoolGuid]    Script Date: 6/10/2016 7:04:05 PM ******/
DROP VIEW [auth].[LocalEducationAgencyIdToSchoolGuid]
GO

/****** Object:  View [auth].[LocalEducationAgencyIdToStaff]    Script Date: 6/10/2016 7:04:23 PM ******/
DROP VIEW [auth].[LocalEducationAgencyIdToStaff]
GO

/****** Object:  View [auth].[LocalEducationAgencyIdToStudent]    Script Date: 6/10/2016 7:04:37 PM ******/
DROP VIEW [auth].[LocalEducationAgencyIdToStudent]
GO

/****** Object:  View [auth].[ParentToSchoolId]    Script Date: 6/10/2016 7:35:56 PM ******/
DROP VIEW [auth].[ParentToSchoolId]
GO

/****** Object:  View [auth].[ParentToStudent]    Script Date: 6/10/2016 7:05:08 PM ******/
DROP VIEW [auth].[ParentToStudent]
GO

/****** Object:  View [auth].[SchoolIdToStaff]    Script Date: 6/10/2016 7:05:23 PM ******/
DROP VIEW [auth].[SchoolIdToStaff]
GO

/****** Object:  View [auth].[SchoolIdToStudent]    Script Date: 6/10/2016 7:05:34 PM ******/
DROP VIEW [auth].[SchoolIdToStudent]
GO

/****** Object:  View [auth].[EducationOrganizationToStaff_Assignment]    Script Date: 6/10/2016 7:34:41 PM ******/
DROP VIEW [auth].[EducationOrganizationToStaff_Assignment]
GO

/****** Object:  View [auth].[EducationOrganizationToStaff_Employment]    Script Date: 6/10/2016 7:34:55 PM ******/
DROP VIEW [auth].[EducationOrganizationToStaff_Employment]
GO

-- Drop the unused synonyms

/****** Object:  Synonym [auth].[LocalEducationAgencyIdToParentGuid]    Script Date: 6/10/2016 7:31:06 PM ******/
DROP SYNONYM [auth].[LocalEducationAgencyIdToParentGuid]
GO

/****** Object:  Synonym [auth].[LocalEducationAgencyIdToParentUniqueId]    Script Date: 6/10/2016 7:31:23 PM ******/
DROP SYNONYM [auth].[LocalEducationAgencyIdToParentUniqueId]
GO

/****** Object:  Synonym [auth].[LocalEducationAgencyIdToStaffGuid]    Script Date: 6/10/2016 7:31:33 PM ******/
DROP SYNONYM [auth].[LocalEducationAgencyIdToStaffGuid]
GO

/****** Object:  Synonym [auth].[LocalEducationAgencyIdToStaffUniqueId]    Script Date: 6/10/2016 7:31:44 PM ******/
DROP SYNONYM [auth].[LocalEducationAgencyIdToStaffUniqueId]
GO

/****** Object:  Synonym [auth].[LocalEducationAgencyIdToStudentGuid]    Script Date: 6/10/2016 7:31:57 PM ******/
DROP SYNONYM [auth].[LocalEducationAgencyIdToStudentGuid]
GO

/****** Object:  Synonym [auth].[LocalEducationAgencyIdToStudentUniqueId]    Script Date: 6/10/2016 7:32:08 PM ******/
DROP SYNONYM [auth].[LocalEducationAgencyIdToStudentUniqueId]
GO

/****** Object:  Synonym [auth].[ParentGuidToSchoolIdId]    Script Date: 6/10/2016 7:32:17 PM ******/
DROP SYNONYM [auth].[ParentGuidToSchoolIdId]
GO

/****** Object:  Synonym [auth].[ParentGuidToStudentGuid]    Script Date: 6/10/2016 7:32:25 PM ******/
DROP SYNONYM [auth].[ParentGuidToStudentGuid]
GO

/****** Object:  Synonym [auth].[ParentGuidToStudentUniqueId]    Script Date: 6/10/2016 7:32:34 PM ******/
DROP SYNONYM [auth].[ParentGuidToStudentUniqueId]
GO

/****** Object:  Synonym [auth].[ParentUniqueIdToSchoolIdId]    Script Date: 6/10/2016 7:32:42 PM ******/
DROP SYNONYM [auth].[ParentUniqueIdToSchoolIdId]
GO

/****** Object:  Synonym [auth].[ParentUniqueIdToStudentGuid]    Script Date: 6/10/2016 7:32:56 PM ******/
DROP SYNONYM [auth].[ParentUniqueIdToStudentGuid]
GO

/****** Object:  Synonym [auth].[ParentUniqueIdToStudentUniqueId]    Script Date: 6/10/2016 7:33:05 PM ******/
DROP SYNONYM [auth].[ParentUniqueIdToStudentUniqueId]
GO

/****** Object:  Synonym [auth].[SchoolIdToStaffGuid]    Script Date: 6/10/2016 7:33:13 PM ******/
DROP SYNONYM [auth].[SchoolIdToStaffGuid]
GO

/****** Object:  Synonym [auth].[SchoolIdToStaffUniqueId]    Script Date: 6/10/2016 7:33:22 PM ******/
DROP SYNONYM [auth].[SchoolIdToStaffUniqueId]
GO

/****** Object:  Synonym [auth].[SchoolIdToStudentGuid]    Script Date: 6/10/2016 7:33:30 PM ******/
DROP SYNONYM [auth].[SchoolIdToStudentGuid]
GO

/****** Object:  Synonym [auth].[SchoolIdToStudentUniqueId]    Script Date: 6/10/2016 7:33:38 PM ******/
DROP SYNONYM [auth].[SchoolIdToStudentUniqueId]
GO
