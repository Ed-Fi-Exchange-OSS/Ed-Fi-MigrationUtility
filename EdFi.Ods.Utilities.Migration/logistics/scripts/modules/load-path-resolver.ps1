# SPDX-License-Identifier: Apache-2.0
# Licensed to the Ed-Fi Alliance under one or more agreements.
# The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
# See the LICENSE and NOTICES files in the project root for more information.

param(
    [string[]] $repositoryNames
)

#Resolve if overrides or defaults are required
if ($null -eq $repositoryNames) {
    $repositoryNames = @('Ed-Fi-ODS', (Get-Item "$PSScriptRoot\..\..\..").Name)
}
if ([string]::IsNullOrWhiteSpace($env:PathResolverRepositoryOverride)) {
    Write-Host "Using repositories: $($repositoryNames -join ', ')"
}
else {
    $repositoryNames = @($env:PathResolverRepositoryOverride.Split(';'))
    Write-Host "Using repositories from environment variable: $($repositoryNames -join ', ')"
}

Write-Host "semalai repositoryNames " $repositoryNames  -ForegroundColor Green 
if ((Get-Module | Where-Object -Property Name -eq 'path-resolver')) { return }

Import-Module -Force -Scope Global "$PSScriptRoot\path-resolver.psm1" -ArgumentList @(, $repositoryNames)

# sanity check to make sure all repositories exist
Get-RepositoryResolvedPath
