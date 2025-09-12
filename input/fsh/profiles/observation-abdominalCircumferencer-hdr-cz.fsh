Profile: CZ_ObservationAbdominalCircumferenceHdr
Parent: Observation
Id: cz-observation-abdominalCircumference-hdr
Title: "Observation: Anthropometric Data (HDR CZ) - Abdominal Circumference"
Description: "This profile sets minimum expectations for the Observation resource to record, search, and fetch anthropometric measurements such as height, weight, BMI, and optional measurements like head, chest, and abdominal circumference."

* ^experimental = false

// Optional: Abdominal Circumference
* code = $loinc#56086-2 // "Abdominal circumference"
* value[x] only Quantity
* valueQuantity ^short = "Abdominal circumference in cm"
* valueQuantity ^definition = "The circumference of the patient's abdomen in centimeters."

* subject 1..1
* subject only Reference(CZ_PatientCore)
* effective[x] 1..1
* effective[x] ^short = "Date and time of observation"
* effective[x] ^definition = "The date and time when the observation was made."