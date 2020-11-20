-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

-- Set the discriminators for Education Organization
update edfi.EducationOrganization
set Discriminator = 'edfi.CommunityOrganization'
where EducationOrganizationId in 
(select EducationOrganizationId from edfi.EducationOrganization a
inner join edfi.CommunityOrganization b on
a.EducationOrganizationId = b.CommunityOrganizationId)

update edfi.EducationOrganization
set Discriminator = 'edfi.CommunityProvidern'
where EducationOrganizationId in 
(select EducationOrganizationId from edfi.EducationOrganization a
inner join edfi.CommunityProvider b on
a.EducationOrganizationId = b.CommunityProviderId)	

update edfi.EducationOrganization
set Discriminator = 'edfi.EducationOrganizationNetwork'
where EducationOrganizationId in 
(select EducationOrganizationId from edfi.EducationOrganization a
inner join edfi.EducationOrganizationNetwork b on
a.EducationOrganizationId = b.EducationOrganizationNetworkId)

update edfi.EducationOrganization
set Discriminator = 'edfi.EducationServiceCenter'
where EducationOrganizationId in 
(select EducationOrganizationId from edfi.EducationOrganization a
inner join edfi.EducationServiceCenter b on
a.EducationOrganizationId = b.EducationServiceCenterId)

update edfi.EducationOrganization
set Discriminator = 'edfi.LocalEducationAgency'
where EducationOrganizationId in 
(select EducationOrganizationId from edfi.EducationOrganization a
inner join edfi.LocalEducationAgency b on
a.EducationOrganizationId = b.LocalEducationAgencyId)

update edfi.EducationOrganization
set Discriminator = 'edfi.PostSecondaryInstitution'
where EducationOrganizationId in 
(select EducationOrganizationId from edfi.EducationOrganization a
inner join edfi.PostSecondaryInstitution b on
a.EducationOrganizationId = b.PostSecondaryInstitutionId)

update edfi.EducationOrganization
set Discriminator = 'edfi.School'
where EducationOrganizationId in 
(select EducationOrganizationId from edfi.EducationOrganization a
inner join edfi.School b on
a.EducationOrganizationId = b.SchoolId)

update edfi.EducationOrganization
set Discriminator = 'edfi.StateEducationAgency'
where EducationOrganizationId in 
(select EducationOrganizationId from edfi.EducationOrganization a
inner join edfi.StateEducationAgency b on
a.EducationOrganizationId = b.StateEducationAgencyId)

-- Set the discriminators for General Student Program Association
update edfi.GeneralStudentProgramAssociation 
set Discriminator = 'edfi.StudentCTEProgramAssociation'
where StudentUSI in 
(select a.StudentUSI from edfi.GeneralStudentProgramAssociation a
inner join edfi.StudentCTEProgramAssociation b on 
	a.StudentUSI = b.StudentUSI)

update edfi.GeneralStudentProgramAssociation
set Discriminator = 'edfi.StudentHomelessProgramAssociation'
where StudentUSI in
(select a.StudentUSI from edfi.GeneralStudentProgramAssociation a
inner join edfi.StudentHomelessProgramAssociation b on
a.StudentUSI = b.StudentUSI)

update edfi.GeneralStudentProgramAssociation
set Discriminator = 'edfi.StudentLanguageInstructionProgramAssociation'
where StudentUSI in
(select a.StudentUSI from edfi.GeneralStudentProgramAssociation a
inner join edfi.StudentLanguageInstructionProgramAssociation b on
a.StudentUSI = b.StudentUSI)

update edfi.GeneralStudentProgramAssociation
set Discriminator = 'edfi.StudentMigrantEducationProgramAssociation'
where StudentUSI in
(select a.StudentUSI from edfi.GeneralStudentProgramAssociation a
inner join edfi.StudentMigrantEducationProgramAssociation b on
a.StudentUSI = b.StudentUSI)

update edfi.GeneralStudentProgramAssociation
set Discriminator = 'edfi.StudentNeglectedOrDelinquentProgramAssociation'
where StudentUSI in
(select a.StudentUSI from edfi.GeneralStudentProgramAssociation a
inner join edfi.StudentNeglectedOrDelinquentProgramAssociation b on
a.StudentUSI = b.StudentUSI)


update edfi.GeneralStudentProgramAssociation
set Discriminator = 'edfi.StudentProgramAssociation'
where StudentUSI in
(select a.StudentUSI from edfi.GeneralStudentProgramAssociation a
inner join edfi.StudentProgramAssociation b on
a.StudentUSI = b.StudentUSI)

update edfi.GeneralStudentProgramAssociation
set Discriminator = 'edfi.StudentSchoolFoodServiceProgramAssociation'
where StudentUSI in
(select a.StudentUSI from edfi.GeneralStudentProgramAssociation a
inner join edfi.StudentSchoolFoodServiceProgramAssociation b on
a.StudentUSI = b.StudentUSI)

update edfi.GeneralStudentProgramAssociation
set Discriminator = 'edfi.StudentSpecialEducationProgramAssociation'
where StudentUSI in
(select a.StudentUSI from edfi.GeneralStudentProgramAssociation a
inner join edfi.StudentSpecialEducationProgramAssociation b on
a.StudentUSI = b.StudentUSI)

update edfi.GeneralStudentProgramAssociation
set Discriminator = 'edfi.StudentTitleIPartAProgramAssociation'
where StudentUSI in
(select a.StudentUSI from edfi.GeneralStudentProgramAssociation a
inner join edfi.StudentTitleIPartAProgramAssociation b on
a.StudentUSI = b.StudentUSI)