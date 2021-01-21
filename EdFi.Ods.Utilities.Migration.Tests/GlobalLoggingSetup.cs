// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System.IO;
using System.Reflection;
using log4net;
using log4net.Config;
using NUnit.Framework;

namespace EdFi.Ods.Utilities.Migration.Tests
{
    [SetUpFixture]
    public class GlobalLoggingSetup
    {
        [OneTimeSetUp]
        public void OneTimeSetUp()
        {
            var assembly = typeof(GlobalLoggingSetup).GetTypeInfo().Assembly;

            var configPath = Path.Combine(TestContext.CurrentContext.TestDirectory, "log4net.config");

            XmlConfigurator.Configure(LogManager.GetRepository(assembly), new FileInfo(configPath));
        }
    }
}