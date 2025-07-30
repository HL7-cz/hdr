Instance: ImmunizationRecommendation
InstanceOf: CZ_ImmunizationRecommendationHdr
Usage: #example
Title: "Immunization recommendation example"
Description: "Immunization recommendation of vaccination"


* meta.profile = "http://hl7.eu/fhir/hdr/StructureDefinition/immunizationrecommendation-eu-hdr"
* patient = Reference(Patient/Mracena)
* date = "2025-03-07"
* recommendation.vaccineCode = http://snomed.info/sct#1119349007 // Kód vakcíny proti COVID-19
* recommendation.targetDisease = http://snomed.info/sct#840539006 // Kód pro COVID-19
* recommendation.forecastStatus = http://terminology.hl7.org/CodeSystem/immunization-recommendation-status#due // Stav doporučení
* recommendation.dateCriterion.code = $loinc#30981-5 // Kód kritéria data
* recommendation.dateCriterion.value = "2025-03-14"
