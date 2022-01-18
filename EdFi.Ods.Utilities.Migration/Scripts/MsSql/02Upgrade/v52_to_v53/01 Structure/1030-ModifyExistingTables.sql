-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

ALTER TABLE [edfi].[CourseTranscript] ADD
[ExternalEducationOrganizationNameOfInstitution] [nvarchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Name of the external institution where the student completed the course; to be used only when the reference ExternalEducationOrganization is not available.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'CourseTranscript', @level2type = N'COLUMN', @level2name = N'ExternalEducationOrganizationNameOfInstitution';
GO

DROP INDEX [FK_Credential_CredentialFieldDescriptor] ON [edfi].[Credential]
GO

DROP INDEX [FK_Credential_TeachingCredentialDescriptor] ON [edfi].[Credential]
GO

ALTER TABLE [edfi].[Credential] ALTER COLUMN [CredentialFieldDescriptorId] [int] NULL
GO

ALTER TABLE [edfi].[Credential] ALTER COLUMN [TeachingCredentialDescriptorId] [int] NULL
GO

CREATE NONCLUSTERED INDEX [FK_Credential_CredentialFieldDescriptor] ON [edfi].[Credential] ([CredentialFieldDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_Credential_TeachingCredentialDescriptor] ON [edfi].[Credential] ([TeachingCredentialDescriptorId])
GO

ALTER TABLE [edfi].[StaffEducationOrganizationAssignmentAssociation] ADD
[FullTimeEquivalency] [decimal] (5, 4) NULL
GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociation] ADD
[PrimaryLearningDeviceAwayFromSchoolDescriptorId] [int] NULL,
[PrimaryLearningDeviceAccessDescriptorId] [int] NULL,
[PrimaryLearningDeviceProviderDescriptorId] [int] NULL,
[InternetAccessInResidence] [bit] NULL,
[BarrierToInternetAccessInResidenceDescriptorId] [int] NULL,
[InternetAccessTypeInResidenceDescriptorId] [int] NULL,
[InternetPerformanceInResidenceDescriptorId] [int] NULL
GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociation_BarrierToInternetAccessInResidenceDescriptor] ON [edfi].[StudentEducationOrganizationAssociation] ([BarrierToInternetAccessInResidenceDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociation_InternetAccessTypeInResidenceDescriptor] ON [edfi].[StudentEducationOrganizationAssociation] ([InternetAccessTypeInResidenceDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociation_InternetPerformanceInResidenceDescriptor] ON [edfi].[StudentEducationOrganizationAssociation] ([InternetPerformanceInResidenceDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociation_PrimaryLearningDeviceAccessDescriptor] ON [edfi].[StudentEducationOrganizationAssociation] ([PrimaryLearningDeviceAccessDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociation_PrimaryLearningDeviceAwayFromSchoolDescriptor] ON [edfi].[StudentEducationOrganizationAssociation] ([PrimaryLearningDeviceAwayFromSchoolDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociation_PrimaryLearningDeviceProviderDescriptor] ON [edfi].[StudentEducationOrganizationAssociation] ([PrimaryLearningDeviceProviderDescriptorId])
GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationCohortYear] ADD
[TermDescriptorId] [int] NULL
GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationCohortYear_TermDescriptor] ON [edfi].[StudentEducationOrganizationAssociationCohortYear] ([TermDescriptorId])
GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationCohortYear] ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationCohortYear_TermDescriptor] FOREIGN KEY ([TermDescriptorId]) REFERENCES [edfi].[TermDescriptor] ([TermDescriptorId])
GO

EXEC sp_updateextendedproperty N'MS_Description', N'The school year associated with the cohort; for example, the intended school year of graduation.', 'SCHEMA', N'edfi', 'TABLE', N'StudentEducationOrganizationAssociationCohortYear', 'COLUMN', N'SchoolYear'

EXEC sp_addextendedproperty N'MS_Description', N'The term associated with the cohort year; for example, the intended term of graduation.', 'SCHEMA', N'edfi', 'TABLE', N'StudentEducationOrganizationAssociationCohortYear', 'COLUMN', N'TermDescriptorId'


ALTER TABLE [edfi].[StudentSchoolAssociation] ALTER COLUMN [FullTimeEquivalency] DECIMAL (5, 4) NULL;
GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociation] WITH CHECK
    ADD CONSTRAINT [FK_StudentEducationOrganizationAssociation_BarrierToInternetAccessInResidenceDescriptor] FOREIGN KEY ([BarrierToInternetAccessInResidenceDescriptorId]) REFERENCES [edfi].[BarrierToInternetAccessInResidenceDescriptor] ([BarrierToInternetAccessInResidenceDescriptorId]);


GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociation] WITH CHECK
    ADD CONSTRAINT [FK_StudentEducationOrganizationAssociation_InternetAccessTypeInResidenceDescriptor] FOREIGN KEY ([InternetAccessTypeInResidenceDescriptorId]) REFERENCES [edfi].[InternetAccessTypeInResidenceDescriptor] ([InternetAccessTypeInResidenceDescriptorId]);


GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociation] WITH CHECK
    ADD CONSTRAINT [FK_StudentEducationOrganizationAssociation_InternetPerformanceInResidenceDescriptor] FOREIGN KEY ([InternetPerformanceInResidenceDescriptorId]) REFERENCES [edfi].[InternetPerformanceInResidenceDescriptor] ([InternetPerformanceInResidenceDescriptorId]);


GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociation] WITH CHECK
    ADD CONSTRAINT [FK_StudentEducationOrganizationAssociation_PrimaryLearningDeviceAccessDescriptor] FOREIGN KEY ([PrimaryLearningDeviceAccessDescriptorId]) REFERENCES [edfi].[PrimaryLearningDeviceAccessDescriptor] ([PrimaryLearningDeviceAccessDescriptorId]);


GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociation] WITH CHECK
    ADD CONSTRAINT [FK_StudentEducationOrganizationAssociation_PrimaryLearningDeviceAwayFromSchoolDescriptor] FOREIGN KEY ([PrimaryLearningDeviceAwayFromSchoolDescriptorId]) REFERENCES [edfi].[PrimaryLearningDeviceAwayFromSchoolDescriptor] ([PrimaryLearningDeviceAwayFromSchoolDescriptorId]);


GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociation] WITH CHECK
    ADD CONSTRAINT [FK_StudentEducationOrganizationAssociation_PrimaryLearningDeviceProviderDescriptor] FOREIGN KEY ([PrimaryLearningDeviceProviderDescriptorId]) REFERENCES [edfi].[PrimaryLearningDeviceProviderDescriptor] ([PrimaryLearningDeviceProviderDescriptorId]);


GO

ALTER FUNCTION util.GetEdFiOdsVersion()
RETURNS VARCHAR(60)
AS
BEGIN
    RETURN '5.3'
END
GO

EXEC sp_updateextendedproperty N'MS_Description', N'This association indicates the education organization to which a staff member provides services.', 'SCHEMA', N'edfi', 'TABLE', N'StaffEducationOrganizationAssignmentAssociation', NULL, NULL

EXEC sp_updateextendedproperty N'MS_Description', N'Month, day, and year of the start or effective date of a staff member''s employment, contract, or relationship with the education organization.', 'SCHEMA', N'edfi', 'TABLE', N'StaffEducationOrganizationAssignmentAssociation', 'COLUMN', N'BeginDate'

EXEC sp_updateextendedproperty N'MS_Description', N'Month, day, and year of the end or termination date of a staff member''s employment, contract, or relationship with the education organization.', 'SCHEMA', N'edfi', 'TABLE', N'StaffEducationOrganizationAssignmentAssociation', 'COLUMN', N'EndDate'

