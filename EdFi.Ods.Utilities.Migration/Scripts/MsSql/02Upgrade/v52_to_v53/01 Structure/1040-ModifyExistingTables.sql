-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

DROP INDEX [FK_Credential_CredentialFieldDescriptor]
    ON [edfi].[Credential];
GO

DROP INDEX [FK_Credential_TeachingCredentialDescriptor]
    ON [edfi].[Credential];
GO

ALTER TABLE [edfi].[StaffEducationOrganizationAssignmentAssociation] DROP CONSTRAINT [StaffEducationOrganizationAssignmentAssociation_DF_Id];
GO

ALTER TABLE [edfi].[StaffEducationOrganizationAssignmentAssociation] DROP CONSTRAINT [DF__StaffEduc__Chang__1E505424];
GO

ALTER TABLE [edfi].[StaffEducationOrganizationAssignmentAssociation] DROP CONSTRAINT [StaffEducationOrganizationAssignmentAssociation_DF_LastModifiedDate];
GO

ALTER TABLE [edfi].[StaffEducationOrganizationAssignmentAssociation] DROP CONSTRAINT [StaffEducationOrganizationAssignmentAssociation_DF_CreateDate];
GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociation] DROP CONSTRAINT [StudentEducationOrganizationAssociation_DF_CreateDate];
GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociation] DROP CONSTRAINT [StudentEducationOrganizationAssociation_DF_Id];
GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociation] DROP CONSTRAINT [StudentEducationOrganizationAssociation_DF_LastModifiedDate];
GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociation] DROP CONSTRAINT [DF__StudentEd__Chang__2C9E737B];
GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationCohortYear] DROP CONSTRAINT [StudentEducationOrganizationAssociationCohortYear_DF_CreateDate];
GO

ALTER TABLE [edfi].[Credential] DROP CONSTRAINT [FK_Credential_CredentialFieldDescriptor];
GO

ALTER TABLE [edfi].[Credential] DROP CONSTRAINT [FK_Credential_TeachingCredentialDescriptor];
GO

ALTER TABLE [edfi].[StaffEducationOrganizationAssignmentAssociation] DROP CONSTRAINT [FK_StaffEducationOrganizationAssignmentAssociation_Credential];
GO

ALTER TABLE [edfi].[StaffEducationOrganizationAssignmentAssociation] DROP CONSTRAINT [FK_StaffEducationOrganizationAssignmentAssociation_EducationOrganization];
GO

ALTER TABLE [edfi].[StaffEducationOrganizationAssignmentAssociation] DROP CONSTRAINT [FK_StaffEducationOrganizationAssignmentAssociation_Staff];
GO

ALTER TABLE [edfi].[StaffEducationOrganizationAssignmentAssociation] DROP CONSTRAINT [FK_StaffEducationOrganizationAssignmentAssociation_StaffClassificationDescriptor];
GO

ALTER TABLE [edfi].[StaffEducationOrganizationAssignmentAssociation] DROP CONSTRAINT [FK_StaffEducationOrganizationAssignmentAssociation_StaffEducationOrganizationEmploymentAssociation];
GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationAddress] DROP CONSTRAINT [FK_StudentEducationOrganizationAssociationAddress_StudentEducationOrganizationAssociation];
GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationAncestryEthnicOrigin] DROP CONSTRAINT [FK_StudentEducationOrganizationAssociationAncestryEthnicOrigin_StudentEducationOrganizationAssociation];
GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationCohortYear] DROP CONSTRAINT [FK_StudentEducationOrganizationAssociationCohortYear_StudentEducationOrganizationAssociation];
GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationDisability] DROP CONSTRAINT [FK_StudentEducationOrganizationAssociationDisability_StudentEducationOrganizationAssociation];
GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationElectronicMail] DROP CONSTRAINT [FK_StudentEducationOrganizationAssociationElectronicMail_StudentEducationOrganizationAssociation];
GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationInternationalAddress] DROP CONSTRAINT [FK_StudentEducationOrganizationAssociationInternationalAddress_StudentEducationOrganizationAssociation];
GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationLanguage] DROP CONSTRAINT [FK_StudentEducationOrganizationAssociationLanguage_StudentEducationOrganizationAssociation];
GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationProgramParticipation] DROP CONSTRAINT [FK_StudentEducationOrganizationAssociationProgramParticipation_StudentEducationOrganizationAssociation];
GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationRace] DROP CONSTRAINT [FK_StudentEducationOrganizationAssociationRace_StudentEducationOrganizationAssociation];
GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationStudentCharacteristic] DROP CONSTRAINT [FK_StudentEducationOrganizationAssociationStudentCharacteristic_StudentEducationOrganizationAssociation];
GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationStudentIdentificationCode] DROP CONSTRAINT [FK_StudentEducationOrganizationAssociationStudentIdentificationCode_StudentEducationOrganizationAssociation];
GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationStudentIndicator] DROP CONSTRAINT [FK_StudentEducationOrganizationAssociationStudentIndicator_StudentEducationOrganizationAssociation];
GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationTelephone] DROP CONSTRAINT [FK_StudentEducationOrganizationAssociationTelephone_StudentEducationOrganizationAssociation];
GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationTribalAffiliation] DROP CONSTRAINT [FK_StudentEducationOrganizationAssociationTribalAffiliation_StudentEducationOrganizationAssociation];
GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociation] DROP CONSTRAINT [FK_StudentEducationOrganizationAssociation_EducationOrganization];
GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociation] DROP CONSTRAINT [FK_StudentEducationOrganizationAssociation_LimitedEnglishProficiencyDescriptor];
GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociation] DROP CONSTRAINT [FK_StudentEducationOrganizationAssociation_OldEthnicityDescriptor];
GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociation] DROP CONSTRAINT [FK_StudentEducationOrganizationAssociation_SexDescriptor];
GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociation] DROP CONSTRAINT [FK_StudentEducationOrganizationAssociation_Student];
GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationCohortYear] DROP CONSTRAINT [FK_StudentEducationOrganizationAssociationCohortYear_CohortYearTypeDescriptor];
GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationCohortYear] DROP CONSTRAINT [FK_StudentEducationOrganizationAssociationCohortYear_SchoolYearType];
GO

