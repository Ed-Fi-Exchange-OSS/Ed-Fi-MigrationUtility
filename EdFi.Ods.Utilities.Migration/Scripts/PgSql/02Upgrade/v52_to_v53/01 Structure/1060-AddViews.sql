-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

CREATE OR REPLACE VIEW auth.educationorganizationidtoparentusi
 AS
 SELECT edorgs.sourceeducationorganizationid,
    spa.parentusi
   FROM auth.educationorganizationidtoeducationorganizationid edorgs
     JOIN edfi.studentschoolassociation ssa ON edorgs.targeteducationorganizationid = ssa.schoolid
     JOIN edfi.studentparentassociation spa ON ssa.studentusi = spa.studentusi
  GROUP BY edorgs.sourceeducationorganizationid, spa.parentusi;

ALTER TABLE auth.educationorganizationidtoparentusi
    OWNER TO postgres;


CREATE OR REPLACE VIEW auth.educationorganizationidtostaffusi
 AS
 SELECT edorgs.sourceeducationorganizationid,
    seo_assign.staffusi
   FROM auth.educationorganizationidtoeducationorganizationid edorgs
     JOIN edfi.staffeducationorganizationassignmentassociation seo_assign ON edorgs.targeteducationorganizationid = seo_assign.educationorganizationid
UNION
 SELECT edorgs.sourceeducationorganizationid,
    seo_empl.staffusi
   FROM auth.educationorganizationidtoeducationorganizationid edorgs
     JOIN edfi.staffeducationorganizationemploymentassociation seo_empl ON edorgs.targeteducationorganizationid = seo_empl.educationorganizationid;

ALTER TABLE auth.educationorganizationidtostaffusi
    OWNER TO postgres;


CREATE OR REPLACE VIEW auth.educationorganizationidtostudentusi
 AS
 SELECT edorgs.sourceeducationorganizationid,
    ssa.studentusi
   FROM auth.educationorganizationidtoeducationorganizationid edorgs
     JOIN edfi.studentschoolassociation ssa ON edorgs.targeteducationorganizationid = ssa.schoolid
  GROUP BY edorgs.sourceeducationorganizationid, ssa.studentusi;

ALTER TABLE auth.educationorganizationidtostudentusi
    OWNER TO postgres;


CREATE OR REPLACE VIEW auth.educationorganizationidtostudentusithroughresponsibility
 AS
 SELECT edorgs.sourceeducationorganizationid,
    seora.studentusi
   FROM auth.educationorganizationidtoeducationorganizationid edorgs
     JOIN edfi.studenteducationorganizationresponsibilityassociation seora ON edorgs.targeteducationorganizationid = seora.educationorganizationid
  GROUP BY edorgs.sourceeducationorganizationid, seora.studentusi;

ALTER TABLE auth.educationorganizationidtostudentusithroughresponsibility
    OWNER TO postgres;
