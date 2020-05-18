-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Starting Change Queries table updates for upgrading Ed-Fi v3.1 to Ed-Fi v3.2 ...';

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[changes].[edfi_CTEProgramServiceDescriptor_TrackedDelete]') AND type in (N'U'))
BEGIN
    PRINT N'Creating [changes].[edfi_CTEProgramServiceDescriptor_TrackedDelete]...';

    CREATE TABLE [changes].[edfi_CTEProgramServiceDescriptor_TrackedDelete] (
        [CTEProgramServiceDescriptorId] INT              NOT NULL,
        [Id]                            UNIQUEIDENTIFIER NOT NULL,
        [ChangeVersion]                 BIGINT           NOT NULL,
        CONSTRAINT [PK_edfi_CTEProgramServiceDescriptor_TrackedDelete] PRIMARY KEY CLUSTERED ([ChangeVersion] ASC)
    );
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[changes].[edfi_DisciplineIncidentParticipationCodeDescriptor_TrackedDelete]') AND type in (N'U'))
BEGIN
    PRINT N'Creating [changes].[edfi_DisciplineIncidentParticipationCodeDescriptor_TrackedDelete]...';

    CREATE TABLE [changes].[edfi_DisciplineIncidentParticipationCodeDescriptor_TrackedDelete] (
        [DisciplineIncidentParticipationCodeDescriptorId] INT              NOT NULL,
        [Id]                                              UNIQUEIDENTIFIER NOT NULL,
        [ChangeVersion]                                   BIGINT           NOT NULL,
        CONSTRAINT [PK_edfi_DisciplineIncidentParticipationCodeDescriptor_TrackedDelete] PRIMARY KEY CLUSTERED ([ChangeVersion] ASC)
    );
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[changes].[edfi_GradePointAverageWeightSystemDescriptor_TrackedDelete]') AND type in (N'U'))
BEGIN
    PRINT N'Creating [changes].[edfi_GradePointAverageWeightSystemDescriptor_TrackedDelete]...';

    CREATE TABLE [changes].[edfi_GradePointAverageWeightSystemDescriptor_TrackedDelete] (
        [GradePointAverageWeightSystemDescriptorId] INT              NOT NULL,
        [Id]                                        UNIQUEIDENTIFIER NOT NULL,
        [ChangeVersion]                             BIGINT           NOT NULL,
        CONSTRAINT [PK_edfi_GradePointAverageWeightSystemDescriptor_TrackedDelete] PRIMARY KEY CLUSTERED ([ChangeVersion] ASC)
    );
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[changes].[edfi_LearningStandardEquivalenceAssociation_TrackedDelete]') AND type in (N'U'))
BEGIN
    PRINT N'Creating [changes].[edfi_LearningStandardEquivalenceAssociation_TrackedDelete]...';

    CREATE TABLE [changes].[edfi_LearningStandardEquivalenceAssociation_TrackedDelete] (
        [Namespace]                NVARCHAR (255)   NOT NULL,
        [SourceLearningStandardId] NVARCHAR (60)    NOT NULL,
        [TargetLearningStandardId] NVARCHAR (60)    NOT NULL,
        [Id]                       UNIQUEIDENTIFIER NOT NULL,
        [ChangeVersion]            BIGINT           NOT NULL,
        CONSTRAINT [PK_edfi_LearningStandardEquivalenceAssociation_TrackedDelete] PRIMARY KEY CLUSTERED ([ChangeVersion] ASC)
    );
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[changes].[edfi_LearningStandardEquivalenceStrengthDescriptor_TrackedDelete]') AND type in (N'U'))
BEGIN
    PRINT N'Creating [changes].[edfi_LearningStandardEquivalenceStrengthDescriptor_TrackedDelete]...';

    CREATE TABLE [changes].[edfi_LearningStandardEquivalenceStrengthDescriptor_TrackedDelete] (
        [LearningStandardEquivalenceStrengthDescriptorId] INT              NOT NULL,
        [Id]                                              UNIQUEIDENTIFIER NOT NULL,
        [ChangeVersion]                                   BIGINT           NOT NULL,
        CONSTRAINT [PK_edfi_LearningStandardEquivalenceStrengthDescriptor_TrackedDelete] PRIMARY KEY CLUSTERED ([ChangeVersion] ASC)
    );
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[changes].[edfi_LearningStandardScopeDescriptor_TrackedDelete]') AND type in (N'U'))
BEGIN
    PRINT N'Creating [changes].[edfi_LearningStandardScopeDescriptor_TrackedDelete]...';

    CREATE TABLE [changes].[edfi_LearningStandardScopeDescriptor_TrackedDelete] (
        [LearningStandardScopeDescriptorId] INT              NOT NULL,
        [Id]                                UNIQUEIDENTIFIER NOT NULL,
        [ChangeVersion]                     BIGINT           NOT NULL,
        CONSTRAINT [PK_edfi_LearningStandardScopeDescriptor_TrackedDelete] PRIMARY KEY CLUSTERED ([ChangeVersion] ASC)
    );
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[changes].[edfi_ParticipationStatusDescriptor_TrackedDelete]') AND type in (N'U'))
BEGIN
    PRINT N'Creating [changes].[edfi_ParticipationStatusDescriptor_TrackedDelete]...';

    CREATE TABLE [changes].[edfi_ParticipationStatusDescriptor_TrackedDelete] (
        [ParticipationStatusDescriptorId] INT              NOT NULL,
        [Id]                              UNIQUEIDENTIFIER NOT NULL,
        [ChangeVersion]                   BIGINT           NOT NULL,
        CONSTRAINT [PK_edfi_ParticipationStatusDescriptor_TrackedDelete] PRIMARY KEY CLUSTERED ([ChangeVersion] ASC)
    );
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[changes].[edfi_PlatformTypeDescriptor_TrackedDelete]') AND type in (N'U'))
BEGIN
    PRINT N'Creating [changes].[edfi_PlatformTypeDescriptor_TrackedDelete]...';

    CREATE TABLE [changes].[edfi_PlatformTypeDescriptor_TrackedDelete] (
        [PlatformTypeDescriptorId] INT              NOT NULL,
        [Id]                       UNIQUEIDENTIFIER NOT NULL,
        [ChangeVersion]            BIGINT           NOT NULL,
        CONSTRAINT [PK_edfi_PlatformTypeDescriptor_TrackedDelete] PRIMARY KEY CLUSTERED ([ChangeVersion] ASC)
    );
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[changes].[edfi_StaffDisciplineIncidentAssociation_TrackedDelete]') AND type in (N'U'))
BEGIN
    PRINT N'Creating [changes].[edfi_StaffDisciplineIncidentAssociation_TrackedDelete]...';

    CREATE TABLE [changes].[edfi_StaffDisciplineIncidentAssociation_TrackedDelete] (
        [IncidentIdentifier] NVARCHAR (20)    NOT NULL,
        [SchoolId]           INT              NOT NULL,
        [StaffUSI]           INT              NOT NULL,
        [Id]                 UNIQUEIDENTIFIER NOT NULL,
        [ChangeVersion]      BIGINT           NOT NULL,
        CONSTRAINT [PK_edfi_StaffDisciplineIncidentAssociation_TrackedDelete] PRIMARY KEY CLUSTERED ([ChangeVersion] ASC)
    );
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[changes].[edfi_TitleIPartAProgramServiceDescriptor_TrackedDelete]') AND type in (N'U'))
BEGIN
    PRINT N'Creating [changes].[edfi_TitleIPartAProgramServiceDescriptor_TrackedDelete]...';

    CREATE TABLE [changes].[edfi_TitleIPartAProgramServiceDescriptor_TrackedDelete] (
        [TitleIPartAProgramServiceDescriptorId] INT              NOT NULL,
        [Id]                                    UNIQUEIDENTIFIER NOT NULL,
        [ChangeVersion]                         BIGINT           NOT NULL,
        CONSTRAINT [PK_edfi_TitleIPartAProgramServiceDescriptor_TrackedDelete] PRIMARY KEY CLUSTERED ([ChangeVersion] ASC)
    );
