// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System.Collections.Generic;
using System.IO;
using System.Xml;
using EdFi.Ods.Utilities.Migration.Tests.Models.v3;

namespace EdFi.Ods.Utilities.Migration.Tests.MsSql.MigrationTests.v2_to_v3._Shared
{
    public class DescriptorXmlImporter
    {
        public DescriptorXmlImporter(string edfiXmlImportNamespace)
        {
            EdfiXmlImportNamespace = edfiXmlImportNamespace;
        }

        private string EdfiXmlImportNamespace { get; }

        public List<Descriptor> GetDescriptorsFromXml(string xmlFileName, string descriptorName)
        {
            var xmlFilePath = GetDefaultXmlPath("3.1", xmlFileName);
            var descriptorXmlParseResult = new List<Descriptor>();
            var xml = new XmlDocument();
            xml.Load(xmlFilePath);
            var namespaceManager = new XmlNamespaceManager(xml.NameTable);
            namespaceManager.AddNamespace("edfi", EdfiXmlImportNamespace);

            var descriptorNodeList = xml.SelectNodes(
                $"edfi:InterchangeDescriptors/edfi:{descriptorName}",
                namespaceManager);

            foreach (XmlNode descriptor in descriptorNodeList)
            {
                descriptorXmlParseResult.Add(
                    new Descriptor
                    {
                        CodeValue = descriptor.SelectSingleNode("edfi:CodeValue", namespaceManager)?.InnerText,
                        Description = descriptor.SelectSingleNode("edfi:Description", namespaceManager)?.InnerText,
                        Namespace = descriptor.SelectSingleNode("edfi:Namespace", namespaceManager)?.InnerText,
                        ShortDescription = descriptor.SelectSingleNode("edfi:ShortDescription", namespaceManager)?.InnerText
                    });
            }

            return descriptorXmlParseResult;
        }

        private static string GetDefaultXmlPath(string versionDirectory, string xmlFileName)
        {
            var baseDirectory =
                Path.GetFullPath(SqlServerMigrationTestSettingsProvider.GetConfigVariable("BaseDescriptorXmlDirectoryPath"));

            return Path.Combine(baseDirectory, versionDirectory, xmlFileName);
        }
    }
}
