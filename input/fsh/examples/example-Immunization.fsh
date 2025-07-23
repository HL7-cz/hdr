Instance: Immunization
InstanceOf: CZ_ImmunizationHdr
Usage: #example
Title: "Immunization example of Covid"
Description: "Immunization of Covid"

* status = #completed
* meta.profile = "http://hl7.eu/fhir/hdr/StructureDefinition/immunization-eu-hdr"
* vaccineCode = http://snomed.info/sct#1119349007 // Kód vakcíny proti COVID-19
* patient = Reference(Patient-Novak-Petr)   
* occurrenceDateTime = "2021-05-05"
* primarySource = true


Instance: Sovak
InstanceOf: CZ_PractitionerCore
Usage: #example
Description: "Practitioner"
* name.use = #usual
* name.prefix = "MUDr."
* name.family = "Karel"
* name.given = "Sovák"
* name.suffix = "PhD."