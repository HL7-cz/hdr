Profile: CZ_ObservationGestationalAge
Parent: Observation
Id: cz-observation-gestational-age
Title: "Observation: Maternal - Gestational age at delivery (CZ)"
Description: "Gestational age at delivery expressed as weeks + days, for example 39+6."

* ^experimental = false

* code = http://loinc.org#76516-4 "Gestational age--at birth"
* code ^short = "Gestational age at delivery"

* value[x] only string
* valueString ^short = "Gestational age expressed as weeks + days, for example 39+6"

* subject 1..1
* subject only Reference(CZ_PatientCore)
* effective[x] 1..1
* effective[x] only dateTime
* effective[x] ^short = "Date and time of delivery"
