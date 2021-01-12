-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.


-- edfi_IndicatorDescriptor_TR_DeleteTracking---
CREATE OR REPLACE FUNCTION edfi_IndicatorDescriptor_after_delete()
  RETURNS trigger AS
$$
BEGIN
INSERT INTO tracked_deletes_edfi.IndicatorDescriptor(IndicatorDescriptorId, Id, ChangeVersion)
    SELECT  d.IndicatorDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.IndicatorDescriptorId = b.DescriptorId;
RETURN NEW;
END;

$$
LANGUAGE 'plpgsql';

CREATE TRIGGER edfi_IndicatorDescriptor_TR_DeleteTracking 
AFTER DELETE 
ON edfi.IndicatorDescriptor
FOR EACH ROW 
EXECUTE PROCEDURE edfi_IndicatorDescriptor_after_delete();

-- edfi_IndicatorGroupDescriptor_TR_DeleteTracking---
CREATE OR REPLACE FUNCTION edfi_IndicatorGroupDescriptor_after_delete()
  RETURNS trigger AS
$$
BEGIN
INSERT INTO tracked_deletes_edfi.IndicatorGroupDescriptor(IndicatorGroupDescriptorId, Id, ChangeVersion)
    SELECT  d.IndicatorGroupDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.IndicatorGroupDescriptorId = b.DescriptorId;
RETURN NEW;
END;

$$
LANGUAGE 'plpgsql';

CREATE TRIGGER edfi_IndicatorGroupDescriptor_TR_DeleteTracking 
AFTER DELETE 
ON edfi.IndicatorGroupDescriptor
FOR EACH ROW 
EXECUTE PROCEDURE edfi_IndicatorGroupDescriptor_after_delete();


-- edfi_IndicatorLevelDescriptor_TR_DeleteTracking---
CREATE OR REPLACE FUNCTION edfi_IndicatorLevelDescriptor_after_delete()
  RETURNS trigger AS
$$
BEGIN
INSERT INTO tracked_deletes_edfi.IndicatorLevelDescriptor(IndicatorLevelDescriptorId, Id, ChangeVersion)
    SELECT  d.IndicatorLevelDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.IndicatorLevelDescriptorId = b.DescriptorId;
RETURN NEW;
END;

$$
LANGUAGE 'plpgsql';

CREATE TRIGGER edfi_IndicatorLevelDescriptor_TR_DeleteTracking 
AFTER DELETE 
ON edfi.IndicatorLevelDescriptor
FOR EACH ROW 
EXECUTE PROCEDURE edfi_IndicatorLevelDescriptor_after_delete();


-- edfi_Person_TR_DeleteTracking---
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

CREATE TRIGGER edfi_Person_TR_DeleteTracking 
AFTER DELETE 
ON edfi.Person
FOR EACH ROW 
EXECUTE PROCEDURE edfi_Person_after_delete();


-- edfi_Person_TR_UpdateChangeVersion---
CREATE OR REPLACE FUNCTION edfi_Person_after_update()
  RETURNS trigger AS
$$
BEGIN
UPDATE edfi.Person
    SET ChangeVersion = nextval('changes.ChangeVersionSequence')
    FROM edfi.Person u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END;

$$
LANGUAGE 'plpgsql';

CREATE TRIGGER edfi_Person_TR_UpdateChangeVersion
AFTER UPDATE 
ON edfi.Person
FOR EACH ROW 
EXECUTE PROCEDURE edfi_Person_after_update();

-- edfi_QuestionFormDescriptor_TR_DeleteTracking---
CREATE OR REPLACE FUNCTION edfi_QuestionFormDescriptor_after_delete()
  RETURNS trigger AS
$$
BEGIN
INSERT INTO tracked_deletes_edfi.QuestionFormDescriptor(QuestionFormDescriptorId, Id, ChangeVersion)
    SELECT  d.QuestionFormDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.QuestionFormDescriptorId = b.DescriptorId;
RETURN NEW;
END;

$$
LANGUAGE 'plpgsql';

CREATE TRIGGER edfi_QuestionFormDescriptor_TR_DeleteTracking 
AFTER DELETE 
ON edfi.QuestionFormDescriptor
FOR EACH ROW 
EXECUTE PROCEDURE edfi_QuestionFormDescriptor_after_delete();



