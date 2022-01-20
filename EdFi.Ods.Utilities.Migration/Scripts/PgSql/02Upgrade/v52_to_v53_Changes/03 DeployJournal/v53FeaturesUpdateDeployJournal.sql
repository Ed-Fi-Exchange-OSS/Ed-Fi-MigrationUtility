-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

CREATE TEMP TABLE EdFiDeployJournal (
ScriptName VARCHAR(255) NOT NULL
);

INSERT INTO EdFiDeployJournal (ScriptName)
VALUES
('EdFi.Ods.Standard.Artifacts.PgSql.Structure.Ods.Changes.0010-CreateChangesSchema.sql'),
('EdFi.Ods.Standard.Artifacts.PgSql.Structure.Ods.Changes.0020-CreateChangeVersionSequence.sql'),
('EdFi.Ods.Standard.Artifacts.PgSql.Structure.Ods.Changes.0030-AddColumnChangeVersionForTables.sql'),
('EdFi.Ods.Standard.Artifacts.PgSql.Structure.Ods.Changes.0040-CreateTriggerUpdateChangeVersionGenerator.sql'),
('EdFi.Ods.Standard.Artifacts.PgSql.Structure.Ods.Changes.0045-CreateTrackedDeleteSchema.sql'),
('EdFi.Ods.Standard.Artifacts.PgSql.Structure.Ods.Changes.0050-CreateTrackedDeleteTables.sql'),
('EdFi.Ods.Standard.Artifacts.PgSql.Structure.Ods.Changes.0060-CreateDeletedForTrackingTriggers.sql'),
('EdFi.Ods.Standard.Artifacts.PgSql.Structure.Ods.Changes.0070-AddIndexChangeVersionForTables.sql'),
('EdFi.Ods.Standard.Artifacts.PgSql.Structure.Ods.Changes.0110-AddSnapshot-Tables.sql'),
('EdFi.Ods.Standard.Artifacts.PgSql.Structure.Ods.Changes.0120-AddSnapshotIdColumnUniqueIndexes.sql'),
('EdFi.Ods.Standard.Artifacts.PgSql.Structure.Ods.Changes.0130-AddSnapshotExtendedProperties.sql'),
('EdFi.Ods.Standard.Artifacts.PgSql.Structure.Ods.Changes.1010-CreateGetMaxChangeVersionFunction.sql'),
('EdFi.Ods.Standard.Artifacts.PgSql.Structure.Ods.Changes.1060-AddNewDeleteTablesForV53.sql'),
('EdFi.Ods.Standard.Artifacts.PgSql.Structure.Ods.Changes.1070-CreateDeletedForTrackingTriggersForV53.sql');

INSERT INTO public."DeployJournal" (scriptname, applied)
SELECT e.scriptname, NOW()
FROM EdFiDeployJournal e
LEFT JOIN public."DeployJournal" dj
    ON e.ScriptName = dj.scriptname
WHERE dj.scriptname IS NULL;