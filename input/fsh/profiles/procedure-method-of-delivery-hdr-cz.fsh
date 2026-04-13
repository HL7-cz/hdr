Profile: CZ_ProcedureMethodOfDelivery
Parent: Procedure
Id: cz-procedure-method-of-delivery
Title: "Procedure: Method of Delivery (CZ)"
Description: "The delivery method (e.g., Spontaneous, Cesarean, Forceps). The subject is the mother, and the reasonReference points to the newborn."

* ^experimental = false

// Fixed identification: The code must be from the Delivery Methods dataset
* code 1..1
* code from https://hl7.cz/fhir/hdr/ValueSet/cz-method-of-delivery (required)
* code ^short = "SNOMED CT: Delivery method"

// The subject is the mother
* subject 1..1
* subject only Reference(CZ_PatientCore)
* subject ^short = "The mother"

// Optional clinical rationale; Patient is not an allowed reasonReference target type in Procedure
* reasonReference ^short = "Clinical rationale (condition/observation/procedure/report)"

// Status of the delivery procedure
* status = #completed
