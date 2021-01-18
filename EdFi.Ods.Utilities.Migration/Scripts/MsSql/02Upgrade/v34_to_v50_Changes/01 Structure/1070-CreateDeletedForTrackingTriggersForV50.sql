-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

GO

CREATE TRIGGER [edfi].[edfi_IndicatorDescriptor_TR_DeleteTracking] ON [edfi].[IndicatorDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_edfi].[IndicatorDescriptor](IndicatorDescriptorId, Id, ChangeVersion)
    SELECT  d.IndicatorDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.IndicatorDescriptorId = b.DescriptorId
END
GO

CREATE TRIGGER [edfi].[edfi_IndicatorGroupDescriptor_TR_DeleteTracking] ON [edfi].[IndicatorGroupDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_edfi].[IndicatorGroupDescriptor](IndicatorGroupDescriptorId, Id, ChangeVersion)
    SELECT  d.IndicatorGroupDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.IndicatorGroupDescriptorId = b.DescriptorId
END
GO

CREATE TRIGGER [edfi].[edfi_IndicatorLevelDescriptor_TR_DeleteTracking] ON [edfi].[IndicatorLevelDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_edfi].[IndicatorLevelDescriptor](IndicatorLevelDescriptorId, Id, ChangeVersion)
    SELECT  d.IndicatorLevelDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.IndicatorLevelDescriptorId = b.DescriptorId
END
GO

CREATE TRIGGER [edfi].[edfi_Person_TR_DeleteTracking] ON [edfi].[Person] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_edfi].[Person](PersonId, SourceSystemDescriptorId, Id, ChangeVersion)
    SELECT  PersonId, SourceSystemDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

CREATE TRIGGER [edfi].[edfi_Person_TR_UpdateChangeVersion] ON [edfi].[Person] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [edfi].[Person]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [edfi].[Person] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END
GO

CREATE TRIGGER [edfi].[edfi_QuestionFormDescriptor_TR_DeleteTracking] ON [edfi].[QuestionFormDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_edfi].[QuestionFormDescriptor](QuestionFormDescriptorId, Id, ChangeVersion)
    SELECT  d.QuestionFormDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.QuestionFormDescriptorId = b.DescriptorId
END
GO

CREATE TRIGGER [edfi].[edfi_SourceSystemDescriptor_TR_DeleteTracking] ON [edfi].[SourceSystemDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_edfi].[SourceSystemDescriptor](SourceSystemDescriptorId, Id, ChangeVersion)
    SELECT  d.SourceSystemDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.SourceSystemDescriptorId = b.DescriptorId
END
GO

CREATE TRIGGER [edfi].[edfi_Survey_TR_DeleteTracking] ON [edfi].[Survey] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_edfi].[Survey](Namespace, SurveyIdentifier, Id, ChangeVersion)
    SELECT  Namespace, SurveyIdentifier, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

CREATE TRIGGER [edfi].[edfi_Survey_TR_UpdateChangeVersion] ON [edfi].[Survey] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [edfi].[Survey]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [edfi].[Survey] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END
GO

CREATE TRIGGER [edfi].[edfi_SurveyCategoryDescriptor_TR_DeleteTracking] ON [edfi].[SurveyCategoryDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_edfi].[SurveyCategoryDescriptor](SurveyCategoryDescriptorId, Id, ChangeVersion)
    SELECT  d.SurveyCategoryDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.SurveyCategoryDescriptorId = b.DescriptorId
END
GO

CREATE TRIGGER [edfi].[edfi_SurveyCourseAssociation_TR_DeleteTracking] ON [edfi].[SurveyCourseAssociation] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_edfi].[SurveyCourseAssociation](CourseCode, EducationOrganizationId, Namespace, SurveyIdentifier, Id, ChangeVersion)
    SELECT  CourseCode, EducationOrganizationId, Namespace, SurveyIdentifier, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

CREATE TRIGGER [edfi].[edfi_SurveyCourseAssociation_TR_UpdateChangeVersion] ON [edfi].[SurveyCourseAssociation] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [edfi].[SurveyCourseAssociation]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [edfi].[SurveyCourseAssociation] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END
GO

