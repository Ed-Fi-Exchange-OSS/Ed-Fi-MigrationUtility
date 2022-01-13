CREATE TABLE auth.educationorganizationidtoeducationorganizationid
(
    sourceeducationorganizationid integer NOT NULL,
    targeteducationorganizationid integer NOT NULL,
    CONSTRAINT educationorganizationidtoeducationorganizationid_pk PRIMARY KEY (sourceeducationorganizationid, targeteducationorganizationid)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE auth.educationorganizationidtoeducationorganizationid
    OWNER to postgres;


CREATE TABLE edfi.barriertointernetaccessinresidencedescriptor
(
    barriertointernetaccessinresidencedescriptorid integer NOT NULL,
    CONSTRAINT barriertointernetaccessinresidencedescriptor_pk PRIMARY KEY (barriertointernetaccessinresidencedescriptorid),
    CONSTRAINT fk_cce75a_descriptor FOREIGN KEY (barriertointernetaccessinresidencedescriptorid)
        REFERENCES edfi.descriptor (descriptorid) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE edfi.barriertointernetaccessinresidencedescriptor
    OWNER to postgres;

COMMENT ON TABLE edfi.barriertointernetaccessinresidencedescriptor
    IS 'An indication of the barrier to having internet access in the student’s primary place of residence.';

COMMENT ON COLUMN edfi.barriertointernetaccessinresidencedescriptor.barriertointernetaccessinresidencedescriptorid
    IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';



CREATE TABLE edfi.coursetranscriptpartialcoursetranscriptawards
(
    awarddate date NOT NULL,
    courseattemptresultdescriptorid integer NOT NULL,
    coursecode character varying(60) COLLATE pg_catalog."default" NOT NULL,
    courseeducationorganizationid integer NOT NULL,
    educationorganizationid integer NOT NULL,
    schoolyear smallint NOT NULL,
    studentusi integer NOT NULL,
    termdescriptorid integer NOT NULL,
    earnedcredits numeric(9,3) NOT NULL,
    methodcreditearneddescriptorid integer,
    lettergradeearned character varying(20) COLLATE pg_catalog."default",
    numericgradeearned character varying(20) COLLATE pg_catalog."default",
    createdate timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT coursetranscriptpartialcoursetranscriptawards_pk PRIMARY KEY (awarddate, courseattemptresultdescriptorid, coursecode, courseeducationorganizationid, educationorganizationid, schoolyear, studentusi, termdescriptorid),
    CONSTRAINT fk_e811ad_coursetranscript FOREIGN KEY (courseattemptresultdescriptorid, coursecode, courseeducationorganizationid, educationorganizationid, schoolyear, studentusi, termdescriptorid)
        REFERENCES edfi.coursetranscript (courseattemptresultdescriptorid, coursecode, courseeducationorganizationid, educationorganizationid, schoolyear, studentusi, termdescriptorid) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE,
    CONSTRAINT fk_e811ad_methodcreditearneddescriptor FOREIGN KEY (methodcreditearneddescriptorid)
        REFERENCES edfi.methodcreditearneddescriptor (methodcreditearneddescriptorid) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE edfi.coursetranscriptpartialcoursetranscriptawards
    OWNER to postgres;

COMMENT ON TABLE edfi.coursetranscriptpartialcoursetranscriptawards
    IS 'A collection of partial credits and/or grades a student earned against the course over the session, used when awards of credit are incremental.';

COMMENT ON COLUMN edfi.coursetranscriptpartialcoursetranscriptawards.awarddate
    IS 'The date the partial credits and/or grades were awarded or earned.';

COMMENT ON COLUMN edfi.coursetranscriptpartialcoursetranscriptawards.courseattemptresultdescriptorid
    IS 'The result from the student''s attempt to take the course, for example:
        Pass
        Fail
        Incomplete
        Withdrawn.';

COMMENT ON COLUMN edfi.coursetranscriptpartialcoursetranscriptawards.coursecode
    IS 'A unique alphanumeric code assigned to a course.';

COMMENT ON COLUMN edfi.coursetranscriptpartialcoursetranscriptawards.courseeducationorganizationid
    IS 'The identifier assigned to an education organization.';

COMMENT ON COLUMN edfi.coursetranscriptpartialcoursetranscriptawards.educationorganizationid
    IS 'The identifier assigned to an education organization.';

COMMENT ON COLUMN edfi.coursetranscriptpartialcoursetranscriptawards.schoolyear
    IS 'The identifier for the school year.';

COMMENT ON COLUMN edfi.coursetranscriptpartialcoursetranscriptawards.studentusi
    IS 'A unique alphanumeric code assigned to a student.';

COMMENT ON COLUMN edfi.coursetranscriptpartialcoursetranscriptawards.termdescriptorid
    IS 'The term for the session during the school year.';

COMMENT ON COLUMN edfi.coursetranscriptpartialcoursetranscriptawards.earnedcredits
    IS 'The number of credits a student earned for completing a given course.';

COMMENT ON COLUMN edfi.coursetranscriptpartialcoursetranscriptawards.methodcreditearneddescriptorid
    IS 'The method the credits were earned.';

COMMENT ON COLUMN edfi.coursetranscriptpartialcoursetranscriptawards.lettergradeearned
    IS 'The indicator of student performance as submitted by the instructor.';

COMMENT ON COLUMN edfi.coursetranscriptpartialcoursetranscriptawards.numericgradeearned
    IS 'The indicator of student performance as submitted by the instructor.';
CREATE INDEX fk_e811ad_coursetranscript
    ON edfi.coursetranscriptpartialcoursetranscriptawards USING btree
    (courseattemptresultdescriptorid ASC NULLS LAST, coursecode COLLATE pg_catalog."default" ASC NULLS LAST, courseeducationorganizationid ASC NULLS LAST, educationorganizationid ASC NULLS LAST, schoolyear ASC NULLS LAST, studentusi ASC NULLS LAST, termdescriptorid ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX fk_e811ad_methodcreditearneddescriptor
    ON edfi.coursetranscriptpartialcoursetranscriptawards USING btree
    (methodcreditearneddescriptorid ASC NULLS LAST)
    TABLESPACE pg_default;


CREATE TABLE edfi.internetaccesstypeinresidencedescriptor
(
    internetaccesstypeinresidencedescriptorid integer NOT NULL,
    CONSTRAINT internetaccesstypeinresidencedescriptor_pk PRIMARY KEY (internetaccesstypeinresidencedescriptorid),
    CONSTRAINT fk_8007d5_descriptor FOREIGN KEY (internetaccesstypeinresidencedescriptorid)
        REFERENCES edfi.descriptor (descriptorid) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE edfi.internetaccesstypeinresidencedescriptor
    OWNER to postgres;

COMMENT ON TABLE edfi.internetaccesstypeinresidencedescriptor
    IS 'The primary type of internet service used in the student’s primary place of residence.';

COMMENT ON COLUMN edfi.internetaccesstypeinresidencedescriptor.internetaccesstypeinresidencedescriptorid
    IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

CREATE TABLE edfi.internetperformanceinresidencedescriptor
(
    internetperformanceinresidencedescriptorid integer NOT NULL,
    CONSTRAINT internetperformanceinresidencedescriptor_pk PRIMARY KEY (internetperformanceinresidencedescriptorid),
    CONSTRAINT fk_256049_descriptor FOREIGN KEY (internetperformanceinresidencedescriptorid)
        REFERENCES edfi.descriptor (descriptorid) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE edfi.internetperformanceinresidencedescriptor
    OWNER to postgres;

COMMENT ON TABLE edfi.internetperformanceinresidencedescriptor
    IS 'An indication of whether the student can complete the full range of learning activities, including video streaming and assignment upload, without interruptions caused by poor internet performance in their primary place of residence.';

COMMENT ON COLUMN edfi.internetperformanceinresidencedescriptor.internetperformanceinresidencedescriptorid
    IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

CREATE TABLE edfi.primarylearningdeviceaccessdescriptor
(
    primarylearningdeviceaccessdescriptorid integer NOT NULL,
    CONSTRAINT primarylearningdeviceaccessdescriptor_pk PRIMARY KEY (primarylearningdeviceaccessdescriptorid),
    CONSTRAINT fk_cbfe5d_descriptor FOREIGN KEY (primarylearningdeviceaccessdescriptorid)
        REFERENCES edfi.descriptor (descriptorid) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE edfi.primarylearningdeviceaccessdescriptor
    OWNER to postgres;

COMMENT ON TABLE edfi.primarylearningdeviceaccessdescriptor
    IS 'An indication of whether the primary learning device is shared or not shared with another individual.';

COMMENT ON COLUMN edfi.primarylearningdeviceaccessdescriptor.primarylearningdeviceaccessdescriptorid
    IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

CREATE TABLE edfi.primarylearningdeviceawayfromschooldescriptor
(
    primarylearningdeviceawayfromschooldescriptorid integer NOT NULL,
    CONSTRAINT primarylearningdeviceawayfromschooldescriptor_pk PRIMARY KEY (primarylearningdeviceawayfromschooldescriptorid),
    CONSTRAINT fk_5ee08d_descriptor FOREIGN KEY (primarylearningdeviceawayfromschooldescriptorid)
        REFERENCES edfi.descriptor (descriptorid) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE edfi.primarylearningdeviceawayfromschooldescriptor
    OWNER to postgres;

COMMENT ON TABLE edfi.primarylearningdeviceawayfromschooldescriptor
    IS 'The type of device the student uses most often to complete learning activities away from school.';

COMMENT ON COLUMN edfi.primarylearningdeviceawayfromschooldescriptor.primarylearningdeviceawayfromschooldescriptorid
    IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

CREATE TABLE edfi.primarylearningdeviceproviderdescriptor
(
    primarylearningdeviceproviderdescriptorid integer NOT NULL,
    CONSTRAINT primarylearningdeviceproviderdescriptor_pk PRIMARY KEY (primarylearningdeviceproviderdescriptorid),
    CONSTRAINT fk_a1f277_descriptor FOREIGN KEY (primarylearningdeviceproviderdescriptorid)
        REFERENCES edfi.descriptor (descriptorid) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE edfi.primarylearningdeviceproviderdescriptor
    OWNER to postgres;

COMMENT ON TABLE edfi.primarylearningdeviceproviderdescriptor
    IS 'The provider of the primary learning device.';

COMMENT ON COLUMN edfi.primarylearningdeviceproviderdescriptor.primarylearningdeviceproviderdescriptorid
    IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

CREATE TABLE edfi.studentsectionattendanceeventclassperiod
(
    attendanceeventcategorydescriptorid integer NOT NULL,
    classperiodname character varying(60) COLLATE pg_catalog."default" NOT NULL,
    eventdate date NOT NULL,
    localcoursecode character varying(60) COLLATE pg_catalog."default" NOT NULL,
    schoolid integer NOT NULL,
    schoolyear smallint NOT NULL,
    sectionidentifier character varying(255) COLLATE pg_catalog."default" NOT NULL,
    sessionname character varying(60) COLLATE pg_catalog."default" NOT NULL,
    studentusi integer NOT NULL,
    createdate timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT studentsectionattendanceeventclassperiod_pk PRIMARY KEY (attendanceeventcategorydescriptorid, classperiodname, eventdate, localcoursecode, schoolid, schoolyear, sectionidentifier, sessionname, studentusi),
    CONSTRAINT fk_80c6c1_classperiod FOREIGN KEY (classperiodname, schoolid)
        REFERENCES edfi.classperiod (classperiodname, schoolid) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE NO ACTION,
    CONSTRAINT fk_80c6c1_studentsectionattendanceevent FOREIGN KEY (attendanceeventcategorydescriptorid, eventdate, localcoursecode, schoolid, schoolyear, sectionidentifier, sessionname, studentusi)
        REFERENCES edfi.studentsectionattendanceevent (attendanceeventcategorydescriptorid, eventdate, localcoursecode, schoolid, schoolyear, sectionidentifier, sessionname, studentusi) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE edfi.studentsectionattendanceeventclassperiod
    OWNER to postgres;

COMMENT ON TABLE edfi.studentsectionattendanceeventclassperiod
    IS 'The Class Period(s) to which the Section Attendance Event applies.';

COMMENT ON COLUMN edfi.studentsectionattendanceeventclassperiod.attendanceeventcategorydescriptorid
    IS 'A code describing the attendance event, for example:
        Present
        Unexcused absence
        Excused absence
        Tardy.';

COMMENT ON COLUMN edfi.studentsectionattendanceeventclassperiod.classperiodname
    IS 'An indication of the portion of a typical daily session in which students receive instruction in a specified subject (e.g., morning, sixth period, block period, or AB schedules).';

COMMENT ON COLUMN edfi.studentsectionattendanceeventclassperiod.eventdate
    IS 'Date for this attendance event.';

COMMENT ON COLUMN edfi.studentsectionattendanceeventclassperiod.localcoursecode
    IS 'The local code assigned by the School that identifies the course offering provided for the instruction of students.';

COMMENT ON COLUMN edfi.studentsectionattendanceeventclassperiod.schoolid
    IS 'The identifier assigned to a school.';

COMMENT ON COLUMN edfi.studentsectionattendanceeventclassperiod.schoolyear
    IS 'The identifier for the school year.';

COMMENT ON COLUMN edfi.studentsectionattendanceeventclassperiod.sectionidentifier
    IS 'The local identifier assigned to a section.';

COMMENT ON COLUMN edfi.studentsectionattendanceeventclassperiod.sessionname
    IS 'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).';

COMMENT ON COLUMN edfi.studentsectionattendanceeventclassperiod.studentusi
    IS 'A unique alphanumeric code assigned to a student.';
CREATE INDEX fk_80c6c1_classperiod
    ON edfi.studentsectionattendanceeventclassperiod USING btree
    (classperiodname COLLATE pg_catalog."default" ASC NULLS LAST, schoolid ASC NULLS LAST)
    TABLESPACE pg_default;

CREATE INDEX fk_80c6c1_studentsectionattendanceevent
    ON edfi.studentsectionattendanceeventclassperiod USING btree
    (attendanceeventcategorydescriptorid ASC NULLS LAST, eventdate ASC NULLS LAST, localcoursecode COLLATE pg_catalog."default" ASC NULLS LAST, schoolid ASC NULLS LAST, schoolyear ASC NULLS LAST, sectionidentifier COLLATE pg_catalog."default" ASC NULLS LAST, sessionname COLLATE pg_catalog."default" ASC NULLS LAST, studentusi ASC NULLS LAST)
    TABLESPACE pg_default;
