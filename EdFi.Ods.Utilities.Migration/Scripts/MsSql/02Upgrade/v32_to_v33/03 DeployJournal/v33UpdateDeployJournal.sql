-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating [dbo].[DeployJournal]'
GO

IF OBJECT_ID(N'[dbo].[DeployJournal]', 'U') IS NULL
CREATE TABLE [dbo].[DeployJournal](
    [Id] [int] IDENTITY(1,1) NOT NULL,
    [ScriptName] [nvarchar](255) NOT NULL,
    [Applied] [datetime] NOT NULL,
 CONSTRAINT [PK_DeployJournal_Id] PRIMARY KEY CLUSTERED 
(
    [Id] ASC
))
GO

DECLARE @EdFiDeployJournal TABLE
(
[ScriptName] [nvarchar] (255) NOT NULL
)

INSERT @EdFiDeployJournal (ScriptName)
VALUES
('EdFi.Ods.Standard.Artifacts.MsSql.Structure.Ods.0010-Schemas.sql'),
('EdFi.Ods.Standard.Artifacts.MsSql.Structure.Ods.0020-Tables.sql'),
('EdFi.Ods.Standard.Artifacts.MsSql.Structure.Ods.0030-ForeignKeys.sql'),
('EdFi.Ods.Standard.Artifacts.MsSql.Structure.Ods.0040-IdColumnUniqueIndexes.sql'),
('EdFi.Ods.Standard.Artifacts.MsSql.Structure.Ods.0050-ExtendedProperties.sql'),
('EdFi.Ods.Standard.Artifacts.MsSql.Structure.Ods.1002-AuthViews.sql'),
('EdFi.Ods.Standard.Artifacts.MsSql.Structure.Ods.1003-CompositesHierarchicalViews.sql'),
('EdFi.Ods.Standard.Artifacts.MsSql.Structure.Ods.1004-ViewIndexes.sql'),
('EdFi.Ods.Standard.Artifacts.MsSql.Structure.Ods.1005-AddSQLTypes.sql'),
('EdFi.Ods.Standard.Artifacts.MsSql.Structure.Ods.1020-Interoperability-Extension.sql'),
('EdFi.Ods.Standard.Artifacts.MsSql.Structure.Ods.1021-OperationalContextView.sql'),
('EdFi.Ods.Standard.Artifacts.MsSql.Structure.Ods.1030-AddSessionCascadeSupport.sql'),
('EdFi.Ods.Standard.Artifacts.MsSql.Structure.Ods.1031-Create-SetSchoolYear-stored-procedure.sql'),
('EdFi.Ods.Standard.Artifacts.MsSql.Structure.Ods.1034-RemoveDatesFromAuthViews.sql'),
('EdFi.Ods.Standard.Artifacts.MsSql.Structure.Ods.1035-UpdateViewsToGoThroughStudendEdOrgResponsibiltyAssociation.sql'),
('EdFi.Ods.Standard.Artifacts.MsSql.Structure.Ods.1040-Datastandard-3.2-PeopleChanges.sql'),
('EdFi.Ods.Standard.Artifacts.MsSql.Structure.Ods.1041-Datastandard-3.2-AssessmentChangesDropConstraints.sql'),
('EdFi.Ods.Standard.Artifacts.MsSql.Structure.Ods.1042-Datastandard-3.2-AssessmentChangesNewColumns.sql'),
('EdFi.Ods.Standard.Artifacts.MsSql.Structure.Ods.1043-Datastandard-3.2-AssessmentChangesAddConstraints.sql'),
('EdFi.Ods.Standard.Artifacts.MsSql.Structure.Ods.1050-Datastandard-3.2-AddressChangesDropConstraints.sql'),
('EdFi.Ods.Standard.Artifacts.MsSql.Structure.Ods.1051-Datastandard-3.2-AddressChangesNewColumns.sql'),
('EdFi.Ods.Standard.Artifacts.MsSql.Structure.Ods.1053-Datastandard-3.2-AddressChangesUpdateData.sql'),
('EdFi.Ods.Standard.Artifacts.MsSql.Structure.Ods.1054-Datastandard-3.2-AddressChangesColumnsNotNull.sql'),
('EdFi.Ods.Standard.Artifacts.MsSql.Structure.Ods.1055-Datastandard-3.2-AddressChangesColumnsPrimaryKeys.sql'),
('EdFi.Ods.Standard.Artifacts.MsSql.Structure.Ods.1056-Datastandard-3.2-AddressChangesForeignKeys.sql'),
('EdFi.Ods.Standard.Artifacts.MsSql.Structure.Ods.1060-Datastandard-3.2-Tables.sql'),
('EdFi.Ods.Standard.Artifacts.MsSql.Structure.Ods.1061-Datastandard-3.2-ForeignKeys.sql'),
('EdFi.Ods.Standard.Artifacts.MsSql.Structure.Ods.1062-Datastandard-3.2-ExtendedProperties.sql'),
('EdFi.Ods.Standard.Artifacts.MsSql.Structure.Ods.1063-Datastandard-3.2-CompositesHierarchicalViewsUpdates.sql'),
('EdFi.Ods.Standard.Artifacts.MsSql.Structure.Ods.1070-RemoveDatesFromAuthViews.sql'),
('EdFi.Ods.Standard.Artifacts.MsSql.Structure.Ods.1080-UpdateViewsToGoThroughStudendEdOrgResponsibiltyAssociation.sql'),
('EdFi.Ods.Standard.Artifacts.MsSql.Structure.Ods.1034-RemoveDatesFromAuthViews.sql'),
('EdFi.Ods.Standard.Artifacts.MsSql.Structure.Ods.1035-UpdateViewsToGoThroughStudendEdOrgResponsibiltyAssociation.sql'),
('EdFi.Ods.Standard.Artifacts.MsSql.Data.Ods.0020-SchoolYears.sql'),
('EdFi.Ods.Standard.Artifacts.MsSql.Data.Ods.1010-OperationalContexts.sql'),
('EdFi.Ods.Standard.Artifacts.MsSql.Data.Ods.1020-Assign-Discriminator-Values.sql'),
('EdFi.Ods.Standard.Artifacts.MsSql.Data.Ods.1040-Set-Default-SchoolYear.sql')

INSERT [dbo].[DeployJournal] ([ScriptName], [Applied])
SELECT e.[ScriptName], GETDATE()
FROM @EdFiDeployJournal e
LEFT JOIN [dbo].[DeployJournal] dj
    ON e.[ScriptName] = dj.[ScriptName]
WHERE dj.[ScriptName] IS NULL