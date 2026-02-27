Profile: CZ_ObservationMultiplePregnancy
Parent: Observation
Id: cz-observation-multiple-pregnancy
Title: "Observation: Maternal - Multiple pregnancy and fetus count (CZ)"
Description: "Multiple pregnancy and fetus count."

* ^experimental = false

// Hlavní kód pro vícečetné těhotenství (SNOMED CT)
* code = http://loinc.org#64724-8 // "Multiple pregnancy - ano/ne"
* code ^short = "Multiple pregnancy "

// Základní informace: Ano/Ne
* value[x] only boolean
* valueBoolean ^short = "Příznak vícečetného těhotenství"

// Komponenta pro počet plodů (Fetus count - LOINC)
* component ^short = "Počet plodů"
* component.code = http://loinc.org#55281-0 // "Number of Fetuses"
* component.value[x] only integer
* component.valueInteger ^short = "Number of Fetuses"

// Standardní CZ metadata podle vzoru
* subject 1..1
* subject only Reference(CZ_PatientCore)
* effective[x] 1..1
* effective[x] only dateTime
* effective[x] ^short = "Datum a čas záznamu"