ALTER TABLE [edfi].[Credential] ALTER COLUMN [CredentialFieldDescriptorId] INT NULL;

ALTER TABLE [edfi].[Credential] ALTER COLUMN [TeachingCredentialDescriptorId] INT NULL;
GO

CREATE NONCLUSTERED INDEX [FK_Credential_CredentialFieldDescriptor]
    ON [edfi].[Credential]([CredentialFieldDescriptorId] ASC);
GO

CREATE NONCLUSTERED INDEX [FK_Credential_TeachingCredentialDescriptor]
    ON [edfi].[Credential]([TeachingCredentialDescriptorId] ASC);
GO

BEGIN TRANSACTION;

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

SET XACT_ABORT ON;

CREATE TABLE [edfi].[tmp_ms_xx_StaffEducationOrganizationAssignmentAssociation] (
    [BeginDate]                                 DATE             NOT NULL,
    [EducationOrganizationId]                   INT              NOT NULL,
    [StaffClassificationDescriptorId]           INT              NOT NULL,
    [StaffUSI]                                  INT              NOT NULL,
    [PositionTitle]                             NVARCHAR (100)   NULL,
    [EndDate]                                   DATE             NULL,
    [OrderOfAssignment]                         INT              NULL,
    [EmploymentEducationOrganizationId]         INT              NULL,
    [EmploymentStatusDescriptorId]              INT              NULL,
    [EmploymentHireDate]                        DATE             NULL,
    [CredentialIdentifier]                      NVARCHAR (60)    NULL,
    [StateOfIssueStateAbbreviationDescriptorId] INT              NULL,
    [FullTimeEquivalency]                       DECIMAL (5, 4)   NULL,
    [Discriminator]                             NVARCHAR (128)   NULL,
    [CreateDate]                                DATETIME2 (7)    CONSTRAINT [StaffEducationOrganizationAssignmentAssociation_DF_CreateDate] DEFAULT (getdate()) NOT NULL,
    [LastModifiedDate]                          DATETIME2 (7)    CONSTRAINT [StaffEducationOrganizationAssignmentAssociation_DF_LastModifiedDate] DEFAULT (getdate()) NOT NULL,
    [Id]                                        UNIQUEIDENTIFIER CONSTRAINT [StaffEducationOrganizationAssignmentAssociation_DF_Id] DEFAULT (newid()) NOT NULL,
    [ChangeVersion]                             BIGINT           DEFAULT ( NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL,
    CONSTRAINT [tmp_ms_xx_constraint_StaffEducationOrganizationAssignmentAssociation_PK1] PRIMARY KEY CLUSTERED ([BeginDate] ASC, [EducationOrganizationId] ASC, [StaffClassificationDescriptorId] ASC, [StaffUSI] ASC)
);

IF EXISTS (SELECT TOP 1 1 
           FROM   [edfi].[StaffEducationOrganizationAssignmentAssociation])
    BEGIN
        INSERT INTO [edfi].[tmp_ms_xx_StaffEducationOrganizationAssignmentAssociation] ([BeginDate], [EducationOrganizationId], [StaffClassificationDescriptorId], [StaffUSI], [PositionTitle], [EndDate], [OrderOfAssignment], [EmploymentEducationOrganizationId], [EmploymentStatusDescriptorId], [EmploymentHireDate], [CredentialIdentifier], [StateOfIssueStateAbbreviationDescriptorId], [Discriminator], [CreateDate], [LastModifiedDate], [Id], [ChangeVersion])
        SELECT   [BeginDate],
                 [EducationOrganizationId],
                 [StaffClassificationDescriptorId],
                 [StaffUSI],
                 [PositionTitle],
                 [EndDate],
                 [OrderOfAssignment],
                 [EmploymentEducationOrganizationId],
                 [EmploymentStatusDescriptorId],
                 [EmploymentHireDate],
                 [CredentialIdentifier],
                 [StateOfIssueStateAbbreviationDescriptorId],
                 [Discriminator],
                 [CreateDate],
                 [LastModifiedDate],
                 [Id],
                 [ChangeVersion]
        FROM     [edfi].[StaffEducationOrganizationAssignmentAssociation]
        ORDER BY [BeginDate] ASC, [EducationOrganizationId] ASC, [StaffClassificationDescriptorId] ASC, [StaffUSI] ASC;
    END

DROP TABLE [edfi].[StaffEducationOrganizationAssignmentAssociation];

EXECUTE sp_rename N'[edfi].[tmp_ms_xx_StaffEducationOrganizationAssignmentAssociation]', N'StaffEducationOrganizationAssignmentAssociation';

EXECUTE sp_rename N'[edfi].[tmp_ms_xx_constraint_StaffEducationOrganizationAssignmentAssociation_PK1]', N'StaffEducationOrganizationAssignmentAssociation_PK', N'OBJECT';

COMMIT TRANSACTION;

SET TRANSACTION ISOLATION LEVEL READ COMMITTED;

GO

CREATE NONCLUSTERED INDEX [FK_StaffEducationOrganizationAssignmentAssociation_Credential]
    ON [edfi].[StaffEducationOrganizationAssignmentAssociation]([CredentialIdentifier] ASC, [StateOfIssueStateAbbreviationDescriptorId] ASC);


GO

CREATE NONCLUSTERED INDEX [FK_StaffEducationOrganizationAssignmentAssociation_EducationOrganization]
    ON [edfi].[StaffEducationOrganizationAssignmentAssociation]([EducationOrganizationId] ASC);


GO

CREATE NONCLUSTERED INDEX [FK_StaffEducationOrganizationAssignmentAssociation_Staff]
    ON [edfi].[StaffEducationOrganizationAssignmentAssociation]([StaffUSI] ASC);


GO

CREATE NONCLUSTERED INDEX [FK_StaffEducationOrganizationAssignmentAssociation_StaffClassificationDescriptor]
    ON [edfi].[StaffEducationOrganizationAssignmentAssociation]([StaffClassificationDescriptorId] ASC);


GO

CREATE NONCLUSTERED INDEX [FK_StaffEducationOrganizationAssignmentAssociation_StaffEducationOrganizationEmploymentAssociation]
    ON [edfi].[StaffEducationOrganizationAssignmentAssociation]([EmploymentEducationOrganizationId] ASC, [EmploymentStatusDescriptorId] ASC, [EmploymentHireDate] ASC, [StaffUSI] ASC);


GO

CREATE UNIQUE NONCLUSTERED INDEX [UX_StaffEducationOrganizationAssignmentAssociation_Id]
    ON [edfi].[StaffEducationOrganizationAssignmentAssociation]([Id] ASC) WITH (FILLFACTOR = 75, PAD_INDEX = ON);


GO

CREATE NONCLUSTERED INDEX [UX_StaffEducationOrganizationAssignmentAssociation_ChangeVersion]
    ON [edfi].[StaffEducationOrganizationAssignmentAssociation]([ChangeVersion] ASC);


GO

BEGIN TRANSACTION;

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

SET XACT_ABORT ON;

CREATE TABLE [edfi].[tmp_ms_xx_StudentEducationOrganizationAssociation] (
    [EducationOrganizationId]                         INT              NOT NULL,
    [StudentUSI]                                      INT              NOT NULL,
    [SexDescriptorId]                                 INT              NOT NULL,
    [ProfileThumbnail]                                NVARCHAR (255)   NULL,
    [HispanicLatinoEthnicity]                         BIT              NULL,
    [OldEthnicityDescriptorId]                        INT              NULL,
    [LimitedEnglishProficiencyDescriptorId]           INT              NULL,
    [LoginId]                                         NVARCHAR (60)    NULL,
    [PrimaryLearningDeviceAwayFromSchoolDescriptorId] INT              NULL,
    [PrimaryLearningDeviceAccessDescriptorId]         INT              NULL,
    [PrimaryLearningDeviceProviderDescriptorId]       INT              NULL,
    [InternetAccessInResidence]                       BIT              NULL,
    [BarrierToInternetAccessInResidenceDescriptorId]  INT              NULL,
    [InternetAccessTypeInResidenceDescriptorId]       INT              NULL,
    [InternetPerformanceInResidenceDescriptorId]      INT              NULL,
    [Discriminator]                                   NVARCHAR (128)   NULL,
    [CreateDate]                                      DATETIME2 (7)    CONSTRAINT [StudentEducationOrganizationAssociation_DF_CreateDate] DEFAULT (getdate()) NOT NULL,
    [LastModifiedDate]                                DATETIME2 (7)    CONSTRAINT [StudentEducationOrganizationAssociation_DF_LastModifiedDate] DEFAULT (getdate()) NOT NULL,
    [Id]                                              UNIQUEIDENTIFIER CONSTRAINT [StudentEducationOrganizationAssociation_DF_Id] DEFAULT (newid()) NOT NULL,
    [ChangeVersion]                                   BIGINT           DEFAULT ( NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL,
    CONSTRAINT [tmp_ms_xx_constraint_StudentEducationOrganizationAssociation_PK1] PRIMARY KEY CLUSTERED ([EducationOrganizationId] ASC, [StudentUSI] ASC)
);

IF EXISTS (SELECT TOP 1 1 
           FROM   [edfi].[StudentEducationOrganizationAssociation])
    BEGIN
        INSERT INTO [edfi].[tmp_ms_xx_StudentEducationOrganizationAssociation] ([EducationOrganizationId], [StudentUSI], [SexDescriptorId], [ProfileThumbnail], [HispanicLatinoEthnicity], [OldEthnicityDescriptorId], [LimitedEnglishProficiencyDescriptorId], [LoginId], [Discriminator], [CreateDate], [LastModifiedDate], [Id], [ChangeVersion])
        SELECT   [EducationOrganizationId],
                 [StudentUSI],
                 [SexDescriptorId],
                 [ProfileThumbnail],
                 [HispanicLatinoEthnicity],
                 [OldEthnicityDescriptorId],
                 [LimitedEnglishProficiencyDescriptorId],
                 [LoginId],
                 [Discriminator],
                 [CreateDate],
                 [LastModifiedDate],
                 [Id],
                 [ChangeVersion]
        FROM     [edfi].[StudentEducationOrganizationAssociation]
        ORDER BY [EducationOrganizationId] ASC, [StudentUSI] ASC;
    END

DROP TABLE [edfi].[StudentEducationOrganizationAssociation];

EXECUTE sp_rename N'[edfi].[tmp_ms_xx_StudentEducationOrganizationAssociation]', N'StudentEducationOrganizationAssociation';

EXECUTE sp_rename N'[edfi].[tmp_ms_xx_constraint_StudentEducationOrganizationAssociation_PK1]', N'StudentEducationOrganizationAssociation_PK', N'OBJECT';

COMMIT TRANSACTION;

SET TRANSACTION ISOLATION LEVEL READ COMMITTED;


GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociation_BarrierToInternetAccessInResidenceDescriptor]
    ON [edfi].[StudentEducationOrganizationAssociation]([BarrierToInternetAccessInResidenceDescriptorId] ASC);


GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociation_EducationOrganization]
    ON [edfi].[StudentEducationOrganizationAssociation]([EducationOrganizationId] ASC);


GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociation_InternetAccessTypeInResidenceDescriptor]
    ON [edfi].[StudentEducationOrganizationAssociation]([InternetAccessTypeInResidenceDescriptorId] ASC);


GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociation_InternetPerformanceInResidenceDescriptor]
    ON [edfi].[StudentEducationOrganizationAssociation]([InternetPerformanceInResidenceDescriptorId] ASC);


GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociation_LimitedEnglishProficiencyDescriptor]
    ON [edfi].[StudentEducationOrganizationAssociation]([LimitedEnglishProficiencyDescriptorId] ASC);


GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociation_OldEthnicityDescriptor]
    ON [edfi].[StudentEducationOrganizationAssociation]([OldEthnicityDescriptorId] ASC);


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

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociation_SexDescriptor]
    ON [edfi].[StudentEducationOrganizationAssociation]([SexDescriptorId] ASC);


GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociation_Student]
    ON [edfi].[StudentEducationOrganizationAssociation]([StudentUSI] ASC);


GO

CREATE UNIQUE NONCLUSTERED INDEX [UX_StudentEducationOrganizationAssociation_Id]
    ON [edfi].[StudentEducationOrganizationAssociation]([Id] ASC) WITH (FILLFACTOR = 75, PAD_INDEX = ON);


