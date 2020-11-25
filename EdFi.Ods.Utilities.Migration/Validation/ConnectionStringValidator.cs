// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System;
using EdFi.Ods.Utilities.Migration.Providers;
using log4net;

namespace EdFi.Ods.Utilities.Migration.Validation
{
    public class ConnectionStringValidator : IConnectionStringValidator
    {
        private readonly IDatabaseConnectionProvider _databaseConnectionProvider;
        private static readonly ILog _logger = LogManager.GetLogger(typeof(ConnectionStringValidator));

        public ConnectionStringValidator(IDatabaseConnectionProvider databaseConnectionProvider)
        {
            _databaseConnectionProvider = databaseConnectionProvider;
        }

        public bool IsValidConnectionString(string connectionString)
        {
            _logger.Info("Testing connection string");

            try
            {
                using var connection = _databaseConnectionProvider.CreateConnection(connectionString);
                connection.Open();
                connection.Close();
            }
            catch (Exception ex)
            {
                var msg = "Please check that the provided database connection string is valid"
                          + Environment.NewLine
                          + Environment.NewLine
                          + $"Details:  The following exception was returned when attempting to connect to the database with the connection string provided:  {ex.GetType()}: {ex.Message}";

                _logger.Error(msg);
                return false;
            }

            _logger.Info("Connection string test successful");
            return true;
        }
    }
}