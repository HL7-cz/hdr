Instance: Immunization
InstanceOf: CZ_ImmunizationHdr
Usage: #example
Title: "Immunization example of Covid"
Description: "Immunization of Covid"
* id = "3f85726c-ad2f-441b-89ce-10000000001e"
* status = #completed
* meta.profile = "http://hl7.eu/fhir/hdr/StructureDefinition/immunization-eu-hdr"
* vaccineCode = http://snomed.info/sct#28531000087107 // Kód vakcíny proti COVID-19
* patient = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000)
* occurrenceDateTime = "2021-05-05"
* primarySource = true


Instance: Immunization-CovidExample
InstanceOf: CZ_ImmunizationHdr
Usage: #example
Title: "Očkování Covid"
Description: "Očkování proti COVID-19 u pacienta Novák Petr"

* status = #completed
//* meta.profile = "http://fhir.hl7cr.eu/hdr/StructureDefinition/cz-immunization-hdr"
* vaccineCode = http://snomed.info/sct#28531000087107 "SARS-CoV-2 vaccine"
* patient = Reference(Patient-Novak-Petr)
* occurrenceDateTime = "2021-05-05"
* primarySource = true
* manufacturer = Reference(Organization-Pfizer)
* protocolApplied[0].targetDisease = http://snomed.info/sct#840539006 "COVID-19"
* protocolApplied[0].doseNumberPositiveInt = 2
* extension[administeredProduct].extension[reference].valueReference = Reference(Medication-CovidVaccineComirnaty)
* note[0].text = "Pacient dostal druhou dávku vakcíny Comirnaty."


Instance: Organization-Pfizer
InstanceOf: Organization
Usage: #example
Title: "Pfizer výrobce vakcíny"
Description: "Organizace Pfizer s.r.o. vyrábějící vakcínu Comirnaty proti COVID-19"

* name = "Pfizer s.r.o."
* identifier[0].system = "http://fhir.hl7cr.eu/identifier/ico"
* identifier[0].value = "47620834" // IČO pro Pfizer s.r.o. (CZ)
* address[0].text = "Stroupežnického 17, 150 00 Praha 5, Česká republika"
* telecom[0].system = #phone
* telecom[0].value = "+420234097111"
* telecom[1].system = #email
* telecom[1].value = "info.cz@pfizer.com"

Instance: Sovak
InstanceOf: CZ_PractitionerCore
Usage: #example
Description: "Practitioner"
* name.use = #usual
* name.prefix = "MUDr."
* name.family = "Karel"
* name.given = "Sovák"
* name.suffix = "PhD."