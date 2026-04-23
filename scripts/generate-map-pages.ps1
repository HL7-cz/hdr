$ErrorActionPreference = 'Stop'

function Get-LastSegment([string]$value) {
  if ([string]::IsNullOrWhiteSpace($value)) { return '' }
  return ($value -split '/')[-1]
}

function Get-BaseName([string]$fileName) {
  return [System.IO.Path]::GetFileNameWithoutExtension($fileName)
}

function Escape-Xml([string]$value) {
  if ($null -eq $value) { return '' }
  return [System.Security.SecurityElement]::Escape($value)
}

function Normalize-Relation([string]$value) {
  switch ($value) {
    'equal' { return 'equivalent' }
    'equivalent' { return 'equivalent' }
    'relatedto' { return 'related-to' }
    default { return 'Needs clarification' }
  }
}

function Parse-FshConceptMap([string]$path) {
  $lines = Get-Content -Path $path
  $instanceId = ''
  $groups = New-Object System.Collections.ArrayList
  $currentGroup = $null
  $currentElement = $null
  $pendingField = $null
  $pendingValue = ''

  foreach ($rawLine in $lines) {
    $line = [string]$rawLine

    if ($pendingField) {
      if ($line -match '^(.*)"\s*$') {
        $pendingValue += "`n" + $Matches[1]
        $currentElement[$pendingField] = $pendingValue
        $pendingField = $null
        $pendingValue = ''
      } else {
        $pendingValue += "`n" + $line
      }
      continue
    }

    if ($line -match '^Instance:\s*(.+)$') {
      $instanceId = $Matches[1].Trim()
      continue
    }

    if ($line -match '^\* group\[\+\]\.source = "(.+)"$') {
      $currentGroup = [ordered]@{
        source = $Matches[1]
        target = ''
        elements = New-Object System.Collections.ArrayList
      }
      [void]$groups.Add($currentGroup)
      $currentElement = $null
      continue
    }

    if ($line -match '^\* group\[=\]\.target = "(.+)"$') {
      if ($null -eq $currentGroup) { throw "Target before source in $path" }
      $currentGroup.target = $Matches[1]
      continue
    }

    if ($line -match '^\* group\[=\]\.element\[\+\]\.code = #(.+)$') {
      if ($null -eq $currentGroup) { throw "Element before group in $path" }
      $currentElement = [ordered]@{
        source = $currentGroup.source
        target = $currentGroup.target
        code = $Matches[1]
        display = ''
        targetCode = ''
        targetDisplay = ''
        relation = ''
        comment = ''
      }
      [void]$currentGroup.elements.Add($currentElement)
      continue
    }

    if ($null -eq $currentElement) { continue }

    if ($line -match '^\* group\[=\]\.element\[=\]\.display = "(.*)"$') {
      $currentElement.display = $Matches[1]
      continue
    }

    if ($line -match '^\* group\[=\]\.element\[=\]\.target\.code = #(.+)$') {
      $currentElement.targetCode = $Matches[1]
      continue
    }

    if ($line -match '^\* group\[=\]\.element\[=\]\.target\.display = "(.*)"$') {
      $currentElement.targetDisplay = $Matches[1]
      continue
    }

    if ($line -match '^\* group\[=\]\.element\[=\]\.target\.equivalence = #(.+)$') {
      $currentElement.relation = $Matches[1]
      continue
    }

    if ($line -match '^\* group\[=\]\.element\[=\]\.target\.comment = "(.*)"$') {
      $currentElement.comment = $Matches[1]
      continue
    }

    if ($line -match '^\* group\[=\]\.element\[=\]\.target\.comment = "(.*)$') {
      $pendingField = 'comment'
      $pendingValue = $Matches[1]
      continue
    }
  }

  return [ordered]@{
    instanceId = $instanceId
    groups = $groups
  }
}

function Get-FriendlyTitle([string]$value) {
  switch ($value) {
    'AdvanceDirectives' { return 'Advance Directives' }
    'BirthSummary' { return 'Birth Summary' }
    'FunctionalStatus' { return 'Functional Status' }
    'HospitalDischargeReport' { return 'Hospital Discharge Report' }
    'HospitalStay' { return 'Hospital Stay' }
    'MedicationSummary' { return 'Medication Summary' }
    'ObjectiveFindings' { return 'Objective Findings' }
    'PatientHistory' { return 'Patient History' }
    'PlanOfCare' { return 'Plan of Care' }
    default { return $value }
  }
}

