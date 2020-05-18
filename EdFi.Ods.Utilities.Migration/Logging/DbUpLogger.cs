// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System.Text.RegularExpressions;
using DbUp.Engine.Output;
using log4net;

namespace EdFi.Ods.Utilities.Migration.Logging
{
    public class DbUpLogger : IUpgradeLog
    {
        private readonly ILog _logger;
        public static string LastInfoMessage = string.Empty;

        public DbUpLogger() : this(LogManager.GetLogger(typeof(DbUpLogger)))
        {
        }

        public DbUpLogger(ILog logger)
        {
            _logger = logger;
        }

        public void WriteInformation(string format, params object[] args)
        {
            var fullMessage = string.Format(format, args);
            var dbUpWarningMessagePattern = new Regex("^WARNING:\\s*", RegexOptions.IgnoreCase);

            if (dbUpWarningMessagePattern.IsMatch(fullMessage))
            {
                _logger.Warn(fullMessage);
            }
            else
            {
                LastInfoMessage = fullMessage;
                _logger.Info(fullMessage);
            }
        }

        public void WriteError(string format, params object[] args)
        {
            var fullMessage = string.Format(format, args);

            //logging for sql exception messages is handled elsewhere for readability
            if (!fullMessage.Contains("System.Data.SqlClient.SqlException"))
            {
               _logger.Error(fullMessage);
            }
        }

        public void WriteWarning(string format, params object[] args)
        {
            var fullMessage = string.Format(format, args);
            _logger.Warn(fullMessage);
        }
    }
}