-- edfi_SourceSystemDescriptor_TR_DeleteTracking---
CREATE OR REPLACE FUNCTION edfi_SourceSystemDescriptor_after_delete()
  RETURNS trigger AS
$$
BEGIN
INSERT INTO tracked_deletes_edfi.SourceSystemDescriptor(SourceSystemDescriptorId, Id, ChangeVersion)
    SELECT  d.SourceSystemDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.SourceSystemDescriptorId = b.DescriptorId;
RETURN NEW;
END;

$$
LANGUAGE 'plpgsql';

CREATE TRIGGER edfi_SourceSystemDescriptor_TR_DeleteTracking 
AFTER DELETE 
ON edfi.SourceSystemDescriptor
FOR EACH ROW 
EXECUTE PROCEDURE edfi_SourceSystemDescriptor_after_delete();


-- edfi_Survey_TR_DeleteTracking---
CREATE OR REPLACE FUNCTION edfi_Survey_after_delete()
  RETURNS trigger AS
$$
BEGIN
 INSERT INTO tracked_deletes_edfi.Survey(Namespace, SurveyIdentifier, Id, ChangeVersion)
    SELECT  Namespace, SurveyIdentifier, Id, nextval('changes.ChangeVersionSequence')
    FROM    deleted d;
RETURN NEW;
END;

$$
LANGUAGE 'plpgsql';

CREATE TRIGGER edfi_Survey_TR_DeleteTracking 
AFTER DELETE 
ON edfi.Survey
FOR EACH ROW 
EXECUTE PROCEDURE edfi_Survey_after_delete();


-- edfi_Survey_TR_UpdateChangeVersion---
CREATE OR REPLACE FUNCTION edfi_Survey_after_update()
  RETURNS trigger AS
$$
BEGIN
 UPDATE edfi.Survey
    SET ChangeVersion = (nextval('changes.ChangeVersionSequence'))
    FROM edfi.Survey u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END;

$$
LANGUAGE 'plpgsql';

CREATE TRIGGER edfi_Survey_TR_UpdateChangeVersion 
AFTER UPDATE 
ON edfi.Survey
FOR EACH ROW 
EXECUTE PROCEDURE edfi_Survey_after_update();


-- edfi_SurveyCategoryDescriptor_TR_DeleteTracking---
CREATE OR REPLACE FUNCTION edfi_SurveyCategoryDescriptor_after_delete()
  RETURNS trigger AS
$$
BEGIN
INSERT INTO tracked_deletes_edfi.SurveyCategoryDescriptor(SurveyCategoryDescriptorId, Id, ChangeVersion)
    SELECT  d.SurveyCategoryDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.SurveyCategoryDescriptorId = b.DescriptorId;
RETURN NEW;
END;

$$
LANGUAGE 'plpgsql';

CREATE TRIGGER edfi_SurveyCategoryDescriptor_TR_DeleteTracking 
AFTER DELETE 
ON edfi.SurveyCategoryDescriptor
FOR EACH ROW 
EXECUTE PROCEDURE edfi_SurveyCategoryDescriptor_after_delete();


-- edfi_SurveyCourseAssociation_TR_DeleteTracking---
CREATE OR REPLACE FUNCTION edfi_SurveyCourseAssociation_after_delete()
  RETURNS trigger AS
$$
BEGIN
 INSERT INTO tracked_deletes_edfi.SurveyCourseAssociation(CourseCode, EducationOrganizationId, Namespace, SurveyIdentifier, Id, ChangeVersion)
    SELECT  CourseCode, EducationOrganizationId, Namespace, SurveyIdentifier, Id, (nextval('changes.ChangeVersionSequence'))
    FROM    deleted d;
RETURN NEW;
END;

$$
LANGUAGE 'plpgsql';

CREATE TRIGGER edfi_SurveyCourseAssociation_TR_DeleteTracking 
AFTER DELETE 
ON edfi.SurveyCourseAssociation
FOR EACH ROW 
EXECUTE PROCEDURE edfi_SurveyCourseAssociation_after_delete();


-- edfi_SurveyCourseAssociation_TR_UpdateChangeVersion--
CREATE OR REPLACE FUNCTION edfi_SurveyCourseAssociation_after_update()
  RETURNS trigger AS
