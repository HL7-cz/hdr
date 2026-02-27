Profile: CZ_ObservationGravidity
Parent: Observation
Id: cz-observation-gravidity
Title: "Observation: Maternal - Gravidity (CZ)"
Description: "Celkový počet těhotenství - gravidita"

* ^experimental = false

// SNOMED kód pro Graviditu
* code =  http://loinc.org#11996-6 // "Gravida"
* code ^short = "Gravidita (počet těhotenství)"

// Datový typ Integer podle tvého zadání
* value[x] only integer
* valueInteger ^short = "Počet těhotenství"

* subject 1..1
* subject only Reference(CZ_PatientCore)
* effective[x] 1..1
* effective[x] only dateTime
* effective[x] ^short = "Datum a čas záznamu"