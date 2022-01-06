-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

CREATE TRIGGER [edfi].[edfi_AncestryEthnicOriginDescriptor_TR_DeleteTracking] ON [edfi].[AncestryEthnicOriginDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_edfi].[AncestryEthnicOriginDescriptor](AncestryEthnicOriginDescriptorId, Id, ChangeVersion)
    SELECT  d.AncestryEthnicOriginDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.AncestryEthnicOriginDescriptorId = b.DescriptorId
END
GO

CREATE TRIGGER [edfi].[edfi_AssessmentScoreRangeLearningStandard_TR_DeleteTracking] ON [edfi].[AssessmentScoreRangeLearningStandard] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_edfi].[AssessmentScoreRangeLearningStandard](AssessmentIdentifier, Namespace, ScoreRangeId, Id, ChangeVersion)
    SELECT  AssessmentIdentifier, Namespace, ScoreRangeId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

CREATE TRIGGER [edfi].[edfi_AssessmentScoreRangeLearningStandard_TR_UpdateChangeVersion] ON [edfi].[AssessmentScoreRangeLearningStandard] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [edfi].[AssessmentScoreRangeLearningStandard]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [edfi].[AssessmentScoreRangeLearningStandard] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END
GO

CREATE TRIGGER [edfi].[edfi_OrganizationDepartment_TR_DeleteTracking] ON [edfi].[OrganizationDepartment] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_edfi].[OrganizationDepartment](OrganizationDepartmentId, Id, ChangeVersion)
    SELECT  d.OrganizationDepartmentId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.EducationOrganization b ON d.OrganizationDepartmentId = b.EducationOrganizationId
END
GO

CREATE TRIGGER [edfi].[edfi_StudentDisciplineIncidentBehaviorAssociation_TR_DeleteTracking] ON [edfi].[StudentDisciplineIncidentBehaviorAssociation] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_edfi].[StudentDisciplineIncidentBehaviorAssociation](BehaviorDescriptorId, IncidentIdentifier, SchoolId, StudentUSI, Id, ChangeVersion)
    SELECT  BehaviorDescriptorId, IncidentIdentifier, SchoolId, StudentUSI, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

CREATE TRIGGER [edfi].[edfi_StudentDisciplineIncidentBehaviorAssociation_TR_UpdateChangeVersion] ON [edfi].[StudentDisciplineIncidentBehaviorAssociation] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [edfi].[StudentDisciplineIncidentBehaviorAssociation]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [edfi].[StudentDisciplineIncidentBehaviorAssociation] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END
GO

CREATE TRIGGER [edfi].[edfi_StudentDisciplineIncidentNonOffenderAssociation_TR_DeleteTracking] ON [edfi].[StudentDisciplineIncidentNonOffenderAssociation] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_edfi].[StudentDisciplineIncidentNonOffenderAssociation](IncidentIdentifier, SchoolId, StudentUSI, Id, ChangeVersion)
    SELECT  IncidentIdentifier, SchoolId, StudentUSI, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

CREATE TRIGGER [edfi].[edfi_StudentDisciplineIncidentNonOffenderAssociation_TR_UpdateChangeVersion] ON [edfi].[StudentDisciplineIncidentNonOffenderAssociation] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [edfi].[StudentDisciplineIncidentNonOffenderAssociation]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [edfi].[StudentDisciplineIncidentNonOffenderAssociation] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END
GO

