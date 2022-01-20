-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

DECLARE @EdFiDeployJournal TABLE
(
[ScriptName] [nvarchar] (255) NOT NULL
)

INSERT @EdFiDeployJournal (ScriptName)
VALUES
('EdFi.Ods.Standard.Artifacts.MsSql.Structure.Ods.Changes.0010-CreateChangesSchema.sql'),
('EdFi.Ods.Standard.Artifacts.MsSql.Structure.Ods.Changes.0020-CreateChangeVersionSequence.sql'),
('EdFi.Ods.Standard.Artifacts.MsSql.Structure.Ods.Changes.0030-AddColumnChangeVersionForTables.sql'),
('EdFi.Ods.Standard.Artifacts.MsSql.Structure.Ods.Changes.0040-CreateTriggerUpdateChangeVersionGenerator.sql'),
('EdFi.Ods.Standard.Artifacts.MsSql.Structure.Ods.Changes.0045-CreateTrackedDeleteSchema.sql'),
('EdFi.Ods.Standard.Artifacts.MsSql.Structure.Ods.Changes.0050-CreateTrackedDeleteTables.sql'),
('EdFi.Ods.Standard.Artifacts.MsSql.Structure.Ods.Changes.0060-CreateDeletedForTrackingTriggers.sql'),
('EdFi.Ods.Standard.Artifacts.MsSql.Structure.Ods.Changes.0070-AddIndexChangeVersionForTables.sql'),
('EdFi.Ods.Standard.Artifacts.MsSql.Structure.Ods.Changes.0110-AddSnapshot-Tables.sql'),
('EdFi.Ods.Standard.Artifacts.MsSql.Structure.Ods.Changes.0120-AddSnapshotIdColumnUniqueIndexes.sql'),
('EdFi.Ods.Standard.Artifacts.MsSql.Structure.Ods.Changes.0130-AddSnapshotExtendedProperties.sql'),
('EdFi.Ods.Standard.Artifacts.MsSql.Structure.Ods.Changes.1010-CreateGetMaxChangeVersionFunction.sql'),
('Edfi.Ods.Standard.Artifacts.Mssql.Structure.Ods.Changes.1060-AddNewDeleteTablesForV53.sql'),
('Edfi.Ods.Standard.Artifacts.Mssql.Structure.Ods.Changes.1070-CreateDeletedForTrackingTriggersForV53.sql')

INSERT [dbo].[DeployJournal] ([ScriptName], [Applied])
SELECT e.[ScriptName], GETDATE()
FROM @EdFiDeployJournal e
LEFT JOIN [dbo].[DeployJournal] dj
    ON e.[ScriptName] = dj.[ScriptName]
WHERE dj.[ScriptName] IS NULL