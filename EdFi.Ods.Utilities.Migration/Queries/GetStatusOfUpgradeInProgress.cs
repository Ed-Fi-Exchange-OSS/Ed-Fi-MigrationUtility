// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System.Data.SqlClient;
using System.Linq;
using Dapper;
using EdFi.Ods.Utilities.Migration.Enumerations;

namespace EdFi.Ods.Utilities.Migration.Queries
{
    public class GetStatusOfUpgradeInProgress
    {
        public EdFiOdsUpgradeStatus Execute(string databaseConnectionString)
        {
            var upgradeStatus = new EdFiOdsUpgradeStatus();

            using (var connection = new SqlConnection(databaseConnectionString))
            {
                upgradeStatus.InProgress =
                    connection.Query("SELECT 1 FROM [sys].[schemas] WHERE [name] = 'migration_tempdata'").Any();

                if (upgradeStatus.InProgress)
                {
                    var versionBeforeUpgrade =
                        connection.Query<string>("SELECT [VersionBeforeUpgrade] FROM [migration_tempdata].[Version]")
                            .Single();
                    upgradeStatus.VersionBeforeUpgrade = EdFiOdsVersion.ParseString(versionBeforeUpgrade);

                    var requestedFinalUpgradeVersion =
                        connection.Query<string>("SELECT [RequestedFinalUpgradeVersion] FROM [migration_tempdata].[Version]")
                            .Single();
                    upgradeStatus.RequestedFinalUpgradeVersion = EdFiOdsVersion.ParseString(requestedFinalUpgradeVersion);
                }
            }

            return upgradeStatus;
        }
    }

    public class EdFiOdsUpgradeStatus
    {
        public EdFiOdsVersion VersionBeforeUpgrade { get; set; }

        public EdFiOdsVersion RequestedFinalUpgradeVersion { get; set; }

        public bool InProgress { get; set; }
    }
}