$$
BEGIN
    UPDATE edfi.SurveyCourseAssociation
    SET ChangeVersion = (nextval('changes.ChangeVersionSequence'))
    FROM edfi.SurveyCourseAssociation u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END;

$$
LANGUAGE 'plpgsql';

CREATE TRIGGER edfi_SurveyCourseAssociation_TR_UpdateChangeVersion 
AFTER UPDATE 
ON edfi.SurveyCourseAssociation
FOR EACH ROW 
EXECUTE PROCEDURE edfi_SurveyCourseAssociation_after_update();


-- edfi_SurveyLevelDescriptor_TR_DeleteTracking---
CREATE OR REPLACE FUNCTION edfi_SurveyLevelDescriptor_after_delete()
  RETURNS trigger AS
$$
BEGIN
 INSERT INTO tracked_deletes_edfi.SurveyLevelDescriptor(SurveyLevelDescriptorId, Id, ChangeVersion)
  SELECT  d.SurveyLevelDescriptorId, Id, (nextval('changes.ChangeVersionSequence'))
    FROM    deleted d
    INNER JOIN edfi.Descriptor b ON d.SurveyLevelDescriptorId = b.DescriptorId;
RETURN NEW;
END;

$$
LANGUAGE 'plpgsql';

CREATE TRIGGER edfi_SurveyLevelDescriptor_TR_DeleteTracking 
AFTER DELETE 
ON edfi.SurveyLevelDescriptor
FOR EACH ROW 
EXECUTE PROCEDURE edfi_SurveyLevelDescriptor_after_delete();


-- edfi_SurveyProgramAssociation_TR_DeleteTracking---
CREATE OR REPLACE FUNCTION edfi_SurveyProgramAssociation_after_delete()
  RETURNS trigger AS
$$
BEGIN
INSERT INTO tracked_deletes_edfi.SurveyProgramAssociation(EducationOrganizationId, Namespace, ProgramName, ProgramTypeDescriptorId, SurveyIdentifier, Id, ChangeVersion)
    SELECT  EducationOrganizationId, Namespace, ProgramName, ProgramTypeDescriptorId, SurveyIdentifier, Id, (nextval('changes.ChangeVersionSequence'))
    FROM    deleted d;
RETURN NEW;
END;

$$
LANGUAGE 'plpgsql';

CREATE TRIGGER edfi_SurveyProgramAssociation_TR_DeleteTracking 
AFTER DELETE 
ON edfi.SurveyProgramAssociation
FOR EACH ROW 
EXECUTE PROCEDURE edfi_SurveyProgramAssociation_after_delete();



-- edfi_SurveyProgramAssociation_TR_UpdateChangeVersion---
CREATE OR REPLACE FUNCTION edfi_SurveyProgramAssociation_after_update()
  RETURNS trigger AS
$$
BEGIN
 UPDATE edfi.SurveyProgramAssociation
    SET ChangeVersion = (nextval('changes.ChangeVersionSequence'))
    FROM edfi.SurveyProgramAssociation u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END;

$$
LANGUAGE 'plpgsql';

CREATE TRIGGER edfi_SurveyProgramAssociation_TR_UpdateChangeVersion
AFTER UPDATE 
ON edfi.SurveyProgramAssociation
FOR EACH ROW 
EXECUTE PROCEDURE edfi_SurveyProgramAssociation_after_update();



-- edfi_SurveyQuestion_TR_DeleteTracking---
CREATE OR REPLACE FUNCTION edfi_SurveyQuestion_after_delete()
  RETURNS trigger AS
$$
BEGIN
  INSERT INTO tracked_deletes_edfi.SurveyQuestion(Namespace, QuestionCode, SurveyIdentifier, Id, ChangeVersion)
    SELECT  Namespace, QuestionCode, SurveyIdentifier, Id, (nextval('changes.ChangeVersionSequence'))
    FROM    deleted d;
RETURN NEW;
END;

$$
LANGUAGE 'plpgsql';

CREATE TRIGGER edfi_SurveyQuestion_TR_DeleteTracking 
AFTER DELETE 
ON edfi.SurveyQuestion
FOR EACH ROW 
EXECUTE PROCEDURE edfi_SurveyQuestion_after_delete();



-- edfi_SurveyQuestion_TR_UpdateChangeVersion--
CREATE OR REPLACE FUNCTION edfi_SurveyQuestion_after_update()
  RETURNS trigger AS