GO

CREATE NONCLUSTERED INDEX [UX_StudentEducationOrganizationAssociation_ChangeVersion]
    ON [edfi].[StudentEducationOrganizationAssociation]([ChangeVersion] ASC);


GO

BEGIN TRANSACTION;

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

SET XACT_ABORT ON;

CREATE TABLE [edfi].[tmp_ms_xx_StudentEducationOrganizationAssociationCohortYear] (
    [CohortYearTypeDescriptorId] INT           NOT NULL,
    [EducationOrganizationId]    INT           NOT NULL,
    [SchoolYear]                 SMALLINT      NOT NULL,
    [StudentUSI]                 INT           NOT NULL,
    [TermDescriptorId]           INT           NULL,
    [CreateDate]                 DATETIME2 (7) CONSTRAINT [StudentEducationOrganizationAssociationCohortYear_DF_CreateDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [tmp_ms_xx_constraint_StudentEducationOrganizationAssociationCohortYear_PK1] PRIMARY KEY CLUSTERED ([CohortYearTypeDescriptorId] ASC, [EducationOrganizationId] ASC, [SchoolYear] ASC, [StudentUSI] ASC)
);

IF EXISTS (SELECT TOP 1 1 
           FROM   [edfi].[StudentEducationOrganizationAssociationCohortYear])
    BEGIN
        INSERT INTO [edfi].[tmp_ms_xx_StudentEducationOrganizationAssociationCohortYear] ([CohortYearTypeDescriptorId], [EducationOrganizationId], [SchoolYear], [StudentUSI], [CreateDate])
        SELECT   [CohortYearTypeDescriptorId],
                 [EducationOrganizationId],
                 [SchoolYear],
                 [StudentUSI],
                 [CreateDate]
        FROM     [edfi].[StudentEducationOrganizationAssociationCohortYear]
        ORDER BY [CohortYearTypeDescriptorId] ASC, [EducationOrganizationId] ASC, [SchoolYear] ASC, [StudentUSI] ASC;
    END

DROP TABLE [edfi].[StudentEducationOrganizationAssociationCohortYear];

EXECUTE sp_rename N'[edfi].[tmp_ms_xx_StudentEducationOrganizationAssociationCohortYear]', N'StudentEducationOrganizationAssociationCohortYear';

EXECUTE sp_rename N'[edfi].[tmp_ms_xx_constraint_StudentEducationOrganizationAssociationCohortYear_PK1]', N'StudentEducationOrganizationAssociationCohortYear_PK', N'OBJECT';

COMMIT TRANSACTION;

SET TRANSACTION ISOLATION LEVEL READ COMMITTED;


GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationCohortYear_CohortYearTypeDescriptor]
    ON [edfi].[StudentEducationOrganizationAssociationCohortYear]([CohortYearTypeDescriptorId] ASC);


GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationCohortYear_SchoolYearType]
    ON [edfi].[StudentEducationOrganizationAssociationCohortYear]([SchoolYear] ASC);


GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationCohortYear_StudentEducationOrganizationAssociation]
    ON [edfi].[StudentEducationOrganizationAssociationCohortYear]([EducationOrganizationId] ASC, [StudentUSI] ASC);


GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationCohortYear_TermDescriptor]
    ON [edfi].[StudentEducationOrganizationAssociationCohortYear]([TermDescriptorId] ASC);


GO

ALTER TABLE [edfi].[StudentSchoolAssociation] ALTER COLUMN [FullTimeEquivalency] DECIMAL (5, 4) NULL;


GO

ALTER TABLE [edfi].[Credential] WITH NOCHECK
    ADD CONSTRAINT [FK_Credential_CredentialFieldDescriptor] FOREIGN KEY ([CredentialFieldDescriptorId]) REFERENCES [edfi].[CredentialFieldDescriptor] ([CredentialFieldDescriptorId]);


GO

ALTER TABLE [edfi].[Credential] WITH NOCHECK
    ADD CONSTRAINT [FK_Credential_TeachingCredentialDescriptor] FOREIGN KEY ([TeachingCredentialDescriptorId]) REFERENCES [edfi].[TeachingCredentialDescriptor] ([TeachingCredentialDescriptorId]);


GO

ALTER TABLE [edfi].[StaffEducationOrganizationAssignmentAssociation] WITH NOCHECK
    ADD CONSTRAINT [FK_StaffEducationOrganizationAssignmentAssociation_Credential] FOREIGN KEY ([CredentialIdentifier], [StateOfIssueStateAbbreviationDescriptorId]) REFERENCES [edfi].[Credential] ([CredentialIdentifier], [StateOfIssueStateAbbreviationDescriptorId]);


GO

ALTER TABLE [edfi].[StaffEducationOrganizationAssignmentAssociation] WITH NOCHECK
    ADD CONSTRAINT [FK_StaffEducationOrganizationAssignmentAssociation_EducationOrganization] FOREIGN KEY ([EducationOrganizationId]) REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId]);


GO

ALTER TABLE [edfi].[StaffEducationOrganizationAssignmentAssociation] WITH NOCHECK
    ADD CONSTRAINT [FK_StaffEducationOrganizationAssignmentAssociation_Staff] FOREIGN KEY ([StaffUSI]) REFERENCES [edfi].[Staff] ([StaffUSI]);


GO

ALTER TABLE [edfi].[StaffEducationOrganizationAssignmentAssociation] WITH NOCHECK
    ADD CONSTRAINT [FK_StaffEducationOrganizationAssignmentAssociation_StaffClassificationDescriptor] FOREIGN KEY ([StaffClassificationDescriptorId]) REFERENCES [edfi].[StaffClassificationDescriptor] ([StaffClassificationDescriptorId]);


GO

