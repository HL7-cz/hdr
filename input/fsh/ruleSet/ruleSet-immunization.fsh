RuleSet: ImmunizationBasic(vaccineCode, display, date, lot, patientRef)
* status = #completed
* meta.profile = "http://hl7.eu/fhir/hdr/StructureDefinition/immunization-eu-hdr"
* vaccineCode = $atc#{vaccineCode} "{display}"
* occurrenceDateTime = "{date}"
* lotNumber = "{lot}"
* primarySource = true
* patient = Reference({patientRef})

RuleSet: ImmunizationRecommendationRS(patientRef, pdate, vaccineCode, targetDiseaseCode, dueCode, dateCriterionCode, dateCriterionValue)
* meta.profile = "http://hl7.eu/fhir/hdr/StructureDefinition/immunizationrecommendation-eu-hdr"
* patient = Reference({patientRef})
* date = "{pdate}"
* recommendation[0].vaccineCode = http://snomed.info/sct#{vaccineCode}  // Kód vakcíny proti COVID-19
* recommendation[0].targetDisease = http://snomed.info/sct#{targetDiseaseCode}  // Kód pro COVID-19
* recommendation[0].forecastStatus = http://terminology.hl7.org/CodeSystem/immunization-recommendation-status#{dueCode}  // Stav doporučení
* recommendation[0].dateCriterion[0].code = http://terminology.hl7.org/CodeSystem/immunization-recommendation-date-criterion#{dateCriterionCode} // Kód kritéria data
* recommendation[0].dateCriterion[0].value = "{dateCriterionValue}" 

// Použití:
Instance: ImmunizationExample
InstanceOf: CZ_ImmunizationHdr
Usage: #example
* patient = Reference(Patient-Novak-Petr)
* insert ImmunizationBasic(J07AL02, COVID-19 vaccine, 2024-02-15, CZ-1234-5678, Practitioner/example)

// Použití:
Instance: ImmunizationRExample
InstanceOf: CZ_ImmunizationRecommendationHdr
Usage: #example
* patient = Reference(Patient-Novak-Petr)
* insert ImmunizationRecommendationRS(Patient-Novak-Petr, 2025-03-07, 1119349007, 840539006, due, earliest, 2025-03-14)
