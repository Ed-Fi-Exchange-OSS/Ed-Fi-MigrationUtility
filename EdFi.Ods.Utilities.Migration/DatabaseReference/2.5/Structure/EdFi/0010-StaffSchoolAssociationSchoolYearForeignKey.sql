-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE name = N'FK_StaffSchoolAssociation_SchoolYearType')
BEGIN
    ALTER TABLE [edfi].[StaffSchoolAssociation]  WITH CHECK ADD  CONSTRAINT [FK_StaffSchoolAssociation_SchoolYearType_SchoolYear] FOREIGN KEY([SchoolYear])
    REFERENCES [edfi].[SchoolYearType] ([SchoolYear])

    ALTER TABLE [edfi].[StaffSchoolAssociation] CHECK CONSTRAINT [FK_StaffSchoolAssociation_SchoolYearType_SchoolYear]
END
GO