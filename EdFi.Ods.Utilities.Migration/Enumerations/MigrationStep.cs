// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

namespace EdFi.Ods.Utilities.Migration.Enumerations
{
    public sealed class MigrationStep : Enumeration<MigrationStep>
    {
        public static MigrationStep Setup = new MigrationStep(0, "Setup", VersionTarget.VersionSpecific);
        public static MigrationStep CompatibilityCheck = new MigrationStep(1, "Precheck", VersionTarget.VersionSpecific);
        public static MigrationStep Upgrade = new MigrationStep(2, "Upgrade", VersionTarget.VersionSpecific);
        public static MigrationStep Cleanup = new MigrationStep(3, "Cleanup", VersionTarget.AllVersions);

        public int ExecutionOrder => Value;
        public string FolderName => $"{ExecutionOrder:D2}{DisplayName}";
        public VersionTarget ScriptVersionTarget { get; }

        public enum VersionTarget
        {
            AllVersions,
            VersionSpecific
        }

        private MigrationStep(int value, string displayName, VersionTarget scriptVersionTarget) : base(value, displayName)
        {
            ScriptVersionTarget = scriptVersionTarget;
        }
    }
}