$$
BEGIN
    UPDATE edfi.SurveyQuestion
    SET ChangeVersion = (nextval('changes.ChangeVersionSequence'))
    FROM edfi.SurveyQuestion u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END;

$$
LANGUAGE 'plpgsql';

CREATE TRIGGER edfi_SurveyQuestion_TR_UpdateChangeVersion 
AFTER UPDATE 
ON edfi.SurveyQuestion
FOR EACH ROW 
EXECUTE PROCEDURE edfi_SurveyQuestion_after_update();



-- edfi_SurveyQuestionResponse_TR_DeleteTracking---
CREATE OR REPLACE FUNCTION edfi_SurveyQuestionResponse_after_delete()
  RETURNS trigger AS
$$
BEGIN
    INSERT INTO tracked_deletes_edfi.SurveyQuestionResponse(Namespace, QuestionCode, SurveyIdentifier, SurveyResponseIdentifier, Id, ChangeVersion)
    SELECT  Namespace, QuestionCode, SurveyIdentifier, SurveyResponseIdentifier, Id, (nextval('changes.ChangeVersionSequence'))
    FROM    deleted d;
RETURN NEW;
END;

$$
LANGUAGE 'plpgsql';

CREATE TRIGGER edfi_SurveyQuestionResponse_TR_DeleteTracking 
AFTER DELETE 
ON edfi.SurveyQuestionResponse
FOR EACH ROW 
EXECUTE PROCEDURE edfi_SurveyQuestionResponse_after_delete();


-- edfi_SurveyQuestionResponse_TR_UpdateChangeVersion--
CREATE OR REPLACE FUNCTION edfi_SurveyQuestionResponse_after_update()
  RETURNS trigger AS
$$
BEGIN
    UPDATE edfi.SurveyQuestionResponse
    SET ChangeVersion = (nextval('changes.ChangeVersionSequence'))
    FROM edfi.SurveyQuestionResponse u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END;

$$
LANGUAGE 'plpgsql';

CREATE TRIGGER edfi_SurveyQuestionResponse_TR_UpdateChangeVersion 
AFTER UPDATE 
ON edfi.SurveyQuestionResponse
FOR EACH ROW 
EXECUTE PROCEDURE edfi_SurveyQuestionResponse_after_update();


-- edfi_SurveyResponse_TR_DeleteTracking---
CREATE OR REPLACE FUNCTION edfi_SurveyResponse_after_delete()
  RETURNS trigger AS
$$
BEGIN
    INSERT INTO tracked_deletes_edfi.SurveyResponse(Namespace, SurveyIdentifier, SurveyResponseIdentifier, Id, ChangeVersion)
    SELECT  Namespace, SurveyIdentifier, SurveyResponseIdentifier, Id, (nextval('changes.ChangeVersionSequence'))
    FROM    deleted d;
RETURN NEW;
END;

$$
LANGUAGE 'plpgsql';

CREATE TRIGGER edfi_SurveyResponse_TR_DeleteTracking 
AFTER DELETE 
ON edfi.SurveyResponse
FOR EACH ROW 
EXECUTE PROCEDURE edfi_SurveyResponse_after_delete();

-- edfi_SurveyResponse_TR_UpdateChangeVersion--
CREATE OR REPLACE FUNCTION edfi_SurveyResponse_after_update()
  RETURNS trigger AS
$$
BEGIN
    UPDATE edfi.SurveyResponse
    SET ChangeVersion = (nextval('changes.ChangeVersionSequence'))
    FROM edfi.SurveyResponse u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END;

$$
LANGUAGE 'plpgsql';

CREATE TRIGGER edfi_SurveyResponse_TR_UpdateChangeVersion 
AFTER UPDATE 
ON edfi.SurveyResponse
FOR EACH ROW 
EXECUTE PROCEDURE edfi_SurveyResponse_after_update();

-- edfi_SurveyResponseEducationOrganizationTargetAssociation_TR_DeleteTracking---
CREATE OR REPLACE FUNCTION edfi_SurveyResponseEducationOrganizationTargetAssociation_after_delete()
  RETURNS trigger AS