ALTER TABLE [edfi].[StaffEducationOrganizationAssignmentAssociation] WITH NOCHECK
    ADD CONSTRAINT [FK_StaffEducationOrganizationAssignmentAssociation_StaffEducationOrganizationEmploymentAssociation] FOREIGN KEY ([EmploymentEducationOrganizationId], [EmploymentStatusDescriptorId], [EmploymentHireDate], [StaffUSI]) REFERENCES [edfi].[StaffEducationOrganizationEmploymentAssociation] ([EducationOrganizationId], [EmploymentStatusDescriptorId], [HireDate], [StaffUSI]);


GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationAddress] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationAddress_StudentEducationOrganizationAssociation] FOREIGN KEY ([EducationOrganizationId], [StudentUSI]) REFERENCES [edfi].[StudentEducationOrganizationAssociation] ([EducationOrganizationId], [StudentUSI]) ON DELETE CASCADE;


GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationAncestryEthnicOrigin] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationAncestryEthnicOrigin_StudentEducationOrganizationAssociation] FOREIGN KEY ([EducationOrganizationId], [StudentUSI]) REFERENCES [edfi].[StudentEducationOrganizationAssociation] ([EducationOrganizationId], [StudentUSI]) ON DELETE CASCADE;


GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationCohortYear] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationCohortYear_StudentEducationOrganizationAssociation] FOREIGN KEY ([EducationOrganizationId], [StudentUSI]) REFERENCES [edfi].[StudentEducationOrganizationAssociation] ([EducationOrganizationId], [StudentUSI]) ON DELETE CASCADE;


GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationDisability] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationDisability_StudentEducationOrganizationAssociation] FOREIGN KEY ([EducationOrganizationId], [StudentUSI]) REFERENCES [edfi].[StudentEducationOrganizationAssociation] ([EducationOrganizationId], [StudentUSI]) ON DELETE CASCADE;


GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationElectronicMail] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationElectronicMail_StudentEducationOrganizationAssociation] FOREIGN KEY ([EducationOrganizationId], [StudentUSI]) REFERENCES [edfi].[StudentEducationOrganizationAssociation] ([EducationOrganizationId], [StudentUSI]) ON DELETE CASCADE;


GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationInternationalAddress] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationInternationalAddress_StudentEducationOrganizationAssociation] FOREIGN KEY ([EducationOrganizationId], [StudentUSI]) REFERENCES [edfi].[StudentEducationOrganizationAssociation] ([EducationOrganizationId], [StudentUSI]) ON DELETE CASCADE;


GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationLanguage] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationLanguage_StudentEducationOrganizationAssociation] FOREIGN KEY ([EducationOrganizationId], [StudentUSI]) REFERENCES [edfi].[StudentEducationOrganizationAssociation] ([EducationOrganizationId], [StudentUSI]) ON DELETE CASCADE;


GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationProgramParticipation] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationProgramParticipation_StudentEducationOrganizationAssociation] FOREIGN KEY ([EducationOrganizationId], [StudentUSI]) REFERENCES [edfi].[StudentEducationOrganizationAssociation] ([EducationOrganizationId], [StudentUSI]) ON DELETE CASCADE;


GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationRace] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationRace_StudentEducationOrganizationAssociation] FOREIGN KEY ([EducationOrganizationId], [StudentUSI]) REFERENCES [edfi].[StudentEducationOrganizationAssociation] ([EducationOrganizationId], [StudentUSI]) ON DELETE CASCADE;


GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationStudentCharacteristic] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationStudentCharacteristic_StudentEducationOrganizationAssociation] FOREIGN KEY ([EducationOrganizationId], [StudentUSI]) REFERENCES [edfi].[StudentEducationOrganizationAssociation] ([EducationOrganizationId], [StudentUSI]) ON DELETE CASCADE;


GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationStudentIdentificationCode] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationStudentIdentificationCode_StudentEducationOrganizationAssociation] FOREIGN KEY ([EducationOrganizationId], [StudentUSI]) REFERENCES [edfi].[StudentEducationOrganizationAssociation] ([EducationOrganizationId], [StudentUSI]) ON DELETE CASCADE;


GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationStudentIndicator] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationStudentIndicator_StudentEducationOrganizationAssociation] FOREIGN KEY ([EducationOrganizationId], [StudentUSI]) REFERENCES [edfi].[StudentEducationOrganizationAssociation] ([EducationOrganizationId], [StudentUSI]) ON DELETE CASCADE;


GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationTelephone] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationTelephone_StudentEducationOrganizationAssociation] FOREIGN KEY ([EducationOrganizationId], [StudentUSI]) REFERENCES [edfi].[StudentEducationOrganizationAssociation] ([EducationOrganizationId], [StudentUSI]) ON DELETE CASCADE;


GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationTribalAffiliation] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationTribalAffiliation_StudentEducationOrganizationAssociation] FOREIGN KEY ([EducationOrganizationId], [StudentUSI]) REFERENCES [edfi].[StudentEducationOrganizationAssociation] ([EducationOrganizationId], [StudentUSI]) ON DELETE CASCADE;


GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociation] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentEducationOrganizationAssociation_EducationOrganization] FOREIGN KEY ([EducationOrganizationId]) REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId]);


GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociation] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentEducationOrganizationAssociation_LimitedEnglishProficiencyDescriptor] FOREIGN KEY ([LimitedEnglishProficiencyDescriptorId]) REFERENCES [edfi].[LimitedEnglishProficiencyDescriptor] ([LimitedEnglishProficiencyDescriptorId]);


GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociation] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentEducationOrganizationAssociation_OldEthnicityDescriptor] FOREIGN KEY ([OldEthnicityDescriptorId]) REFERENCES [edfi].[OldEthnicityDescriptor] ([OldEthnicityDescriptorId]);


GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociation] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentEducationOrganizationAssociation_SexDescriptor] FOREIGN KEY ([SexDescriptorId]) REFERENCES [edfi].[SexDescriptor] ([SexDescriptorId]);


GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociation] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentEducationOrganizationAssociation_Student] FOREIGN KEY ([StudentUSI]) REFERENCES [edfi].[Student] ([StudentUSI]);


GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociation] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentEducationOrganizationAssociation_BarrierToInternetAccessInResidenceDescriptor] FOREIGN KEY ([BarrierToInternetAccessInResidenceDescriptorId]) REFERENCES [edfi].[BarrierToInternetAccessInResidenceDescriptor] ([BarrierToInternetAccessInResidenceDescriptorId]);


GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociation] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentEducationOrganizationAssociation_InternetAccessTypeInResidenceDescriptor] FOREIGN KEY ([InternetAccessTypeInResidenceDescriptorId]) REFERENCES [edfi].[InternetAccessTypeInResidenceDescriptor] ([InternetAccessTypeInResidenceDescriptorId]);


GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociation] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentEducationOrganizationAssociation_InternetPerformanceInResidenceDescriptor] FOREIGN KEY ([InternetPerformanceInResidenceDescriptorId]) REFERENCES [edfi].[InternetPerformanceInResidenceDescriptor] ([InternetPerformanceInResidenceDescriptorId]);


GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociation] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentEducationOrganizationAssociation_PrimaryLearningDeviceAccessDescriptor] FOREIGN KEY ([PrimaryLearningDeviceAccessDescriptorId]) REFERENCES [edfi].[PrimaryLearningDeviceAccessDescriptor] ([PrimaryLearningDeviceAccessDescriptorId]);


GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociation] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentEducationOrganizationAssociation_PrimaryLearningDeviceAwayFromSchoolDescriptor] FOREIGN KEY ([PrimaryLearningDeviceAwayFromSchoolDescriptorId]) REFERENCES [edfi].[PrimaryLearningDeviceAwayFromSchoolDescriptor] ([PrimaryLearningDeviceAwayFromSchoolDescriptorId]);


GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociation] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentEducationOrganizationAssociation_PrimaryLearningDeviceProviderDescriptor] FOREIGN KEY ([PrimaryLearningDeviceProviderDescriptorId]) REFERENCES [edfi].[PrimaryLearningDeviceProviderDescriptor] ([PrimaryLearningDeviceProviderDescriptorId]);


GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationCohortYear] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationCohortYear_CohortYearTypeDescriptor] FOREIGN KEY ([CohortYearTypeDescriptorId]) REFERENCES [edfi].[CohortYearTypeDescriptor] ([CohortYearTypeDescriptorId]);


GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationCohortYear] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationCohortYear_SchoolYearType] FOREIGN KEY ([SchoolYear]) REFERENCES [edfi].[SchoolYearType] ([SchoolYear]);


GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationCohortYear] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationCohortYear_TermDescriptor] FOREIGN KEY ([TermDescriptorId]) REFERENCES [edfi].[TermDescriptor] ([TermDescriptorId]);


GO

CREATE TRIGGER [edfi].[edfi_StaffEducationOrganizationAssignmentAssociation_TR_DeleteTracking] ON [edfi].[StaffEducationOrganizationAssignmentAssociation] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_edfi].[StaffEducationOrganizationAssignmentAssociation](BeginDate, EducationOrganizationId, StaffClassificationDescriptorId, StaffUSI, Id, ChangeVersion)
    SELECT  BeginDate, EducationOrganizationId, StaffClassificationDescriptorId, StaffUSI, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

CREATE TRIGGER [edfi].[edfi_StaffEducationOrganizationAssignmentAssociation_TR_UpdateChangeVersion] ON [edfi].[StaffEducationOrganizationAssignmentAssociation] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [edfi].[StaffEducationOrganizationAssignmentAssociation]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [edfi].[StaffEducationOrganizationAssignmentAssociation] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END
GO

CREATE TRIGGER [edfi].[edfi_StudentEducationOrganizationAssociation_TR_UpdateChangeVersion] ON [edfi].[StudentEducationOrganizationAssociation] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [edfi].[StudentEducationOrganizationAssociation]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [edfi].[StudentEducationOrganizationAssociation] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END
GO

CREATE TRIGGER [edfi].[edfi_StudentEducationOrganizationAssociation_TR_DeleteTracking] ON [edfi].[StudentEducationOrganizationAssociation] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_edfi].[StudentEducationOrganizationAssociation](EducationOrganizationId, StudentUSI, Id, ChangeVersion)
    SELECT  EducationOrganizationId, StudentUSI, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER FUNCTION util.GetEdFiOdsVersion()
RETURNS VARCHAR(60)
AS
BEGIN
    RETURN '5.3'
