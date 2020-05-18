﻿// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System;

namespace EdFi.Ods.Utilities.Migration.Tests.MigrationTests.Models.v2
{
    public class BellScheduleMeetingTime : Version2DbModel
    {
        [Key]
        public int SchoolId { get; set; }

        [Key]
        public int GradeLevelDescriptorId { get; set; }

        [Key]
        public DateTime Date { get; set; }

        [Key]
        public string BellScheduleName { get; set; }

        [Key]
        public string ClassPeriodName { get; set; }

        [Key]
        public TimeSpan StartTime { get; set; }

        public TimeSpan EndTime { get; set; }

        public string AlternateDayName { get; set; }

        public bool? OfficialAttendancePeriod { get; set; }
    }
}