CREATE TRIGGER [edfi].[edfi_SurveyLevelDescriptor_TR_DeleteTracking] ON [edfi].[SurveyLevelDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_edfi].[SurveyLevelDescriptor](SurveyLevelDescriptorId, Id, ChangeVersion)
    SELECT  d.SurveyLevelDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.SurveyLevelDescriptorId = b.DescriptorId
END
GO

CREATE TRIGGER [edfi].[edfi_SurveyProgramAssociation_TR_DeleteTracking] ON [edfi].[SurveyProgramAssociation] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_edfi].[SurveyProgramAssociation](EducationOrganizationId, Namespace, ProgramName, ProgramTypeDescriptorId, SurveyIdentifier, Id, ChangeVersion)
    SELECT  EducationOrganizationId, Namespace, ProgramName, ProgramTypeDescriptorId, SurveyIdentifier, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

CREATE TRIGGER [edfi].[edfi_SurveyProgramAssociation_TR_UpdateChangeVersion] ON [edfi].[SurveyProgramAssociation] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [edfi].[SurveyProgramAssociation]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [edfi].[SurveyProgramAssociation] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END
GO

CREATE TRIGGER [edfi].[edfi_SurveyQuestion_TR_DeleteTracking] ON [edfi].[SurveyQuestion] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_edfi].[SurveyQuestion](Namespace, QuestionCode, SurveyIdentifier, Id, ChangeVersion)
    SELECT  Namespace, QuestionCode, SurveyIdentifier, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

CREATE TRIGGER [edfi].[edfi_SurveyQuestion_TR_UpdateChangeVersion] ON [edfi].[SurveyQuestion] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [edfi].[SurveyQuestion]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [edfi].[SurveyQuestion] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END
GO


CREATE TRIGGER [edfi].[edfi_SurveyQuestionResponse_TR_DeleteTracking] ON [edfi].[SurveyQuestionResponse] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_edfi].[SurveyQuestionResponse](Namespace, QuestionCode, SurveyIdentifier, SurveyResponseIdentifier, Id, ChangeVersion)
    SELECT  Namespace, QuestionCode, SurveyIdentifier, SurveyResponseIdentifier, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

CREATE TRIGGER [edfi].[edfi_SurveyQuestionResponse_TR_UpdateChangeVersion] ON [edfi].[SurveyQuestionResponse] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [edfi].[SurveyQuestionResponse]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [edfi].[SurveyQuestionResponse] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END
GO

CREATE TRIGGER [edfi].[edfi_SurveyResponse_TR_DeleteTracking] ON [edfi].[SurveyResponse] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_edfi].[SurveyResponse](Namespace, SurveyIdentifier, SurveyResponseIdentifier, Id, ChangeVersion)
    SELECT  Namespace, SurveyIdentifier, SurveyResponseIdentifier, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

CREATE TRIGGER [edfi].[edfi_SurveyResponse_TR_UpdateChangeVersion] ON [edfi].[SurveyResponse] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [edfi].[SurveyResponse]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [edfi].[SurveyResponse] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END
GO

CREATE TRIGGER [edfi].[edfi_SurveyResponseEducationOrganizationTargetAssociation_TR_DeleteTracking] ON [edfi].[SurveyResponseEducationOrganizationTargetAssociation] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_edfi].[SurveyResponseEducationOrganizationTargetAssociation](EducationOrganizationId, Namespace, SurveyIdentifier, SurveyResponseIdentifier, Id, ChangeVersion)
    SELECT  EducationOrganizationId, Namespace, SurveyIdentifier, SurveyResponseIdentifier, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

CREATE TRIGGER [edfi].[edfi_SurveyResponseEducationOrganizationTargetAssociation_TR_UpdateChangeVersion] ON [edfi].[SurveyResponseEducationOrganizationTargetAssociation] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [edfi].[SurveyResponseEducationOrganizationTargetAssociation]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [edfi].[SurveyResponseEducationOrganizationTargetAssociation] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END
GO

CREATE TRIGGER [edfi].[edfi_SurveyResponseStaffTargetAssociation_TR_DeleteTracking] ON [edfi].[SurveyResponseStaffTargetAssociation] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_edfi].[SurveyResponseStaffTargetAssociation](Namespace, StaffUSI, SurveyIdentifier, SurveyResponseIdentifier, Id, ChangeVersion)
    SELECT  Namespace, StaffUSI, SurveyIdentifier, SurveyResponseIdentifier, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

