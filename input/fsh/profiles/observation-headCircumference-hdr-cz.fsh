Profile: CZ_ObservationHeadCircumferenceHdr
Parent: Observation
Id: cz-observation-headCircumference-hdr
Title: "Observation: Anthropometric Data (HDR CZ)"
Description: "This profile sets minimum expectations for the Observation resource to record, search, and fetch anthropometric measurements such as height, weight, BMI, and optional measurements like head, chest, and abdominal circumference."

* ^experimental = false

// Optional: Head Circumference
* code = $loinc#9843-4 //"Head Occipital-frontal circumference"
* value[x] only Quantity
* valueQuantity ^short = "Head circumference in cm"
* valueQuantity ^definition = "The circumference of the patient's head in centimeters."

* subject 1..1
* subject only Reference(CZ_PatientCore)
* effective[x] 1..1
* effective[x] ^short = "Date and time of observation"
* effective[x] ^definition = "The date and time when the observation was made."