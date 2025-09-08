Profile: CZ_ObservationHeightHdr
Parent: Observation
Id: cz-observation-height-hdr
Title: "Observation: Anthropometric Data (HDR CZ) - Height"
Description: "This profile sets minimum expectations for the Observation resource to record, search, and fetch anthropometric measurements such as height, weight, BMI, and optional measurements like head, chest, and abdominal circumference."

* ^experimental = false

// Required: Height
* code = $loinc#8302-2 // "Body height"
* value[x] only Quantity
* valueQuantity ^short = "Height in cm"
* valueQuantity ^definition = "The height of the patient in centimeters."

* subject 1..1
* subject only Reference(CZ_PatientCore)
* effective[x] 1..1
* effective[x] ^short = "Date and time of observation"
* effective[x] ^definition = "The date and time when the observation was made."