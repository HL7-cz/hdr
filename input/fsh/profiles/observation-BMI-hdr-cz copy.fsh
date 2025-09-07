Profile: CZ_ObservationBMIHdr
Parent: Observation
Id: cz-observation-BMI-hdr
Title: "Observation: Anthropometric Data (HDR CZ) - BMI"
Description: "This profile sets minimum expectations for the Observation resource to record, search, and fetch anthropometric measurements such as height, weight, BMI, and optional measurements like head, chest, and abdominal circumference."

* ^experimental = false

// Required: BMI
* code = $loinc#39156-5 // "Body mass index (BMI)"
* value[x] only Quantity
* valueQuantity ^short = "BMI"
* valueQuantity ^definition = "The body mass index calculated from height and weight."

* subject 1..1
* subject only Reference(CZ_PatientCore)
* effective[x] 1..1
* effective[x] ^short = "Date and time of observation"
* effective[x] ^definition = "The date and time when the observation was made."