CREATE TRIGGER [edfi].[edfi_SurveyResponseStaffTargetAssociation_TR_UpdateChangeVersion] ON [edfi].[SurveyResponseStaffTargetAssociation] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [edfi].[SurveyResponseStaffTargetAssociation]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [edfi].[SurveyResponseStaffTargetAssociation] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END
GO


CREATE TRIGGER [edfi].[edfi_SurveySection_TR_DeleteTracking] ON [edfi].[SurveySection] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_edfi].[SurveySection](Namespace, SurveyIdentifier, SurveySectionTitle, Id, ChangeVersion)
    SELECT  Namespace, SurveyIdentifier, SurveySectionTitle, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

CREATE TRIGGER [edfi].[edfi_SurveySection_TR_UpdateChangeVersion] ON [edfi].[SurveySection] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [edfi].[SurveySection]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [edfi].[SurveySection] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END
GO

CREATE TRIGGER [edfi].[edfi_SurveySectionAssociation_TR_DeleteTracking] ON [edfi].[SurveySectionAssociation] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_edfi].[SurveySectionAssociation](LocalCourseCode, Namespace, SchoolId, SchoolYear, SectionIdentifier, SessionName, SurveyIdentifier, Id, ChangeVersion)
    SELECT  LocalCourseCode, Namespace, SchoolId, SchoolYear, SectionIdentifier, SessionName, SurveyIdentifier, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

CREATE TRIGGER [edfi].[edfi_SurveySectionAssociation_TR_UpdateChangeVersion] ON [edfi].[SurveySectionAssociation] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [edfi].[SurveySectionAssociation]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [edfi].[SurveySectionAssociation] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END
GO

CREATE TRIGGER [edfi].[edfi_SurveySectionResponse_TR_DeleteTracking] ON [edfi].[SurveySectionResponse] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_edfi].[SurveySectionResponse](Namespace, SurveyIdentifier, SurveyResponseIdentifier, SurveySectionTitle, Id, ChangeVersion)
    SELECT  Namespace, SurveyIdentifier, SurveyResponseIdentifier, SurveySectionTitle, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

CREATE TRIGGER [edfi].[edfi_SurveySectionResponse_TR_UpdateChangeVersion] ON [edfi].[SurveySectionResponse] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [edfi].[SurveySectionResponse]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [edfi].[SurveySectionResponse] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END
GO

CREATE TRIGGER [edfi].[edfi_SurveySectionResponseEducationOrganizationTargetAssociation_TR_DeleteTracking] ON [edfi].[SurveySectionResponseEducationOrganizationTargetAssociation] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_edfi].[SurveySectionResponseEducationOrganizationTargetAssociation](EducationOrganizationId, Namespace, SurveyIdentifier, SurveyResponseIdentifier, SurveySectionTitle, Id, ChangeVersion)
    SELECT  EducationOrganizationId, Namespace, SurveyIdentifier, SurveyResponseIdentifier, SurveySectionTitle, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

CREATE TRIGGER [edfi].[edfi_SurveySectionResponseEducationOrganizationTargetAssociation_TR_UpdateChangeVersion] ON [edfi].[SurveySectionResponseEducationOrganizationTargetAssociation] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [edfi].[SurveySectionResponseEducationOrganizationTargetAssociation]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [edfi].[SurveySectionResponseEducationOrganizationTargetAssociation] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END
GO

CREATE TRIGGER [edfi].[edfi_SurveySectionResponseStaffTargetAssociation_TR_DeleteTracking] ON [edfi].[SurveySectionResponseStaffTargetAssociation] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_edfi].[SurveySectionResponseStaffTargetAssociation](Namespace, StaffUSI, SurveyIdentifier, SurveyResponseIdentifier, SurveySectionTitle, Id, ChangeVersion)
    SELECT  Namespace, StaffUSI, SurveyIdentifier, SurveyResponseIdentifier, SurveySectionTitle, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

CREATE TRIGGER [edfi].[edfi_SurveySectionResponseStaffTargetAssociation_TR_UpdateChangeVersion] ON [edfi].[SurveySectionResponseStaffTargetAssociation] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [edfi].[SurveySectionResponseStaffTargetAssociation]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [edfi].[SurveySectionResponseStaffTargetAssociation] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END
GO