END

PRINT N'Change Queries table updates complete.';

PRINT N'Starting Change Queries trigger updates for upgrading Ed-Fi v3.1 to Ed-Fi v3.2 ...';

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[edfi].[edfi_CTEProgramServiceDescriptor_TR_DeleteTracking]') AND type in (N'TR'))
BEGIN
    PRINT N'Creating [edfi].[edfi_CTEProgramServiceDescriptor_TR_DeleteTracking]...';
    
    EXEC dbo.sp_executesql @statement = N'
    CREATE TRIGGER [edfi].[edfi_CTEProgramServiceDescriptor_TR_DeleteTracking] ON [edfi].[CTEProgramServiceDescriptor] AFTER DELETE AS
    BEGIN
        IF @@rowcount = 0 
            RETURN

        SET NOCOUNT ON

        INSERT INTO [changes].[edfi_CTEProgramServiceDescriptor_TrackedDelete](CTEProgramServiceDescriptorId, Id, ChangeVersion)
        SELECT  d.CTEProgramServiceDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
        FROM    deleted d
                INNER JOIN edfi.Descriptor b ON d.CTEProgramServiceDescriptorId = b.DescriptorId
    END
    '
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[edfi].[edfi_DisciplineIncidentParticipationCodeDescriptor_TR_DeleteTracking]') AND type in (N'TR'))
BEGIN
    PRINT N'Creating [edfi].[edfi_DisciplineIncidentParticipationCodeDescriptor_TR_DeleteTracking]...';
    
    EXEC dbo.sp_executesql @statement = N'
    CREATE TRIGGER [edfi].[edfi_DisciplineIncidentParticipationCodeDescriptor_TR_DeleteTracking] ON [edfi].[DisciplineIncidentParticipationCodeDescriptor] AFTER DELETE AS
    BEGIN
        IF @@rowcount = 0 
            RETURN

        SET NOCOUNT ON

        INSERT INTO [changes].[edfi_DisciplineIncidentParticipationCodeDescriptor_TrackedDelete](DisciplineIncidentParticipationCodeDescriptorId, Id, ChangeVersion)
        SELECT  d.DisciplineIncidentParticipationCodeDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
        FROM    deleted d
                INNER JOIN edfi.Descriptor b ON d.DisciplineIncidentParticipationCodeDescriptorId = b.DescriptorId
    END
    '
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[edfi].[edfi_GradePointAverageWeightSystemDescriptor_TR_DeleteTracking]') AND type in (N'TR'))
BEGIN
    PRINT N'Creating [edfi].[edfi_GradePointAverageWeightSystemDescriptor_TR_DeleteTracking]...';
    
    EXEC dbo.sp_executesql @statement = N'
    CREATE TRIGGER [edfi].[edfi_GradePointAverageWeightSystemDescriptor_TR_DeleteTracking] ON [edfi].[GradePointAverageWeightSystemDescriptor] AFTER DELETE AS
    BEGIN
        IF @@rowcount = 0 
            RETURN

        SET NOCOUNT ON

        INSERT INTO [changes].[edfi_GradePointAverageWeightSystemDescriptor_TrackedDelete](GradePointAverageWeightSystemDescriptorId, Id, ChangeVersion)
        SELECT  d.GradePointAverageWeightSystemDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
        FROM    deleted d
                INNER JOIN edfi.Descriptor b ON d.GradePointAverageWeightSystemDescriptorId = b.DescriptorId
    END
    '
