//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  CZ_ImmunizationRecommendationHdr
Parent:   ImmunizationRecommendation
Id:       cz-immunizationRecommendation-hdr
Title:    "ImmunizationRecommendation (CZ HDR)"
Description: """This profile defines how to represent Immunization Recommandations for the purpose of this guide."""
//-------------------------------------------------------------------------------------------

* date ^short = "When recomendation was created"
* patient only Reference (CZ_PatientCore)
* recommendation
  * vaccineCode from http://hl7.org/fhir/uv/ips/ValueSet/vaccines-uv-ips (preferred)
  * vaccineCode ^binding.extension[+].extension[0].url = "purpose"
  * vaccineCode ^binding.extension[=].extension[=].valueCode = #candidate
  * vaccineCode ^binding.extension[=].extension[+].url = "valueSet"
  * vaccineCode ^binding.extension[=].extension[=].valueCanonical = "http://hl7.org/fhir/uv/ips/ValueSet/vaccines-whoatc-uv-ips"
  * vaccineCode ^binding.extension[=].extension[+].url = "documentation"
  * vaccineCode ^binding.extension[=].extension[=].valueMarkdown = "Additional conformance binding to a vaccines value set from the WHO ATC code system for use in specific jurisdictional or other contexts where use of the ATC terminology is preferred."
  * vaccineCode ^binding.extension[=].extension[+].url = "shortDoco"
  * vaccineCode ^binding.extension[=].extension[=].valueString = "For when WHO ATC code system is preferred"
  * vaccineCode ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
  * vaccineCode ^binding.description = "The type of vaccine for particular disease or diseases against which the patient has been immunised, or a code for absent/unknown immunization."


  * ^short = "Generic description of the vaccine/prophylaxis or its component(s)"
* recommendation.targetDisease from ConditionHdrVS (preferred) // Check Value Set
  * ^short = "Disease or agent that the vaccination provides protection against"
* recommendation.forecastStatus ^short = "Recommendation status"
* recommendation.dateCriterion ^slicing.discriminator[0].type = #value
* recommendation.dateCriterion ^slicing.discriminator[0].path = "code"
* recommendation.dateCriterion ^slicing.rules = #open
* recommendation.dateCriterion contains nextDose ..1
* recommendation.dateCriterion[nextDose].code = $loinc#30980-7
* recommendation.dateCriterion[nextDose].value 1..1
* recommendation.doseNumberPositiveInt ^short = "Dose Number"
* recommendation.seriesDosesPositiveInt ^short = "Number of doses"

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
