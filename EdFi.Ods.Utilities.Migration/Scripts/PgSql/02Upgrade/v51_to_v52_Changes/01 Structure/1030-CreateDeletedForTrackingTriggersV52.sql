-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

CREATE FUNCTION tracked_deletes_edfi.AncestryEthnicOriginDescriptor_TR_DelTrkg()
    RETURNS trigger AS
    $BODY$
BEGIN
    INSERT INTO tracked_deletes_edfi.AncestryEthnicOriginDescriptor(AncestryEthnicOriginDescriptorId, Id, ChangeVersion)
    SELECT OLD.AncestryEthnicOriginDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.AncestryEthnicOriginDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON edfi.AncestryEthnicOriginDescriptor
FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_edfi.AncestryEthnicOriginDescriptor_TR_DelTrkg();


CREATE FUNCTION tracked_deletes_edfi.AssessmentScoreRangeLearningStandard_TR_DelTrkg()
    RETURNS trigger AS
    $BODY$
BEGIN
    INSERT INTO tracked_deletes_edfi.AssessmentScoreRangeLearningStandard(AssessmentIdentifier, Namespace, ScoreRangeId, Id, ChangeVersion)
    SELECT OLD.AssessmentIdentifier,OLD.Namespace, OLD.ScoreRangeId, OLD.Id, nextval('changes.ChangeVersionSequence');
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON edfi.AssessmentScoreRangeLearningStandard
FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_edfi.AssessmentScoreRangeLearningStandard_TR_DelTrkg();


CREATE FUNCTION tracked_deletes_edfi.OrganizationDepartment_TR_DelTrkg()
    RETURNS trigger AS
    $BODY$
BEGIN
    INSERT INTO tracked_deletes_edfi.OrganizationDepartment(OrganizationDepartmentId, Id, ChangeVersion)
    SELECT OLD.OrganizationDepartmentId, OLD.Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.EducationOrganization WHERE EducationOrganizationId = OLD.OrganizationDepartmentId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON edfi.OrganizationDepartment
FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_edfi.OrganizationDepartment_TR_DelTrkg();


CREATE FUNCTION tracked_deletes_edfi.StudentDisciplineIncidentBehaviorAssociation_TR_DelTrkg()
    RETURNS trigger AS
    $BODY$
BEGIN
    INSERT INTO tracked_deletes_edfi.StudentDisciplineIncidentBehaviorAssociation(BehaviorDescriptorId, IncidentIdentifier, SchoolId, StudentUSI, Id, ChangeVersion)
    SELECT OLD.BehaviorDescriptorId, OLD.IncidentIdentifier, OLD.SchoolId, OLD.StudentUSI, OLD.Id,nextval('changes.ChangeVersionSequence');
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON edfi.StudentDisciplineIncidentBehaviorAssociation
FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_edfi.StudentDisciplineIncidentBehaviorAssociation_TR_DelTrkg();



CREATE FUNCTION tracked_deletes_edfi.StudentDisciplineIncidentNonOffenderAssociation_TR_DelTrkg()
    RETURNS trigger AS
    $BODY$
BEGIN
    INSERT INTO tracked_deletes_edfi.StudentDisciplineIncidentNonOffenderAssociation(IncidentIdentifier, SchoolId, StudentUSI, Id, ChangeVersion)
    SELECT OLD.IncidentIdentifier, OLD.SchoolId, OLD.StudentUSI, OLD.Id, nextval('changes.ChangeVersionSequence');
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON edfi.StudentDisciplineIncidentNonOffenderAssociation
FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_edfi.StudentDisciplineIncidentNonOffenderAssociation_TR_DelTrkg();


