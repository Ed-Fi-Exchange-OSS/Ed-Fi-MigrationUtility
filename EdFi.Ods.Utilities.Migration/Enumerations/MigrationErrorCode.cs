// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

namespace EdFi.Ods.Utilities.Migration.Enumerations
{
    public enum MigrationErrorCode
    {
        //defaults
        NoError = 0,
        Default = 50000,

        //validation
        ObjectNotFound = 50001,
        SourceNotFound = 50002,
        CannotComputeValidationResult = 50003,
        CannotComputeHash = 50004,
        DataValidationFailure = 50005,

        //descriptor import:  stored proc errors
        InsertDescriptorMissingParameter = 51000,
        InsertDescriptorMissingColumn = 51001,
        ImportDescriptorXmlMissingParameter = 51002,
        CannotFindTypeColumnOnTargetTable = 51003,
        CannotFindDescriptorColumnOnTargetTable = 51004,
        CannotFindIdColumnOnTypeTable = 51005,

        //extensions
        DependencyFound = 52000,
        ExtensionFound = 52001,

        //uncategorized data compatibility errors
        StaffCredentialAmbiguousLevelDescriptor = 53000,
        StaffCredentialStateAbbreviationMissing = 53001,
        OpenStaffPosition = 53002,
        RestraintEvent = 53003,
        DisciplineAction = 53004,
        GradingPeriodNullPeriodSequence = 53005,
        GradingPeriodDuplicateKey = 53006,
        MissingRequiredEducationOrganizationReference = 53007,
        AccountCode = 53008,
        DisciplineIncidentMissingIncidentAssociation = 53009,
        ConflictingTableName = 53012,

        //calendar config
        CalendarConfigInvalidSchoolId = 54000,
        CalendarConfigMissingSessionDates = 54001,
        CalendarConfigSessionSchoolYearMismatch = 54002,
        CalendarConfigMissingCalendarDates = 54003,
        CalendarConfigAmbiguousYearForCalendarDate = 54004,
        CalendarConfigMissingGradingPeriodBeginDate = 54005,
        CalendarConfigAmbiguousYearForGradingPeriodBeginDate = 54006,
        CalendarConfigGradebookEntrySchoolYearMismatch = 54007,
        CalendarConfigSessionGradingPeriodSchoolYearMismatch = 54008,
        CalendarConfigRequiredMultiYearSession = 54009,
        CalendarConfigRequiredCalendarDateNotInSession = 54010,
        CalendarConfigRequiredGradingPeriodBeginDateNotInSession = 54011,

        //namespace / codevalue related data compatibility errors
        DescriptorNamespaceChanged = 55000,
        AssessmentMissingNamespace = 55001,
        CredentialMissingNamespace = 55002,
        DescriptorInvalidNamespace = 55003,
        AssessmentInvalidNamespace = 55004,
        DescriptorInvalidCodeValue = 55005,
        LearningObjectiveInvalidNamespace = 55006,

        // 3.1.1 to 3.3 New Error Codes
        AddressPrimaryKeyChangeExtensionCompatibility = 56000
    }
}
