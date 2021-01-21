-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.


CREATE FUNCTION tracked_deletes_edfi.IndicatorDescriptor_TR_DelTrkg()
    RETURNS trigger AS
    $BODY$
BEGIN
    INSERT INTO tracked_deletes_edfi.IndicatorDescriptor(IndicatorDescriptorId, Id, ChangeVersion)
    SELECT OLD.IndicatorDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.IndicatorDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON edfi.IndicatorDescriptor
FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_edfi.IndicatorDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_edfi.IndicatorGroupDescriptor_TR_DelTrkg()
    RETURNS trigger AS
    $BODY$
BEGIN
    INSERT INTO tracked_deletes_edfi.IndicatorGroupDescriptor(IndicatorGroupDescriptorId, Id, ChangeVersion)
    SELECT OLD.IndicatorGroupDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.IndicatorGroupDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON edfi.IndicatorGroupDescriptor
FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_edfi.IndicatorGroupDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_edfi.IndicatorLevelDescriptor_TR_DelTrkg()
    RETURNS trigger AS
    $BODY$
BEGIN
    INSERT INTO tracked_deletes_edfi.IndicatorLevelDescriptor(IndicatorLevelDescriptorId, Id, ChangeVersion)
    SELECT OLD.IndicatorLevelDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.IndicatorLevelDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON edfi.IndicatorLevelDescriptor
FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_edfi.IndicatorLevelDescriptor_TR_DelTrkg();

CREATE OR REPLACE FUNCTION edfi_Person_after_delete()
  RETURNS trigger AS
$$
BEGIN
INSERT INTO tracked_deletes_edfi.Person(PersonId, Id, ChangeVersion)
    SELECT  d.PersonId, Id, nextval('changes.ChangeVersionSequence')
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.PersonId = b.DescriptorId;
RETURN NEW;
END;

$$
LANGUAGE 'plpgsql';

CREATE FUNCTION tracked_deletes_edfi.Person_TR_DelTrkg()
    RETURNS trigger AS
    $BODY$
BEGIN
    INSERT INTO tracked_deletes_edfi.Person(PersonId, SourceSystemDescriptorId, Id, ChangeVersion)
    VALUES (OLD.PersonId, OLD.SourceSystemDescriptorId, OLD.Id, nextval('changes.ChangeVersionSequence'));
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON edfi.Person
FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_edfi.Person_TR_DelTrkg();

-- edfi_QuestionFormDescriptor_TR_DeleteTracking---
CREATE FUNCTION tracked_deletes_edfi.QuestionFormDescriptor_TR_DelTrkg()
    RETURNS trigger AS
    $BODY$
BEGIN
    INSERT INTO tracked_deletes_edfi.QuestionFormDescriptor(QuestionFormDescriptorId, Id, ChangeVersion)
    SELECT OLD.QuestionFormDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.QuestionFormDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON edfi.QuestionFormDescriptor
FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_edfi.QuestionFormDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_edfi.SourceSystemDescriptor_TR_DelTrkg()
    RETURNS trigger AS
    $BODY$
BEGIN
    INSERT INTO tracked_deletes_edfi.SourceSystemDescriptor(SourceSystemDescriptorId, Id, ChangeVersion)
    SELECT OLD.SourceSystemDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.SourceSystemDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON edfi.SourceSystemDescriptor
FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_edfi.SourceSystemDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_edfi.SurveyCategoryDescriptor_TR_DelTrkg()
    RETURNS trigger AS
    $BODY$
BEGIN
    INSERT INTO tracked_deletes_edfi.SurveyCategoryDescriptor(SurveyCategoryDescriptorId, Id, ChangeVersion)
    SELECT OLD.SurveyCategoryDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.SurveyCategoryDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON edfi.SurveyCategoryDescriptor
FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_edfi.SurveyCategoryDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_edfi.SurveyCourseAssociation_TR_DelTrkg()
    RETURNS trigger AS
    $BODY$
BEGIN
    INSERT INTO tracked_deletes_edfi.SurveyCourseAssociation(CourseCode, EducationOrganizationId, Namespace, SurveyIdentifier, Id, ChangeVersion)
    VALUES (OLD.CourseCode, OLD.EducationOrganizationId, OLD.Namespace, OLD.SurveyIdentifier, OLD.Id, nextval('changes.ChangeVersionSequence'));
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON edfi.SurveyCourseAssociation
FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_edfi.SurveyCourseAssociation_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_edfi.SurveyLevelDescriptor_TR_DelTrkg()
    RETURNS trigger AS
    $BODY$
