// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System.Linq;
using Dapper;
using EdFi.Ods.Utilities.Migration.Providers;

namespace EdFi.Ods.Utilities.Migration.Queries
{
    public class GetStatusOfUpgradeInProgress
    {
        private readonly IDatabaseConnectionProvider _databaseConnectionProvider;

        public GetStatusOfUpgradeInProgress(IDatabaseConnectionProvider databaseConnectionProvider)
        {
            _databaseConnectionProvider = databaseConnectionProvider;
        }

        public EdFiOdsUpgradeStatus Execute(string databaseConnectionString)
        {
            var upgradeStatus = new EdFiOdsUpgradeStatus();

            using var connection = _databaseConnectionProvider.CreateConnection(databaseConnectionString);
            upgradeStatus.InProgress = connection.Query(@"
                SELECT 1
                FROM INFORMATION_SCHEMA.ROUTINES
                WHERE SPECIFIC_SCHEMA = 'migration_tempdata'")
                .Any();

            return upgradeStatus;
        }
    }

    public class EdFiOdsUpgradeStatus
    {
        public bool InProgress { get; set; }
    }
}