EXEC sp_addextendedproperty N'MS_Description', N'The ratio between the hours of work expected in a position and the hours of work normally expected in a full-time position in the same setting.', 'SCHEMA', N'edfi', 'TABLE', N'StaffEducationOrganizationAssignmentAssociation', 'COLUMN', N'FullTimeEquivalency'


EXEC sp_addextendedproperty N'MS_Description', N'An indication of the barrier to having internet access in the student’s primary place of residence.', 'SCHEMA', N'edfi', 'TABLE', N'StudentEducationOrganizationAssociation', 'COLUMN', N'BarrierToInternetAccessInResidenceDescriptorId'

EXEC sp_addextendedproperty N'MS_Description', N'An indication of whether the student is able to access the internet in their primary place of residence.', 'SCHEMA', N'edfi', 'TABLE', N'StudentEducationOrganizationAssociation', 'COLUMN', N'InternetAccessInResidence'

EXEC sp_addextendedproperty N'MS_Description', N'The primary type of internet service used in the student’s primary place of residence.', 'SCHEMA', N'edfi', 'TABLE', N'StudentEducationOrganizationAssociation', 'COLUMN', N'InternetAccessTypeInResidenceDescriptorId'

EXEC sp_addextendedproperty N'MS_Description', N'An indication of whether the student can complete the full range of learning activities, including video streaming and assignment upload, without interruptions caused by poor internet performance in their primary place of residence.', 'SCHEMA', N'edfi', 'TABLE', N'StudentEducationOrganizationAssociation', 'COLUMN', N'InternetPerformanceInResidenceDescriptorId'

EXEC sp_addextendedproperty N'MS_Description', N'An indication of whether the primary learning device is shared or not shared with another individual.', 'SCHEMA', N'edfi', 'TABLE', N'StudentEducationOrganizationAssociation', 'COLUMN', N'PrimaryLearningDeviceAccessDescriptorId'

EXEC sp_addextendedproperty N'MS_Description', N'The type of device the student uses most often to complete learning activities away from school.', 'SCHEMA', N'edfi', 'TABLE', N'StudentEducationOrganizationAssociation', 'COLUMN', N'PrimaryLearningDeviceAwayFromSchoolDescriptorId'

EXEC sp_addextendedproperty N'MS_Description', N'The provider of the primary learning device.', 'SCHEMA', N'edfi', 'TABLE', N'StudentEducationOrganizationAssociation', 'COLUMN', N'PrimaryLearningDeviceProviderDescriptorId'

EXEC sp_updateextendedproperty N'MS_Description', N'The school year associated with the cohort; for example, the intended school year of graduation.', 'SCHEMA', N'edfi', 'TABLE', N'StudentEducationOrganizationAssociationCohortYear', 'COLUMN', N'SchoolYear'


EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The result from the student''s attempt to take the course, for example:
        Pass
        Fail
        Incomplete
        Withdrawn.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'CourseTranscript', @level2type = N'COLUMN', @level2name = N'CourseAttemptResultDescriptorId';

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The result from the student''s attempt to take the course, for example:
        Pass
        Fail
        Incomplete
        Withdrawn.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'CourseTranscriptPartialCourseTranscriptAwards', @level2type = N'COLUMN', @level2name = N'CourseAttemptResultDescriptorId';

EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'Reflects the type of employment or contract; for example:
        Probationary
        Contractual
        Substitute/temporary
        Tenured or permanent
        Volunteer/no contract
        ...', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StaffEducationOrganizationAssignmentAssociation', @level2type = N'COLUMN', @level2name = N'EmploymentStatusDescriptorId';

EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'Previous definition of Ethnicity combining Hispanic/Latino and race:
        1 - American Indian or Alaskan Native
        2 - Asian or Pacific Islander
        3 - Black, not of Hispanic origin
        4 - Hispanic
        5 - White, not of Hispanic origin.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssociation', @level2type = N'COLUMN', @level2name = N'OldEthnicityDescriptorId';