$$
BEGIN
    INSERT INTO tracked_deletes_edfi.SurveyResponseEducationOrganizationTargetAssociation(EducationOrganizationId, Namespace, SurveyIdentifier, SurveyResponseIdentifier, Id, ChangeVersion)
    SELECT  EducationOrganizationId, Namespace, SurveyIdentifier, SurveyResponseIdentifier, Id, (nextval('changes.ChangeVersionSequence'))
    FROM    deleted d;
RETURN NEW;
END;

$$
LANGUAGE 'plpgsql';

CREATE TRIGGER edfi_SurveyResponseEducationOrganizationTargetAssociation_TR_DeleteTracking 
AFTER DELETE 
ON edfi.SurveyResponseEducationOrganizationTargetAssociation
FOR EACH ROW 
EXECUTE PROCEDURE edfi_SurveyResponseEducationOrganizationTargetAssociation_after_delete();


-- edfi_SurveyResponseEducationOrganizationTargetAssociation_TR_UpdateChangeVersion--
CREATE OR REPLACE FUNCTION edfi_SurveyResponseEducationOrganizationTargetAssociation_after_update()
  RETURNS trigger AS
$$
BEGIN
    UPDATE edfi.SurveyResponseEducationOrganizationTargetAssociation
    SET ChangeVersion = (nextval('changes.ChangeVersionSequence'))
    FROM edfi.SurveyResponseEducationOrganizationTargetAssociation u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END;

$$
LANGUAGE 'plpgsql';

CREATE TRIGGER edfi_SurveyResponseEducationOrganizationTargetAssociation_TR_UpdateChangeVersion 
AFTER UPDATE 
ON edfi.SurveyResponseEducationOrganizationTargetAssociation
FOR EACH ROW 
EXECUTE PROCEDURE edfi_SurveyResponseEducationOrganizationTargetAssociation_after_update();


-- edfi_SurveyResponseStaffTargetAssociation_TR_DeleteTracking---
CREATE OR REPLACE FUNCTION edfi_SurveyResponseStaffTargetAssociation_after_delete()
  RETURNS trigger AS
$$
BEGIN
    INSERT INTO tracked_deletes_edfi.SurveyResponseStaffTargetAssociation(Namespace, StaffUSI, SurveyIdentifier, SurveyResponseIdentifier, Id, ChangeVersion)
    SELECT  Namespace, StaffUSI, SurveyIdentifier, SurveyResponseIdentifier, Id, (nextval('changes.ChangeVersionSequence'))
    FROM    deleted d;
RETURN NEW;
END;

$$
LANGUAGE 'plpgsql';

CREATE TRIGGER edfi_SurveyResponseStaffTargetAssociation_TR_DeleteTracking 
AFTER DELETE 
ON edfi.SurveyResponseStaffTargetAssociation
FOR EACH ROW 
EXECUTE PROCEDURE edfi_SurveyResponseStaffTargetAssociation_after_delete();


-- edfi_SurveyResponseStaffTargetAssociation_TR_UpdateChangeVersion--
CREATE OR REPLACE FUNCTION edfi_SurveyResponseStaffTargetAssociation_after_update()
  RETURNS trigger AS
$$
BEGIN
    UPDATE edfi.SurveyResponseStaffTargetAssociation
    SET ChangeVersion = (nextval('changes.ChangeVersionSequence'))
    FROM edfi.SurveyResponseStaffTargetAssociation u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END;

$$
LANGUAGE 'plpgsql';

CREATE TRIGGER edfi_SurveyResponseStaffTargetAssociation_TR_UpdateChangeVersion 
AFTER UPDATE 
ON edfi.SurveyResponseStaffTargetAssociation
FOR EACH ROW 
EXECUTE PROCEDURE edfi_SurveyResponseStaffTargetAssociation_after_update();


-- edfi_SurveySection_TR_DeleteTracking---
CREATE OR REPLACE FUNCTION edfi_SurveySection_after_delete()
  RETURNS trigger AS
$$
BEGIN
    INSERT INTO tracked_deletes_edfi.SurveySection(Namespace, SurveyIdentifier, SurveySectionTitle, Id, ChangeVersion)
    SELECT  Namespace, SurveyIdentifier, SurveySectionTitle, Id, (nextval('changes.ChangeVersionSequence'))
    FROM    deleted d;
RETURN NEW;
END;

$$
LANGUAGE 'plpgsql';

