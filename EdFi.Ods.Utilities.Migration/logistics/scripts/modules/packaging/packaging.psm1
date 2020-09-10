# SPDX-License-Identifier: Apache-2.0
# Licensed to the Ed-Fi Alliance under one or more agreements.
# The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
# See the LICENSE and NOTICES files in the project root for more information.

& "$PSScriptRoot\..\..\..\..\logistics\scripts\modules\load-path-resolver.ps1"

function New-Nuspec {
    param(
        [parameter(mandatory = $true)] $nuspecPath,
        [parameter(mandatory = $true)] [string] $id,
        [parameter(mandatory = $true)] [string] $description,

        [string] $version = "0.0.0",
        [string] $title,
        [string] $authors,
        [string] $owners,
        [bool] $requireLicenseAcceptance = $false,
        [string] $releaseNotes,
        [string] $copyright = "Copyright $((Get-Date).year)",
        [hashtable] $dependencies,
        [switch] $forceOverwrite
    )
    if (Test-Path $nuspecPath) {
        if (-not $forceOverwrite) {
            throw "Nuspec file at '$nuspecPath' already exists"
        }
        else {
            rm $nuspecPath
        }
    }
    '<?xml version="1.0"?>' | Out-File $nuspecPath
    $nuspecPath = Resolve-Path $nuspecPath
    [xml]$xml = Get-Content $nuspecPath

    $package = $xml.AppendChild($xml.CreateElement("package"))
    $metadata = $package.AppendChild($xml.CreateElement("metadata"))
    $metadata.AppendChild($xml.CreateElement("id")).AppendChild($xml.CreateTextNode("$id")) | Out-Null
    $metadata.AppendChild($xml.CreateElement("version")).AppendChild($xml.CreateTextNode("$version")) | Out-Null
    $metadata.AppendChild($xml.CreateElement("title")).AppendChild($xml.CreateTextNode("$title")) | Out-Null
    $metadata.AppendChild($xml.CreateElement("authors")).AppendChild($xml.CreateTextNode("$authors")) | Out-Null
    $metadata.AppendChild($xml.CreateElement("owners")).AppendChild($xml.CreateTextNode("$owners")) | Out-Null
    $metadata.AppendChild($xml.CreateElement("requireLicenseAcceptance")).AppendChild($xml.CreateTextNode("$requireLicenseAcceptance".tolower())) | Out-Null
    $metadata.AppendChild($xml.CreateElement("description")).AppendChild($xml.CreateTextNode("$description")) | Out-Null
    $metadata.AppendChild($xml.CreateElement("releaseNotes")).AppendChild($xml.CreateTextNode("$releaseNotes")) | Out-Null
    $metadata.AppendChild($xml.CreateElement("copyright")).AppendChild($xml.CreateTextNode("$copyright")) | Out-Null
    $metadata.AppendChild($xml.CreateElement("tags")).AppendChild($xml.CreateTextNode("$tags")) | Out-Null
    if ($dependencies) {
        $metaDependencies = $metadata.AppendChild($xml.CreateElement("dependencies"))
        $dependenciesGroup = $metaDependencies.AppendChild($xml.CreateElement("group"))
        foreach ($packageVersionPair in $dependencies.GetEnumerator()) {
            $dependency = $dependenciesGroup.AppendChild($xml.CreateElement("dependency"))
            $dependencyAttribute = $xml.CreateAttribute("$($packageVersionPair.Key)")
            $dependencyAttribute.Value = "$($packageVersionPair.Value)"
            $dependency.Attibutes.Append($dependencyAttribute) | Out-Null
        }
    }
    $package.AppendChild($xml.CreateElement("files")) | Out-Null

    $xml.Save($nuspecPath)
}

Export-ModuleMember -Function New-Nuspec
