-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

ALTER TABLE edfi.EducationOrganizationIndicator 
ALTER COLUMN IndicatorValue  TYPE character varying(60) ;


ALTER TABLE edfi.Parent 
ADD COLUMN HighestCompletedLevelOfEducationDescriptorId INT NULL;
 

CREATE  INDEX FK_Parent_LevelOfEducationDescriptor
ON edfi.Parent(HighestCompletedLevelOfEducationDescriptorId );


ALTER TABLE edfi.Parent ADD CONSTRAINT FK_Parent_LevelOfEducationDescriptor 
FOREIGN KEY (HighestCompletedLevelOfEducationDescriptorId)
REFERENCES edfi.LevelOfEducationDescriptor (LevelOfEducationDescriptorId);


ALTER TABLE edfi.StudentEducationOrganizationAssociationStudentIndicator 
ALTER COLUMN Indicator  TYPE character varying(60) ,
ALTER COLUMN Indicator SET NOT NULL;

ALTER TABLE edfi.StudentParentAssociation 
ADD COLUMN LegalGuardian  BIT NULL;