BEGIN
    INSERT INTO tracked_deletes_edfi.SurveyLevelDescriptor(SurveyLevelDescriptorId, Id, ChangeVersion)
    SELECT OLD.SurveyLevelDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.SurveyLevelDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON edfi.SurveyLevelDescriptor
FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_edfi.SurveyLevelDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_edfi.SurveyProgramAssociation_TR_DelTrkg()
    RETURNS trigger AS
    $BODY$
BEGIN
    INSERT INTO tracked_deletes_edfi.SurveyProgramAssociation(EducationOrganizationId, Namespace, ProgramName, ProgramTypeDescriptorId, SurveyIdentifier, Id, ChangeVersion)
    VALUES (OLD.EducationOrganizationId, OLD.Namespace, OLD.ProgramName, OLD.ProgramTypeDescriptorId, OLD.SurveyIdentifier, OLD.Id, nextval('changes.ChangeVersionSequence'));
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON edfi.SurveyProgramAssociation
FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_edfi.SurveyProgramAssociation_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_edfi.SurveyQuestionResponse_TR_DelTrkg()
    RETURNS trigger AS
    $BODY$
BEGIN
    INSERT INTO tracked_deletes_edfi.SurveyQuestionResponse(Namespace, QuestionCode, SurveyIdentifier, SurveyResponseIdentifier, Id, ChangeVersion)
    VALUES (OLD.Namespace, OLD.QuestionCode, OLD.SurveyIdentifier, OLD.SurveyResponseIdentifier, OLD.Id, nextval('changes.ChangeVersionSequence'));
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON edfi.SurveyQuestionResponse
FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_edfi.SurveyQuestionResponse_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_edfi.SurveyQuestion_TR_DelTrkg()
    RETURNS trigger AS
    $BODY$
BEGIN
    INSERT INTO tracked_deletes_edfi.SurveyQuestion(Namespace, QuestionCode, SurveyIdentifier, Id, ChangeVersion)
    VALUES (OLD.Namespace, OLD.QuestionCode, OLD.SurveyIdentifier, OLD.Id, nextval('changes.ChangeVersionSequence'));
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON edfi.SurveyQuestion
FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_edfi.SurveyQuestion_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_edfi.SurveyResponseEducationOrganizationTargetAssociation_TR_DelTrkg()
    RETURNS trigger AS
    $BODY$
BEGIN
    INSERT INTO tracked_deletes_edfi.SurveyResponseEducationOrganizationTargetAssociation(EducationOrganizationId, Namespace, SurveyIdentifier, SurveyResponseIdentifier, Id, ChangeVersion)
    VALUES (OLD.EducationOrganizationId, OLD.Namespace, OLD.SurveyIdentifier, OLD.SurveyResponseIdentifier, OLD.Id, nextval('changes.ChangeVersionSequence'));
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON edfi.SurveyResponseEducationOrganizationTargetAssociation
FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_edfi.SurveyResponseEducationOrganizationTargetAssociation_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_edfi.SurveyResponseStaffTargetAssociation_TR_DelTrkg()
    RETURNS trigger AS
    $BODY$
BEGIN
    INSERT INTO tracked_deletes_edfi.SurveyResponseStaffTargetAssociation(Namespace, StaffUSI, SurveyIdentifier, SurveyResponseIdentifier, Id, ChangeVersion)
    VALUES (OLD.Namespace, OLD.StaffUSI, OLD.SurveyIdentifier, OLD.SurveyResponseIdentifier, OLD.Id, nextval('changes.ChangeVersionSequence'));
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON edfi.SurveyResponseStaffTargetAssociation
FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_edfi.SurveyResponseStaffTargetAssociation_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_edfi.SurveyResponse_TR_DelTrkg()
    RETURNS trigger AS
    $BODY$
