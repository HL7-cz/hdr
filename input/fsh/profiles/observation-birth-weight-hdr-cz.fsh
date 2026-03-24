Profile: CZ_ObservationBirthWeight
Parent: Observation
Id: cz-observation-birth-weight
Title: "Observation: Birth Weight (CZ)"
Description: "Profile for recording the birth weight of a newborn using a LOINC code and units in grams."

* ^experimental = false

// Fixed identification for Body Weight (Birth)
* code = http://loinc.org#8339-4 "Birth weight measured"
* code ^short = "LOINC: Birth weight measured"

// The subject must be the newborn
* subject 1..1
* subject only Reference(Patient)
* subject ^short = "The newborn"

// Value must be a quantity in grams (g)
* value[x] 1..1
* value[x] only Quantity
* valueQuantity.value 1..1
* valueQuantity ^short = "Birth weight in grams"

// Observation status
* status = #final