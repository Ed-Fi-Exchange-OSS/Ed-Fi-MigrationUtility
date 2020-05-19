// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.
 
using System;
using System.Collections.Generic;
using System.Linq;
using DbUp.Engine;

namespace EdFi.Ods.Utilities.Migration
{
    public class OdsUpgradeResult
    {
        public void AddStepResult(string scriptDirectory, DatabaseUpgradeResult dbUpResult)
        {
            var stepResult = new OdsStepResult
                             {
                                 ScriptDirectory = scriptDirectory,
                                 Successful = dbUpResult.Successful,
                                 Error = dbUpResult.Error,
                                 ScriptsExecuted = dbUpResult.Scripts.Select(x => x.Name).ToList()
                             };

            AddStepResult(stepResult);
        }

        private void AddStepResult(OdsStepResult stepResult)
        {
            _stepResult.Add(stepResult);
            ScriptsExecuted.AddRange(stepResult.ScriptsExecuted);
            if (stepResult.Error != null)
            {
                Error = stepResult.Error;
            }
        }

        public void AddUpgradeResult(OdsUpgradeResult upgradeResult)
        {
            foreach (var subStep in upgradeResult._stepResult)
            {
                AddStepResult(subStep);
            }
        }

        private readonly List<OdsStepResult> _stepResult = new List<OdsStepResult>();
        public bool Successful => _stepResult.Any() && _stepResult.All(s => s.Successful);
        public Exception Error { get; private set; }
        public List<string> ScriptsExecuted { get; } = new List<string>();
    }

    public class OdsStepResult
    {
        public string ScriptDirectory { get; set; }
        public bool Successful { get; set; }
        public Exception Error { get; set; }
        public List<string> ScriptsExecuted { get; set; }
    }
}