
CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON edfi.StudentDisciplineIncidentNonOffenderAssociation
FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();

CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON edfi.AssessmentScoreRangeLearningStandard
FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();

CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON edfi.StudentDisciplineIncidentBehaviorAssociation
FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();

