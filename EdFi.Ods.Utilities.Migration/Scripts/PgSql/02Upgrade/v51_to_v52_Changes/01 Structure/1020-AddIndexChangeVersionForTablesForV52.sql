-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.


ALTER TABLE edfi.AssessmentScoreRangeLearningStandard
    ADD ChangeVersion BIGINT DEFAULT nextval('changes.ChangeVersionSequence') NOT NULL;


CREATE  INDEX ux_a20588_changeversion
    ON edfi.AssessmentScoreRangeLearningStandard(ChangeVersion );


ALTER TABLE edfi.StudentDisciplineIncidentBehaviorAssociation
    ADD ChangeVersion BIGINT DEFAULT nextval('changes.ChangeVersionSequence') NOT NULL;


CREATE  INDEX ux_f4934f_changeversion
    ON edfi.StudentDisciplineIncidentBehaviorAssociation(ChangeVersion );


ALTER TABLE edfi.StudentDisciplineIncidentNonOffenderAssociation
    ADD ChangeVersion BIGINT DEFAULT nextval('changes.ChangeVersionSequence') NOT NULL;


CREATE  INDEX ux_4b43da_changeversion
    ON edfi.StudentDisciplineIncidentNonOffenderAssociation(ChangeVersion );


CREATE TABLE changes.Snapshot (
    SnapshotIdentifier VARCHAR (32)    NOT NULL,
    SnapshotDateTime   TIMESTAMP   DEFAULT current_timestamp NOT NULL,
    CreateDate         TIMESTAMP   DEFAULT current_timestamp NOT NULL ,
    LastModifiedDate   TIMESTAMP   DEFAULT current_timestamp NOT NULL ,
    Id                 UUID DEFAULT public.gen_random_uuid() NOT NULL,
    CONSTRAINT Snapshot_PK PRIMARY KEY  (SnapshotIdentifier )
);


CREATE  INDEX ux_6ad27b_id
    ON changes.Snapshot(Id ) ;

COMMENT ON TABLE changes.Snapshot
IS 'Contains information about a snapshot used to create isolation from oning changes for API client synchronization.';

COMMENT ON COLUMN changes.Snapshot.SnapshotDateTime 
IS 'The date and time that the snapshot was initiated.';

COMMENT ON COLUMN changes.Snapshot.SnapshotIdentifier 
IS 'The unique identifier of the snapshot.';