END

IF NOT EXISTS (SELECT * FROM sys.columns WHERE name = 'ChangeVersion' AND object_id = OBJECT_ID(N'[edfi].[LearningStandardEquivalenceAssociation]'))
BEGIN
	PRINT N'Altering [edfi].[LearningStandardEquivalenceAssociation] to add ChangeVersion column...';

	ALTER TABLE [edfi].[LearningStandardEquivalenceAssociation]
		ADD [ChangeVersion] BIGINT DEFAULT ( NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL;

	PRINT N'Creating [edfi].[LearningStandardEquivalenceAssociation].[UX_LearningStandardEquivalenceAssociation_ChangeVersion]...';

	CREATE NONCLUSTERED INDEX [UX_LearningStandardEquivalenceAssociation_ChangeVersion]
		ON [edfi].[LearningStandardEquivalenceAssociation]([ChangeVersion] ASC);
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[edfi].[edfi_LearningStandardEquivalenceAssociation_TR_UpdateChangeVersion]') AND type in (N'TR'))
BEGIN
	PRINT N'Creating [edfi].[edfi_LearningStandardEquivalenceAssociation_TR_UpdateChangeVersion]...';

    EXEC dbo.sp_executesql @statement = N'
	CREATE TRIGGER [edfi].[edfi_LearningStandardEquivalenceAssociation_TR_UpdateChangeVersion] ON [edfi].[LearningStandardEquivalenceAssociation] AFTER UPDATE AS
	BEGIN
		SET NOCOUNT ON;
		UPDATE [edfi].[LearningStandardEquivalenceAssociation]
		SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
		FROM [edfi].[LearningStandardEquivalenceAssociation] u
		WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
	END
    '
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[edfi].[edfi_LearningStandardEquivalenceAssociation_TR_DeleteTracking]') AND type in (N'TR'))
BEGIN
    PRINT N'Creating [edfi].[edfi_LearningStandardEquivalenceAssociation_TR_DeleteTracking]...';
    
    EXEC dbo.sp_executesql @statement = N'
    CREATE TRIGGER [edfi].[edfi_LearningStandardEquivalenceAssociation_TR_DeleteTracking] ON [edfi].[LearningStandardEquivalenceAssociation] AFTER DELETE AS
    BEGIN
        IF @@rowcount = 0 
            RETURN

        SET NOCOUNT ON

        INSERT INTO [changes].[edfi_LearningStandardEquivalenceAssociation_TrackedDelete](Namespace, SourceLearningStandardId, TargetLearningStandardId, Id, ChangeVersion)
        SELECT  Namespace, SourceLearningStandardId, TargetLearningStandardId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
        FROM    deleted d
    END
    '
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[edfi].[edfi_LearningStandardEquivalenceStrengthDescriptor_TR_DeleteTracking]') AND type in (N'TR'))
BEGIN
    PRINT N'Creating [edfi].[edfi_LearningStandardEquivalenceStrengthDescriptor_TR_DeleteTracking]...';
    
    EXEC dbo.sp_executesql @statement = N'
    CREATE TRIGGER [edfi].[edfi_LearningStandardEquivalenceStrengthDescriptor_TR_DeleteTracking] ON [edfi].[LearningStandardEquivalenceStrengthDescriptor] AFTER DELETE AS
    BEGIN
        IF @@rowcount = 0 
            RETURN

        SET NOCOUNT ON

        INSERT INTO [changes].[edfi_LearningStandardEquivalenceStrengthDescriptor_TrackedDelete](LearningStandardEquivalenceStrengthDescriptorId, Id, ChangeVersion)
        SELECT  d.LearningStandardEquivalenceStrengthDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
        FROM    deleted d
                INNER JOIN edfi.Descriptor b ON d.LearningStandardEquivalenceStrengthDescriptorId = b.DescriptorId
    END
    '
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[edfi].[edfi_LearningStandardScopeDescriptor_TR_DeleteTracking]') AND type in (N'TR'))
BEGIN
    PRINT N'Creating [edfi].[edfi_LearningStandardScopeDescriptor_TR_DeleteTracking]...';
    
    EXEC dbo.sp_executesql @statement = N'
    CREATE TRIGGER [edfi].[edfi_LearningStandardScopeDescriptor_TR_DeleteTracking] ON [edfi].[LearningStandardScopeDescriptor] AFTER DELETE AS
    BEGIN
        IF @@rowcount = 0 
            RETURN

        SET NOCOUNT ON

        INSERT INTO [changes].[edfi_LearningStandardScopeDescriptor_TrackedDelete](LearningStandardScopeDescriptorId, Id, ChangeVersion)
        SELECT  d.LearningStandardScopeDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
        FROM    deleted d
                INNER JOIN edfi.Descriptor b ON d.LearningStandardScopeDescriptorId = b.DescriptorId
    END
    '
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[edfi].[edfi_ParticipationStatusDescriptor_TR_DeleteTracking]') AND type in (N'TR'))
BEGIN
    PRINT N'Creating [edfi].[edfi_ParticipationStatusDescriptor_TR_DeleteTracking]...';
    
    EXEC dbo.sp_executesql @statement = N'
    CREATE TRIGGER [edfi].[edfi_ParticipationStatusDescriptor_TR_DeleteTracking] ON [edfi].[ParticipationStatusDescriptor] AFTER DELETE AS
    BEGIN
        IF @@rowcount = 0 
            RETURN

        SET NOCOUNT ON

        INSERT INTO [changes].[edfi_ParticipationStatusDescriptor_TrackedDelete](ParticipationStatusDescriptorId, Id, ChangeVersion)
        SELECT  d.ParticipationStatusDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
        FROM    deleted d
                INNER JOIN edfi.Descriptor b ON d.ParticipationStatusDescriptorId = b.DescriptorId
    END
    '
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[edfi].[edfi_PlatformTypeDescriptor_TR_DeleteTracking]') AND type in (N'TR'))
BEGIN
    PRINT N'Creating [edfi].[edfi_PlatformTypeDescriptor_TR_DeleteTracking]...';
    
    EXEC dbo.sp_executesql @statement = N'
    CREATE TRIGGER [edfi].[edfi_PlatformTypeDescriptor_TR_DeleteTracking] ON [edfi].[PlatformTypeDescriptor] AFTER DELETE AS
    BEGIN
        IF @@rowcount = 0 
            RETURN

        SET NOCOUNT ON

        INSERT INTO [changes].[edfi_PlatformTypeDescriptor_TrackedDelete](PlatformTypeDescriptorId, Id, ChangeVersion)
        SELECT  d.PlatformTypeDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
        FROM    deleted d
                INNER JOIN edfi.Descriptor b ON d.PlatformTypeDescriptorId = b.DescriptorId
    END
    '
END

IF NOT EXISTS (SELECT * FROM sys.columns WHERE name = 'ChangeVersion' AND object_id = OBJECT_ID(N'[edfi].[StaffDisciplineIncidentAssociation]'))
BEGIN
	PRINT N'Altering [edfi].[StaffDisciplineIncidentAssociation] to add ChangeVersion column...';

	ALTER TABLE [edfi].[StaffDisciplineIncidentAssociation]
		ADD [ChangeVersion] BIGINT DEFAULT ( NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL;

	PRINT N'Creating [edfi].[StaffDisciplineIncidentAssociation].[UX_StaffDisciplineIncidentAssociation_ChangeVersion]...';

	CREATE NONCLUSTERED INDEX [UX_StaffDisciplineIncidentAssociation_ChangeVersion]
		ON [edfi].[StaffDisciplineIncidentAssociation]([ChangeVersion] ASC);
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[edfi].[edfi_StaffDisciplineIncidentAssociation_TR_UpdateChangeVersion]') AND type in (N'TR'))
BEGIN
    PRINT N'Creating [edfi].[edfi_StaffDisciplineIncidentAssociation_TR_UpdateChangeVersion]...';
    
    EXEC dbo.sp_executesql @statement = N'
    CREATE TRIGGER [edfi].[edfi_StaffDisciplineIncidentAssociation_TR_UpdateChangeVersion] ON [edfi].[StaffDisciplineIncidentAssociation] AFTER UPDATE AS
    BEGIN
        SET NOCOUNT ON;
        UPDATE [edfi].[StaffDisciplineIncidentAssociation]
        SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
        FROM [edfi].[StaffDisciplineIncidentAssociation] u
        WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
    END
    '
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[edfi].[edfi_StaffDisciplineIncidentAssociation_TR_DeleteTracking]') AND type in (N'TR'))
BEGIN
    PRINT N'Creating [edfi].[edfi_StaffDisciplineIncidentAssociation_TR_DeleteTracking]...';
    
    EXEC dbo.sp_executesql @statement = N'
    CREATE TRIGGER [edfi].[edfi_StaffDisciplineIncidentAssociation_TR_DeleteTracking] ON [edfi].[StaffDisciplineIncidentAssociation] AFTER DELETE AS
    BEGIN
        IF @@rowcount = 0 
            RETURN

        SET NOCOUNT ON

        INSERT INTO [changes].[edfi_StaffDisciplineIncidentAssociation_TrackedDelete](IncidentIdentifier, SchoolId, StaffUSI, Id, ChangeVersion)
        SELECT  IncidentIdentifier, SchoolId, StaffUSI, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
        FROM    deleted d
    END
    '
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[edfi].[edfi_TitleIPartAProgramServiceDescriptor_TR_DeleteTracking]') AND type in (N'TR'))
BEGIN
    PRINT N'Creating [edfi].[edfi_TitleIPartAProgramServiceDescriptor_TR_DeleteTracking]...';
    
    EXEC dbo.sp_executesql @statement = N'
    CREATE TRIGGER [edfi].[edfi_TitleIPartAProgramServiceDescriptor_TR_DeleteTracking] ON [edfi].[TitleIPartAProgramServiceDescriptor] AFTER DELETE AS
    BEGIN
        IF @@rowcount = 0 
            RETURN

        SET NOCOUNT ON

        INSERT INTO [changes].[edfi_TitleIPartAProgramServiceDescriptor_TrackedDelete](TitleIPartAProgramServiceDescriptorId, Id, ChangeVersion)
        SELECT  d.TitleIPartAProgramServiceDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
        FROM    deleted d
                INNER JOIN edfi.Descriptor b ON d.TitleIPartAProgramServiceDescriptorId = b.DescriptorId
    END
    '
END

PRINT N'Change Queries trigger updates complete.';