CREATE TRIGGER edfi_SurveySection_TR_DeleteTracking 
AFTER DELETE 
ON edfi.SurveySection
FOR EACH ROW 
EXECUTE PROCEDURE edfi_SurveySection_after_delete();

-- edfi_SurveySection_TR_UpdateChangeVersion--
CREATE OR REPLACE FUNCTION edfi_SurveySection_after_update()
  RETURNS trigger AS
$$
BEGIN
    UPDATE edfi.SurveySection
    SET ChangeVersion = (nextval('changes.ChangeVersionSequence'))
    FROM edfi.SurveySection u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END;

$$
LANGUAGE 'plpgsql';

CREATE TRIGGER edfi_SurveySection_TR_UpdateChangeVersion 
AFTER UPDATE 
ON edfi.SurveySection
FOR EACH ROW 
EXECUTE PROCEDURE edfi_SurveySection_after_update();



-- edfi_SurveySectionAssociation_TR_DeleteTracking---
CREATE OR REPLACE FUNCTION edfi_SurveySectionAssociation_after_delete()
  RETURNS trigger AS
$$
BEGIN
    INSERT INTO tracked_deletes_edfi.SurveySectionAssociation(LocalCourseCode, Namespace, SchoolId, SchoolYear, SectionIdentifier, SessionName, SurveyIdentifier, Id, ChangeVersion)
    SELECT  LocalCourseCode, Namespace, SchoolId, SchoolYear, SectionIdentifier, SessionName, SurveyIdentifier, Id, (nextval('changes.ChangeVersionSequence'))
    FROM    deleted d;
RETURN NEW;
END;

$$
LANGUAGE 'plpgsql';

CREATE TRIGGER edfi_SurveySectionAssociation_TR_DeleteTracking 
AFTER DELETE 
ON edfi.SurveySectionAssociation
FOR EACH ROW 
EXECUTE PROCEDURE edfi_SurveySectionAssociation_after_delete();

-- edfi_SurveySectionAssociation_TR_UpdateChangeVersion--
CREATE OR REPLACE FUNCTION edfi_SurveySectionAssociation_after_update()
  RETURNS trigger AS
$$
BEGIN
    UPDATE edfi.SurveySectionAssociation
    SET ChangeVersion = (nextval('changes.ChangeVersionSequence'))
    FROM edfi.SurveySectionAssociation u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END;

$$
LANGUAGE 'plpgsql';

CREATE TRIGGER edfi_SurveySectionAssociation_TR_UpdateChangeVersion 
AFTER UPDATE 
ON edfi.SurveySectionAssociation
FOR EACH ROW 
EXECUTE PROCEDURE edfi_SurveySectionAssociation_after_update();

-- edfi_SurveySectionResponse_TR_DeleteTracking---
CREATE OR REPLACE FUNCTION edfi_SurveySectionResponse_after_delete()
  RETURNS trigger AS
$$
BEGIN
    INSERT INTO tracked_deletes_edfi.SurveySectionResponse(Namespace, SurveyIdentifier, SurveyResponseIdentifier, SurveySectionTitle, Id, ChangeVersion)
    SELECT  Namespace, SurveyIdentifier, SurveyResponseIdentifier, SurveySectionTitle, Id, (nextval('changes.ChangeVersionSequence'))
    FROM    deleted d;
RETURN NEW;
END;

$$
LANGUAGE 'plpgsql';

CREATE TRIGGER edfi_SurveySectionResponse_TR_DeleteTracking 
AFTER DELETE 
ON edfi.SurveySectionResponse
FOR EACH ROW 
EXECUTE PROCEDURE edfi_SurveySectionResponse_after_delete();

-- edfi_SurveySectionResponse_TR_UpdateChangeVersion--
CREATE OR REPLACE FUNCTION edfi_SurveySectionResponse_after_update()
  RETURNS trigger AS
$$
BEGIN
    UPDATE edfi.SurveySectionResponse
    SET ChangeVersion = (nextval('changes.ChangeVersionSequence'))
    FROM edfi.SurveySectionResponse u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END;

$$
LANGUAGE 'plpgsql';

CREATE TRIGGER edfi_SurveySectionResponse_TR_UpdateChangeVersion 
AFTER UPDATE 
ON edfi.SurveySectionResponse
FOR EACH ROW 
EXECUTE PROCEDURE edfi_SurveySectionResponse_after_update();


