Profile: CZ_ObservationParity
Parent: Observation
Id: cz-observation-parity
Title: "Observation: Maternal - Parity (CZ)"
Description: "Počet porodů matky (před nynějším porodem) "

* ^experimental = false

// SNOMED kód pro Paritu
* code = http://loinc.org#11977-6 // "Parity"
* code ^short = "Parita (počet porodů)"

// Datový typ Integer podle tvého zadání
* value[x] only integer
* valueInteger ^short = "Počet předchozích porodů"

* subject 1..1
* subject only Reference(CZ_PatientCore)
* effective[x] 1..1
* effective[x] only dateTime
* effective[x] ^short = "Datum a čas záznamu"