BEGIN
    INSERT INTO tracked_deletes_edfi.SurveyResponse(Namespace, SurveyIdentifier, SurveyResponseIdentifier, Id, ChangeVersion)
    VALUES (OLD.Namespace, OLD.SurveyIdentifier, OLD.SurveyResponseIdentifier, OLD.Id, nextval('changes.ChangeVersionSequence'));
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON edfi.SurveyResponse
FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_edfi.SurveyResponse_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_edfi.SurveySectionAssociation_TR_DelTrkg()
    RETURNS trigger AS
    $BODY$
BEGIN
    INSERT INTO tracked_deletes_edfi.SurveySectionAssociation(LocalCourseCode, Namespace, SchoolId, SchoolYear, SectionIdentifier, SessionName, SurveyIdentifier, Id, ChangeVersion)
    VALUES (OLD.LocalCourseCode, OLD.Namespace, OLD.SchoolId, OLD.SchoolYear, OLD.SectionIdentifier, OLD.SessionName, OLD.SurveyIdentifier, OLD.Id, nextval('changes.ChangeVersionSequence'));
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON edfi.SurveySectionAssociation
FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_edfi.SurveySectionAssociation_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_edfi.SurveySectionResponseEducationOrganizationTar_730be1_TR_DelTrkg()
    RETURNS trigger AS
    $BODY$
BEGIN
    INSERT INTO tracked_deletes_edfi.SurveySectionResponseEducationOrganizationTargetAssociation(EducationOrganizationId, Namespace, SurveyIdentifier, SurveyResponseIdentifier, SurveySectionTitle, Id, ChangeVersion)
    VALUES (OLD.EducationOrganizationId, OLD.Namespace, OLD.SurveyIdentifier, OLD.SurveyResponseIdentifier, OLD.SurveySectionTitle, OLD.Id, nextval('changes.ChangeVersionSequence'));
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON edfi.SurveySectionResponseEducationOrganizationTargetAssociation
FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_edfi.SurveySectionResponseEducationOrganizationTar_730be1_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_edfi.SurveySectionResponseStaffTargetAssociation_TR_DelTrkg()
    RETURNS trigger AS
    $BODY$
BEGIN
    INSERT INTO tracked_deletes_edfi.SurveySectionResponseStaffTargetAssociation(Namespace, StaffUSI, SurveyIdentifier, SurveyResponseIdentifier, SurveySectionTitle, Id, ChangeVersion)
    VALUES (OLD.Namespace, OLD.StaffUSI, OLD.SurveyIdentifier, OLD.SurveyResponseIdentifier, OLD.SurveySectionTitle, OLD.Id, nextval('changes.ChangeVersionSequence'));
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON edfi.SurveySectionResponseStaffTargetAssociation
FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_edfi.SurveySectionResponseStaffTargetAssociation_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_edfi.SurveySectionResponse_TR_DelTrkg()
    RETURNS trigger AS
    $BODY$
BEGIN
    INSERT INTO tracked_deletes_edfi.SurveySectionResponse(Namespace, SurveyIdentifier, SurveyResponseIdentifier, SurveySectionTitle, Id, ChangeVersion)
    VALUES (OLD.Namespace, OLD.SurveyIdentifier, OLD.SurveyResponseIdentifier, OLD.SurveySectionTitle, OLD.Id, nextval('changes.ChangeVersionSequence'));
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON edfi.SurveySectionResponse
FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_edfi.SurveySectionResponse_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_edfi.SurveySection_TR_DelTrkg()
    RETURNS trigger AS
    $BODY$
BEGIN
    INSERT INTO tracked_deletes_edfi.SurveySection(Namespace, SurveyIdentifier, SurveySectionTitle, Id, ChangeVersion)
    VALUES (OLD.Namespace, OLD.SurveyIdentifier, OLD.SurveySectionTitle, OLD.Id, nextval('changes.ChangeVersionSequence'));
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON edfi.SurveySection
FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_edfi.SurveySection_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_edfi.Survey_TR_DelTrkg()
    RETURNS trigger AS
    $BODY$
BEGIN
    INSERT INTO tracked_deletes_edfi.Survey(Namespace, SurveyIdentifier, Id, ChangeVersion)
    VALUES (OLD.Namespace, OLD.SurveyIdentifier, OLD.Id, nextval('changes.ChangeVersionSequence'));
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON edfi.Survey
FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_edfi.Survey_TR_DelTrkg();