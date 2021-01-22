// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

namespace EdFi.Ods.Utilities.Migration.Tests.Models.v3
{
    public class BellScheduleClassPeriod : Version3DbModel
    {
        [Key]
        public string BellScheduleName { get; set; }

        [Key]
        public string ClassPeriodName { get; set; }

        [Key]
        public int SchoolId { get; set; }
    }
}
