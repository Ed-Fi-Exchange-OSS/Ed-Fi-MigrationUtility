-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

ALTER TABLE [edfi].[CourseTranscript]
    ADD [ExternalEducationOrganizationNameOfInstitution] [NVARCHAR](75) NULL;
GO

ALTER TABLE [edfi].[Credential]
    ALTER COLUMN [CredentialFieldDescriptorId] INT NULL;
GO

ALTER TABLE [edfi].[Credential]
    ALTER COLUMN [TeachingCredentialDescriptorId] INT NULL;
GO

ALTER TABLE [edfi].[StaffEducationOrganizationAssignmentAssociation]
    ALTER COLUMN [FullTimeEquivalency] DECIMAL (5, 4) NULL;
GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociation]
    ADD  [PrimaryLearningDeviceAwayFromSchoolDescriptorId] INT              NULL,
    [PrimaryLearningDeviceAccessDescriptorId]         INT              NULL,
    [PrimaryLearningDeviceProviderDescriptorId]       INT              NULL,
    [InternetAccessInResidence]                       BIT              NULL,
    [BarrierToInternetAccessInResidenceDescriptorId]  INT              NULL,
    [InternetAccessTypeInResidenceDescriptorId]       INT              NULL,
    [InternetPerformanceInResidenceDescriptorId]      INT              NULL;

GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociation_BarrierToInternetAccessInResidenceDescriptor]
    ON [edfi].[StudentEducationOrganizationAssociation]([BarrierToInternetAccessInResidenceDescriptorId] ASC);
GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociation_InternetAccessTypeInResidenceDescriptor]
    ON [edfi].[StudentEducationOrganizationAssociation]([InternetAccessTypeInResidenceDescriptorId] ASC);
GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociation_InternetPerformanceInResidenceDescriptor]
    ON [edfi].[StudentEducationOrganizationAssociation]([InternetPerformanceInResidenceDescriptorId] ASC);
GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociation_PrimaryLearningDeviceAccessDescriptor]
    ON [edfi].[StudentEducationOrganizationAssociation]([PrimaryLearningDeviceAccessDescriptorId] ASC);
GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociation_PrimaryLearningDeviceAwayFromSchoolDescriptor]
    ON [edfi].[StudentEducationOrganizationAssociation]([PrimaryLearningDeviceAwayFromSchoolDescriptorId] ASC);
GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociation_PrimaryLearningDeviceProviderDescriptor]
    ON [edfi].[StudentEducationOrganizationAssociation]([PrimaryLearningDeviceProviderDescriptorId] ASC);
GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationCohortYear]
    ADD [TermDescriptorId]   INT    NULL;
GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationCohortYear_TermDescriptor]
    ON [edfi].[StudentEducationOrganizationAssociationCohortYear]([TermDescriptorId] ASC);
GO

ALTER TABLE [edfi].[StudentSchoolAssociation]
    ALTER COLUMN [FullTimeEquivalency]   DECIMAL (5, 4)    NULL;
GO