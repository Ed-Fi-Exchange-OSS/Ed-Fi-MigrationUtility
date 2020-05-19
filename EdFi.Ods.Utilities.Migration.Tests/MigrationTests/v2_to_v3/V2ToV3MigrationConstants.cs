// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

namespace EdFi.Ods.Utilities.Migration.Tests.MigrationTests.v2_to_v3
{
    public static class V2ToV3MigrationConstants
    {
        public const string DefaultEdFiNamespacePrefix = "uri://ed-fi.org/";
        public const string EdFiXmlImportNamespace = "http://ed-fi.org/0310";

        // See: DATASTD-1175
        public const string AllPermittedNamespaceCharacters =
            @"abcdefghijlmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890$-_.+!*'(),";

        public static readonly string UserProvidedNamespaceForUnresolvableTypes =
            $"uri://test-org-{AllPermittedNamespaceCharacters}/";
    }
}