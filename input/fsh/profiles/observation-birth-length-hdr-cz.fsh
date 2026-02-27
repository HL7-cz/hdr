Profile: CZ_ObservationBirthLength
Parent: Observation
Id: cz-observation-birth-length
Title: "Observation: Birth Length (CZ)"
Description: "The birth length (body height) of a newborn using a LOINC code and units in centimeters."

* ^experimental = false

// Fixed identification for Body height (Birth)
* code = http://loinc.org#89269-5 "Birth height measured"
* code ^short = "LOINC: Birth height measured"

// The subject must be the newborn
* subject 1..1
* subject only Reference(Patient)
* subject ^short = "The newborn"

// Value must be a quantity in centimeters (cm)
* value[x] 1..1
* value[x] only Quantity
* valueQuantity.value 1..1
* valueQuantity ^short = "Birth length in centimeters"
* valueQuantity ^definition = "Birth length in centimeters"

// Observation status
* status = #final