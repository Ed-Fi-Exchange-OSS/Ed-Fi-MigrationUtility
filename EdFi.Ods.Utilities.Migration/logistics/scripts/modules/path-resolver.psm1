# SPDX-License-Identifier: Apache-2.0
# Licensed to the Ed-Fi Alliance under one or more agreements.
# The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
# See the LICENSE and NOTICES files in the project root for more information.

<#
.Synopsis
Resolve paths across specified repositories

.Description
Resolve paths across specified repositories.

A folder anchor is used to allow resolution across repositories.
For overrides to work, the relative folder paths for the override and the core implementation must be the same.

.Parameter repositoryNames
The RepositoryNames argument has a default value of Ed-Fi-ODS and Ed-Fi-ODS-Implementation.
The value can be overridden by either passing the repository names when the module is imported or by specifying an environment
variable 'PathResolverRepositoryOverride'. If both are specified, the repositories passed directly to the module during import have
preeminence. The format for the environment variable is semicolon separated values.

Important: Names of the repositories do not matter when they are specified. However the order is important. Repositories will be
interpreted with the first repository name as the most general or 'core' and the last repository specified as the most implementation
specific.

NOTE: When passing in repository names to Import-Module with -ArgumentList, some non-obvious syntax is required.
In short, it must be invoked like this:

    import-module path-resolve.psm1 -ArgumentList @(,@('root1','root2','rootN'))

The $repositoryNames parameter is an array, and -ArgumentList expects an array; in order for -ArgumentList to interpret the
$repositoryNames parameter as a single argument, rather than expand it as a list of multiple positional arguments, it must be passed
as an array within an array.
#>
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

#Create new object in memory (not just a pointer)
$invertedRepositoryNames = $repositoryNames.Clone()
#Invert the values
[Array]::Reverse($invertedRepositoryNames)

#Works up the $path until it finds the first incidence of the $itemName in the $path.
#Then trims the end of the $path off at that point and returns the path. (does include $itemName)
#in the value returned.
function Get-AncestorItemPath ([string]$path, [string]$itemName) {
    #Remove Case Sensitivity
    $path = $path.ToLower()
    $itemName = $itemName.ToLower()

    $pos = $path.LastIndexOf("\$itemName\")

    if ($pos -lt 0) {
        if ($path.EndsWith("\$itemName")) {
            $pos = $path.LastIndexOf("\$itemName")
        }
        else {
            throw "Unable to locate '$itemName' in path '$path'."
        }
    }

    $newPath = $path.Substring(0, $pos) + "\$itemName"
    return (Resolve-Path $newPath)
}

function Get-RootPath {
    #Look up from this script's location to find the highest level common named folder.
    $logisticsBasePath = Get-AncestorItemPath $PSScriptRoot "logistics"
    #Jump up two levels to get the root.
    return Resolve-Path "$logisticsBasePath\..\..\"
}

#Using the Root path for the repositories, return back the path for the $repositoryName specified.
function Get-RootBasedRepositoryPath ([string]$repositoryName) {
    $root = Get-RootPath
    $repositoryPath = "$($root)$repositoryName"

    If (-not (Test-Path $repositoryPath)) {
        throw ("$repositoryName path not found under $($root)!")
    }
    return $repositoryPath
}

<#
.Synopsis
Return paths to specified files, checking all repositories, and including only the most specific version of each file.

.Description
Return paths to specified files, checking all repositories, and including only the most specific version of each file.

For example, in a system with three repositories, laid out like this:

    \Ed-Fi-Core
        \1234.txt
        \qwer.txt
    \Ed-Fi-Plugins
        \qwer.txt
        \asdf.txt
    \Ed-Fi-Apps
        \asdf.txt
        \zxcv.txt

Seraching for zxcv.txt or asdf.txt returns the version in Ed-Fi-Apps; searching for qwer.txt returns the version in Ed-Fi-Plugins, and searching for 1234.txt returns the version in Ed-Fi-Core.

.Parameter PathSuffix
The path suffix to append to the repository path. E.g. if $pathSuffix is 'logistics', find files in <most specific repository>\logistics.
#>
function Get-RepositoryResolvedPath ([string]$pathSuffix) {
    foreach ($repositoryName in $invertedRepositoryNames) {
        $repositoryPath = Get-RootBasedRepositoryPath $repositoryName
        If (Test-Path "$repositoryPath\$pathSuffix") {
            return Resolve-Path "$repositoryPath\$pathSuffix"
        }
    }
    $errorMsg = "$pathSuffix was not found in the following repositories:`r`n{0}" -f ($invertedRepositoryNames -join "`r`n")
    throw ($errorMsg)
}


#Sets a global folders variable. Is the primary access mechanism for resolving paths. Utilizes a delegate.
if (-not ($script:folders)) {
    $script:folders = @{ }
    #This is used in remote web deployments to find this path resolver and CANNOT be a delegate. 
    $folders.scripts = [System.Func[Object, Object]] { return (Get-RepositoryResolvedPath "logistics\scripts\$($args[0])") }
    $folders.base = [System.Func[Object, Object]] { return (Get-RepositoryResolvedPath "$($args[0])") }
    $folders.tools = [System.Func[Object, Object]] { return (Get-RepositoryResolvedPath "tools\$($args[0])") }
    $folders.modules = [System.Func[Object, Object]] { return (Get-RepositoryResolvedPath "logistics\scripts\modules\$($args[0])") }
    $folders.activities = [System.Func[Object, Object]] { return (Get-RepositoryResolvedPath "logistics\scripts\activities\$($args[0])") }
}

$exportFunction = @(    
    'Get-RepositoryResolvedPath'
    'Get-RepositoryRoot'        
)
$exportVariable = @(
    "folders"
)

Export-ModuleMember -Function $exportFunction -variable $exportVariable 
