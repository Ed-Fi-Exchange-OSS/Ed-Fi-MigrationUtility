-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

ALTER TABLE [edfi].[EducationOrganizationIndicator] 
ALTER COLUMN  [IndicatorValue]  NVARCHAR (60) NULL;
GO

ALTER TABLE [edfi].[Parent] 
ADD [HighestCompletedLevelOfEducationDescriptorId] INT NULL;
GO 

CREATE NONCLUSTERED INDEX [FK_Parent_LevelOfEducationDescriptor]
    ON [edfi].[Parent]([HighestCompletedLevelOfEducationDescriptorId] ASC);
GO

 ALTER TABLE [edfi].[Parent] ADD CONSTRAINT [FK_Parent_LevelOfEducationDescriptor] 
    FOREIGN KEY ([HighestCompletedLevelOfEducationDescriptorId])
    REFERENCES [edfi].[LevelOfEducationDescriptor] ([LevelOfEducationDescriptorId])
GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationStudentIndicator] 
ALTER COLUMN   [Indicator]  NVARCHAR (60) NOT NULL;

GO

ALTER TABLE [edfi].[StudentParentAssociation] 
ADD  [LegalGuardian]  BIT NULL;

GO