-- edfi_SurveySectionResponseEduOrgTargetAssociation_TR_DeleteTracking---
CREATE OR REPLACE FUNCTION edfi_SurveySectionResponseEduOrgTargetAssociation_after_delete()
  RETURNS trigger AS
$$
BEGIN
    INSERT INTO tracked_deletes_edfi.SurveySectionResponseEducationOrganizationTargetAssociation(EducationOrganizationId, Namespace, SurveyIdentifier, SurveyResponseIdentifier, SurveySectionTitle, Id, ChangeVersion)
    SELECT  EducationOrganizationId, Namespace, SurveyIdentifier, SurveyResponseIdentifier, SurveySectionTitle, Id, (nextval('changes.ChangeVersionSequence'))
    FROM    deleted d;
RETURN NEW;
END;

$$
LANGUAGE 'plpgsql';

CREATE TRIGGER edfi_SurveySectionResponseEduOrgTargetAssociation_TR_DeleteTracking 
AFTER DELETE 
ON edfi.SurveySectionResponseEducationOrganizationTargetAssociation
FOR EACH ROW 
EXECUTE PROCEDURE edfi_SurveySectionResponseEduOrgTargetAssociation_after_delete();

-- edfi_SurveySectionResponseEducationOrganizationTargetAssociation_TR_UpdateChangeVersion--
CREATE OR REPLACE FUNCTION edfi_SurveySectionResponseEducationOrganizationTargetAssociation_after_update()
  RETURNS trigger AS
$$
BEGIN
    UPDATE edfi.SurveySectionResponseEducationOrganizationTargetAssociation
    SET ChangeVersion = (nextval('changes.ChangeVersionSequence'))
    FROM edfi.SurveySectionResponseEducationOrganizationTargetAssociation u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END;

$$
LANGUAGE 'plpgsql';

CREATE TRIGGER edfi_SurveySectionResponseEducationOrganizationTargetAssociation_TR_UpdateChangeVersion 
AFTER UPDATE 
ON edfi.SurveySectionResponseEducationOrganizationTargetAssociation
FOR EACH ROW 
EXECUTE PROCEDURE edfi_SurveySectionResponseEducationOrganizationTargetAssociation_after_update();


-- edfi_SurveySectionResponseStaffTargetAssociation_TR_DeleteTracking---
CREATE OR REPLACE FUNCTION edfi_SurveySectionResponseStaffTargetAssociation_after_delete()
  RETURNS trigger AS
$$
BEGIN
    INSERT INTO tracked_deletes_edfi.SurveySectionResponseStaffTargetAssociation(Namespace, StaffUSI, SurveyIdentifier, SurveyResponseIdentifier, SurveySectionTitle, Id, ChangeVersion)
    SELECT  Namespace, StaffUSI, SurveyIdentifier, SurveyResponseIdentifier, SurveySectionTitle, Id, (nextval('changes.ChangeVersionSequence'))
    FROM    deleted d;
RETURN NEW;
END;

$$
LANGUAGE 'plpgsql';

CREATE TRIGGER edfi_SurveySectionResponseStaffTargetAssociation_TR_DeleteTracking 
AFTER DELETE 
ON edfi.SurveySectionResponseStaffTargetAssociation
FOR EACH ROW 
EXECUTE PROCEDURE edfi_SurveySectionResponseStaffTargetAssociation_after_delete();

-- edfi_SurveySectionResponseStaffTargetAssociation_TR_UpdateChangeVersion--
CREATE OR REPLACE FUNCTION edfi_SurveySectionResponseStaffTargetAssociation_after_update()
  RETURNS trigger AS
$$
BEGIN
    UPDATE edfi.SurveySectionResponseStaffTargetAssociation
    SET ChangeVersion = (nextval('changes.ChangeVersionSequence'))
    FROM edfi.SurveySectionResponseStaffTargetAssociation u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END;

$$
LANGUAGE 'plpgsql';

CREATE TRIGGER edfi_SurveySectionResponseStaffTargetAssociation_TR_UpdateChangeVersion 
AFTER UPDATE 
ON edfi.SurveySectionResponseStaffTargetAssociation
FOR EACH ROW 
EXECUTE PROCEDURE edfi_SurveySectionResponseStaffTargetAssociation_after_update();