$pairs = @(
  @{ fsh = 'AdvanceDirectives2FHIRHdr-cz.fsh'; xml = 'AdvanceDirectives-map.xml' },
  @{ fsh = 'Alerts2FHIRHdr-cz.fsh'; xml = 'Alerts-map.xml' },
  @{ fsh = 'BirthSummary2FHIRHdr-cz.fsh'; xml = 'BirthSummary-map.xml' },
  @{ fsh = 'Encounter2FHIRHdr-cz.fsh'; xml = 'InPatientEncounter-map.xml' },
  @{ fsh = 'FunctionalStatus2FHIRHdr-cz.fsh'; xml = 'FunctionalStatus-map.xml' },
  @{ fsh = 'Hdr2FHIRHdr-cz.fsh'; xml = 'HospitalDischargeReport-map.xml' },
  @{ fsh = 'Header2FHIRHdr-cz.fsh'; xml = 'Header-map.xml' },
  @{ fsh = 'HospitalStay2FHIRHdr-cz.fsh'; xml = 'HospitalStay-map.xml' },
  @{ fsh = 'MedicationSummary2FHIRHdr-cz.fsh'; xml = 'MedicationSummary-map.xml' },
  @{ fsh = 'ObjectiveFindings2FHIRHdr-cz.fsh'; xml = 'ObjectiveFindings-map.xml' },
  @{ fsh = 'PatientHistory2FHIRHdr-cz.fsh'; xml = 'PatientHistory-map.xml' },
  @{ fsh = 'PlanOfCare2FHIRHdr-cz.fsh'; xml = 'PlanOfCare-map.xml' }
)

$archiveDir = Join-Path $PWD 'input/archive/map'
$pagecontentDir = Join-Path $PWD 'input/pagecontent'
$generated = New-Object System.Collections.ArrayList
$skipped = New-Object System.Collections.ArrayList