END
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'This association indicates the education organization to which a staff member provides services.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StaffEducationOrganizationAssignmentAssociation';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Month, day, and year of the start or effective date of a staff member''s employment, contract, or relationship with the education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StaffEducationOrganizationAssignmentAssociation', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StaffEducationOrganizationAssignmentAssociation', @level2type = N'COLUMN', @level2name = N'EducationOrganizationId';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The titles of employment, official status, or rank of education staff.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StaffEducationOrganizationAssignmentAssociation', @level2type = N'COLUMN', @level2name = N'StaffClassificationDescriptorId';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique alphanumeric code assigned to a staff.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StaffEducationOrganizationAssignmentAssociation', @level2type = N'COLUMN', @level2name = N'StaffUSI';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The descriptive name of an individual''s position.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StaffEducationOrganizationAssignmentAssociation', @level2type = N'COLUMN', @level2name = N'PositionTitle';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Month, day, and year of the end or termination date of a staff member''s employment, contract, or relationship with the education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StaffEducationOrganizationAssignmentAssociation', @level2type = N'COLUMN', @level2name = N'EndDate';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Describes whether the assignment is this the staff member''s primary assignment, secondary assignment, etc.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StaffEducationOrganizationAssignmentAssociation', @level2type = N'COLUMN', @level2name = N'OrderOfAssignment';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StaffEducationOrganizationAssignmentAssociation', @level2type = N'COLUMN', @level2name = N'EmploymentEducationOrganizationId';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Reflects the type of employment or contract; for example:
        Probationary
        Contractual
        Substitute/temporary
        Tenured or permanent
        Volunteer/no contract
        ...', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StaffEducationOrganizationAssignmentAssociation', @level2type = N'COLUMN', @level2name = N'EmploymentStatusDescriptorId';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The month, day, and year on which an individual was hired for a position.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StaffEducationOrganizationAssignmentAssociation', @level2type = N'COLUMN', @level2name = N'EmploymentHireDate';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identifier or serial number assigned to the credential.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StaffEducationOrganizationAssignmentAssociation', @level2type = N'COLUMN', @level2name = N'CredentialIdentifier';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The abbreviation for the name of the state (within the United States) or extra-state jurisdiction in which a license/credential was issued.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StaffEducationOrganizationAssignmentAssociation', @level2type = N'COLUMN', @level2name = N'StateOfIssueStateAbbreviationDescriptorId';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The ratio between the hours of work expected in a position and the hours of work normally expected in a full-time position in the same setting.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StaffEducationOrganizationAssignmentAssociation', @level2type = N'COLUMN', @level2name = N'FullTimeEquivalency';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'This association represents student information as reported in the context of the student''s relationship to the Education Organization. Enrollment relationship semantics are covered by StudentSchoolAssociation.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssociation';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssociation', @level2type = N'COLUMN', @level2name = N'EducationOrganizationId';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique alphanumeric code assigned to a student.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssociation', @level2type = N'COLUMN', @level2name = N'StudentUSI';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The student''s gender as last reported to the education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssociation', @level2type = N'COLUMN', @level2name = N'SexDescriptorId';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Locator reference for the student photo. The specification for that reference is left to local definition.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssociation', @level2type = N'COLUMN', @level2name = N'ProfileThumbnail';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'An indication that the individual traces his or her origin or descent to Mexico, Puerto Rico, Cuba, Central, and South America, and other Spanish cultures, regardless of race, as last reported to the education organization. The term, "Spanish origin," can be used in addition to "Hispanic or Latino."', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssociation', @level2type = N'COLUMN', @level2name = N'HispanicLatinoEthnicity';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Previous definition of Ethnicity combining Hispanic/Latino and race:
        1 - American Indian or Alaskan Native
        2 - Asian or Pacific Islander
        3 - Black, not of Hispanic origin
        4 - Hispanic
        5 - White, not of Hispanic origin.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssociation', @level2type = N'COLUMN', @level2name = N'OldEthnicityDescriptorId';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'An indication that the student has been identified as limited English proficient by the Language Proficiency Assessment Committee (LPAC), or English proficient.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssociation', @level2type = N'COLUMN', @level2name = N'LimitedEnglishProficiencyDescriptorId';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The login ID for the user; used for security access control interface.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssociation', @level2type = N'COLUMN', @level2name = N'LoginId';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The type of device the student uses most often to complete learning activities away from school.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssociation', @level2type = N'COLUMN', @level2name = N'PrimaryLearningDeviceAwayFromSchoolDescriptorId';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'An indication of whether the primary learning device is shared or not shared with another individual.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssociation', @level2type = N'COLUMN', @level2name = N'PrimaryLearningDeviceAccessDescriptorId';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The provider of the primary learning device.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssociation', @level2type = N'COLUMN', @level2name = N'PrimaryLearningDeviceProviderDescriptorId';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'An indication of whether the student is able to access the internet in their primary place of residence.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssociation', @level2type = N'COLUMN', @level2name = N'InternetAccessInResidence';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'An indication of the barrier to having internet access in the student’s primary place of residence.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssociation', @level2type = N'COLUMN', @level2name = N'BarrierToInternetAccessInResidenceDescriptorId';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The primary type of internet service used in the student’s primary place of residence.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssociation', @level2type = N'COLUMN', @level2name = N'InternetAccessTypeInResidenceDescriptorId';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'An indication of whether the student can complete the full range of learning activities, including video streaming and assignment upload, without interruptions caused by poor internet performance in their primary place of residence.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssociation', @level2type = N'COLUMN', @level2name = N'InternetPerformanceInResidenceDescriptorId';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The type and year of a cohort (e.g., 9th grade) the student belongs to as determined by the year that student entered a specific grade.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssociationCohortYear';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The type of cohort year (9th grade, graduation).', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssociationCohortYear', @level2type = N'COLUMN', @level2name = N'CohortYearTypeDescriptorId';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssociationCohortYear', @level2type = N'COLUMN', @level2name = N'EducationOrganizationId';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The school year associated with the cohort; for example, the intended school year of graduation.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssociationCohortYear', @level2type = N'COLUMN', @level2name = N'SchoolYear';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique alphanumeric code assigned to a student.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssociationCohortYear', @level2type = N'COLUMN', @level2name = N'StudentUSI';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The term associated with the cohort year; for example, the intended term of graduation.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssociationCohortYear', @level2type = N'COLUMN', @level2name = N'TermDescriptorId';


GO

EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The result from the student''s attempt to take the course, for example:
        Pass
        Fail
        Incomplete
        Withdrawn.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'CourseTranscript', @level2type = N'COLUMN', @level2name = N'CourseAttemptResultDescriptorId';


GO

EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The result from the student''s attempt to take the course, for example:
        Pass
        Fail
        Incomplete
        Withdrawn.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'CourseTranscriptPartialCourseTranscriptAwards', @level2type = N'COLUMN', @level2name = N'CourseAttemptResultDescriptorId';


GO

EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'A code describing the attendance event, for example:
        Present
        Unexcused absence
        Excused absence
        Tardy.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSectionAttendanceEventClassPeriod', @level2type = N'COLUMN', @level2name = N'AttendanceEventCategoryDescriptorId';


GO


ALTER TABLE [edfi].[Credential] WITH CHECK CHECK CONSTRAINT [FK_Credential_TeachingCredentialDescriptor];

ALTER TABLE [edfi].[StaffEducationOrganizationAssignmentAssociation] WITH CHECK CHECK CONSTRAINT [FK_StaffEducationOrganizationAssignmentAssociation_Credential];

ALTER TABLE [edfi].[StaffEducationOrganizationAssignmentAssociation] WITH CHECK CHECK CONSTRAINT [FK_StaffEducationOrganizationAssignmentAssociation_EducationOrganization];

