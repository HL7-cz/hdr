Profile: CZ_ObservationFetalPresentation
Parent: Observation
Id: cz-observation-fetal-presentation
Title: "Observation: Fetal Presentation During Delivery (CZ)"
Description: "Presentation/position of the fetus during delivery."

* ^experimental = false

* code 1..1
* code ^short = "Fetal presentation observation code"

* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept ^short = "Fetal presentation (e.g. cephalic, breech)"

* subject 1..1
* subject only Reference(CZ_PatientCore)
* subject ^short = "The mother"

* effective[x] 1..1
* effective[x] only dateTime
* effective[x] ^short = "Date and time of assessment"