foreach ($pair in $pairs) {
  try {
    $fshPath = Join-Path $archiveDir $pair.fsh
    $xmlPath = Join-Path $pagecontentDir $pair.xml

    if (-not (Test-Path $fshPath)) { throw "Missing FSH file" }
    if (-not (Test-Path $xmlPath)) { throw "Missing XML file" }

    $parsed = Parse-FshConceptMap -path $fshPath
    $allElements = @($parsed.groups | ForEach-Object { $_.elements } | ForEach-Object { $_ })
    if ($allElements.Count -eq 0) { throw "No mapping rows" }

    $firstGroup = $parsed.groups[0]
    $sourceTail = Get-LastSegment $firstGroup.source
    $mainTargetTail = Get-LastSegment $firstGroup.target
    $xmlBaseName = Get-BaseName $pair.xml
    $friendlyTitle = Get-FriendlyTitle $xmlBaseName.Replace('-map', '')
    $svgName = "$xmlBaseName.svg"

    $rows = foreach ($element in $allElements) {
      if ([string]::IsNullOrWhiteSpace($element.code) -or [string]::IsNullOrWhiteSpace($element.targetCode) -or [string]::IsNullOrWhiteSpace($element.relation)) {
        throw "Missing required mapping data"
      }

      $targetCode = $element.targetCode
      $resource = if ($targetCode.Contains('.')) { $targetCode.Split('.')[0] } else { $targetCode }
      $targetTail = Get-LastSegment $element.target
      $resourceProfile = "$resource ($targetTail)"
      $comment = $element.comment
      $relation = Normalize-Relation $element.relation

@"
          <tr>
            <td>$(Escape-Xml $element.code)</td>
            <td>$(Escape-Xml $element.display)</td>
            <td>$(Escape-Xml $relation)</td>
            <td>$(Escape-Xml $resourceProfile)</td>
            <td>$(Escape-Xml $targetCode)</td>
            <td></td>
            <td>$(Escape-Xml $comment)</td>
          </tr>
"@
    }

    $rowsBlock = ($rows -join "`r`n").TrimEnd()

    $xmlContent = @"
<?xml version="1.0" encoding="UTF-8"?>
<div xmlns="http://www.w3.org/1999/xhtml"
     xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
     xsi:schemaLocation="http://hl7.org/fhir ../../input-cache/schemas/R5/fhir-single.xsd">

  <head>
    <meta http-equiv="Content-Type" content="application/xhtml+xml; charset=UTF-8" />
    <title>$(Escape-Xml $friendlyTitle) -&gt; FHIR profily (CZ HDR)</title>

    <style type="text/css">

      .model-map-block { margin: 0 0 1rem 0; }

      .callout-wrapper {
        border: 1px solid #c9cdd3;
        border-radius: 10px;
        background: #f2f4f7;
        padding: 10px 12px;
      }

      .callout-box { color: #222; }

      .table-wrap {
        border: 1px solid #c9cdd3;
        border-radius: 10px;
        background: #f7f8fa;
        padding: 10px;
        margin: 0 0 1rem 0;
      }

      .table-wrap table {
        width: 100%;
        border-collapse: collapse;
        table-layout: fixed;
        background: #fff;
      }

      .table-wrap th,
      .table-wrap td {
        border: 1px solid #bfc5cc;
        padding: 6px 8px;
        vertical-align: top;
        word-wrap: break-word;
      }

      .table-wrap caption {
        text-align: left;
        font-weight: bold;
        margin: 0 0 6px 0;
      }

      .src-head { background: #2f63b7; color: #fff; }
      .relhead { background: #7b389f; color: #fff; }
      .tgt-head { background: #cf003e; color: #fff; }

      .src-sub { background: #97abd7; }
      .relsub { background: #c9bed1; }
      .tgt-sub { background: #cf8398; }

    </style>
  </head>

  <body>

    <div class="model-map-block">
      <div class="callout-wrapper">
        <div class="callout-box">
          <strong>Probíhající sladění:</strong>
          Logické modely Xt-EHR jsou průběžně revidovány a dále zpřesňovány.
        </div>
      </div>
    </div>

    <h3>$(Escape-Xml $sourceTail) -&gt; $(Escape-Xml $mainTargetTail)</h3>

    <p>Hereafter a browseable diagram showing how the $(Escape-Xml $xmlBaseName.Replace('-map', '')) model is realized by the HL7 FHIR Profiles of this guide</p>

    <h4 id="model">Model Overview</h4>

    <p>{% include $svgName %}</p>

    <div class="table-wrap">

      <strong>Kontext mapování</strong>

      <ul>
        <li>
          <strong>Zdrojový logický model:</strong>
          <a href="StructureDefinition-$(Escape-Xml $sourceTail).html">$(Escape-Xml $sourceTail)</a>
        </li>

        <li>
          <strong>Cílová ConceptMap:</strong>
          <a href="ConceptMap-$(Escape-Xml $parsed.instanceId).html">$(Escape-Xml $parsed.instanceId)</a>
        </li>

        <li>
          <strong>Hlavní cílový profil:</strong>
          <a href="StructureDefinition-$(Escape-Xml $mainTargetTail).html">$(Escape-Xml $mainTargetTail)</a>
        </li>

      </ul>

    </div>

    <div class="table-wrap">

      <table summary="Mapování $(Escape-Xml $friendlyTitle) na CZ HDR profily">

        <caption>$(Escape-Xml $friendlyTitle) -&gt; FHIR profily (CZ HDR)</caption>

        <thead>
          <tr>
            <th colspan="2" class="src-head">$(Escape-Xml $friendlyTitle) (Logický model)</th>
            <th class="relhead">Vztah</th>
            <th colspan="4" class="tgt-head">FHIR cíl</th>
          </tr>
          <tr>
            <th class="src-sub">Prvek</th>
            <th class="src-sub">Popis</th>
            <th class="relsub">Vztah</th>
            <th class="tgt-sub">Zdroj/Profil</th>
            <th class="tgt-sub">Prvek</th>
            <th class="tgt-sub">Popis</th>
            <th class="tgt-sub">Poznámky</th>
          </tr>
        </thead>

        <tbody>
$rowsBlock
        </tbody>

      </table>

    </div>

  </body>

</div>
"@

    Set-Content -Path $xmlPath -Value $xmlContent -Encoding UTF8
    [void]$generated.Add($pair.xml)
  } catch {
    [void]$skipped.Add("$($pair.fsh) -> $($pair.xml): $($_.Exception.Message)")
  }
}

"Generated $($generated.Count) files:"
$generated
"Skipped $($skipped.Count) files:"
$skipped
