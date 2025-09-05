Profile: CZ_ObservationChestCircumferenceHdr
Parent: Observation
Id: cz-observation-chestCircumference-hdr
Title: "Observation: Anthropometric Data (HDR CZ) - Chest Circumference"
Description: "This profile sets minimum expectations for the Observation resource to record, search, and fetch anthropometric measurements such as height, weight, BMI, and optional measurements like head, chest, and abdominal circumference."

* ^experimental = false

// Optional: Chest Circumference
* code = $loinc#8280-0 // "Chest circumference"
* value[x] only Quantity
* valueQuantity ^short = "Chest circumference in cm"
* valueQuantity ^definition = "The circumference of the patient's chest in centimeters."


* subject 1..1
* subject only Reference(CZ_PatientCore)
* effective[x] 1..1
* effective[x] ^short = "Date and time of observation"
* effective[x] ^definition = "The date and time when the observation was made."