ALTER TABLE [edfi].[StaffEducationOrganizationAssignmentAssociation] WITH CHECK CHECK CONSTRAINT [FK_StaffEducationOrganizationAssignmentAssociation_Staff];

ALTER TABLE [edfi].[StaffEducationOrganizationAssignmentAssociation] WITH CHECK CHECK CONSTRAINT [FK_StaffEducationOrganizationAssignmentAssociation_StaffClassificationDescriptor];

ALTER TABLE [edfi].[StaffEducationOrganizationAssignmentAssociation] WITH CHECK CHECK CONSTRAINT [FK_StaffEducationOrganizationAssignmentAssociation_StaffEducationOrganizationEmploymentAssociation];

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationAddress] WITH CHECK CHECK CONSTRAINT [FK_StudentEducationOrganizationAssociationAddress_StudentEducationOrganizationAssociation];

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationAncestryEthnicOrigin] WITH CHECK CHECK CONSTRAINT [FK_StudentEducationOrganizationAssociationAncestryEthnicOrigin_StudentEducationOrganizationAssociation];

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationCohortYear] WITH CHECK CHECK CONSTRAINT [FK_StudentEducationOrganizationAssociationCohortYear_StudentEducationOrganizationAssociation];

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationDisability] WITH CHECK CHECK CONSTRAINT [FK_StudentEducationOrganizationAssociationDisability_StudentEducationOrganizationAssociation];

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationElectronicMail] WITH CHECK CHECK CONSTRAINT [FK_StudentEducationOrganizationAssociationElectronicMail_StudentEducationOrganizationAssociation];

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationInternationalAddress] WITH CHECK CHECK CONSTRAINT [FK_StudentEducationOrganizationAssociationInternationalAddress_StudentEducationOrganizationAssociation];

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationLanguage] WITH CHECK CHECK CONSTRAINT [FK_StudentEducationOrganizationAssociationLanguage_StudentEducationOrganizationAssociation];

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationProgramParticipation] WITH CHECK CHECK CONSTRAINT [FK_StudentEducationOrganizationAssociationProgramParticipation_StudentEducationOrganizationAssociation];

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationRace] WITH CHECK CHECK CONSTRAINT [FK_StudentEducationOrganizationAssociationRace_StudentEducationOrganizationAssociation];

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationStudentCharacteristic] WITH CHECK CHECK CONSTRAINT [FK_StudentEducationOrganizationAssociationStudentCharacteristic_StudentEducationOrganizationAssociation];

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationStudentIdentificationCode] WITH CHECK CHECK CONSTRAINT [FK_StudentEducationOrganizationAssociationStudentIdentificationCode_StudentEducationOrganizationAssociation];

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationStudentIndicator] WITH CHECK CHECK CONSTRAINT [FK_StudentEducationOrganizationAssociationStudentIndicator_StudentEducationOrganizationAssociation];

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationTelephone] WITH CHECK CHECK CONSTRAINT [FK_StudentEducationOrganizationAssociationTelephone_StudentEducationOrganizationAssociation];

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationTribalAffiliation] WITH CHECK CHECK CONSTRAINT [FK_StudentEducationOrganizationAssociationTribalAffiliation_StudentEducationOrganizationAssociation];

ALTER TABLE [edfi].[StudentEducationOrganizationAssociation] WITH CHECK CHECK CONSTRAINT [FK_StudentEducationOrganizationAssociation_EducationOrganization];

ALTER TABLE [edfi].[StudentEducationOrganizationAssociation] WITH CHECK CHECK CONSTRAINT [FK_StudentEducationOrganizationAssociation_LimitedEnglishProficiencyDescriptor];

ALTER TABLE [edfi].[StudentEducationOrganizationAssociation] WITH CHECK CHECK CONSTRAINT [FK_StudentEducationOrganizationAssociation_OldEthnicityDescriptor];

ALTER TABLE [edfi].[StudentEducationOrganizationAssociation] WITH CHECK CHECK CONSTRAINT [FK_StudentEducationOrganizationAssociation_SexDescriptor];

ALTER TABLE [edfi].[StudentEducationOrganizationAssociation] WITH CHECK CHECK CONSTRAINT [FK_StudentEducationOrganizationAssociation_Student];

ALTER TABLE [edfi].[StudentEducationOrganizationAssociation] WITH CHECK CHECK CONSTRAINT [FK_StudentEducationOrganizationAssociation_BarrierToInternetAccessInResidenceDescriptor];

ALTER TABLE [edfi].[StudentEducationOrganizationAssociation] WITH CHECK CHECK CONSTRAINT [FK_StudentEducationOrganizationAssociation_InternetAccessTypeInResidenceDescriptor];

ALTER TABLE [edfi].[StudentEducationOrganizationAssociation] WITH CHECK CHECK CONSTRAINT [FK_StudentEducationOrganizationAssociation_InternetPerformanceInResidenceDescriptor];

ALTER TABLE [edfi].[StudentEducationOrganizationAssociation] WITH CHECK CHECK CONSTRAINT [FK_StudentEducationOrganizationAssociation_PrimaryLearningDeviceAccessDescriptor];

ALTER TABLE [edfi].[StudentEducationOrganizationAssociation] WITH CHECK CHECK CONSTRAINT [FK_StudentEducationOrganizationAssociation_PrimaryLearningDeviceAwayFromSchoolDescriptor];

ALTER TABLE [edfi].[StudentEducationOrganizationAssociation] WITH CHECK CHECK CONSTRAINT [FK_StudentEducationOrganizationAssociation_PrimaryLearningDeviceProviderDescriptor];

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationCohortYear] WITH CHECK CHECK CONSTRAINT [FK_StudentEducationOrganizationAssociationCohortYear_CohortYearTypeDescriptor];

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationCohortYear] WITH CHECK CHECK CONSTRAINT [FK_StudentEducationOrganizationAssociationCohortYear_SchoolYearType];

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationCohortYear] WITH CHECK CHECK CONSTRAINT [FK_StudentEducationOrganizationAssociationCohortYear_TermDescriptor];

GO
