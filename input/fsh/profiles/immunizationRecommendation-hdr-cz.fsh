//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  CZ_ImmunizationRecommendationHdr
Parent:   ImmunizationRecommendation
Id:       cz-immunizationrecommendation-hdr
Title:    "Immunization Recommendation (HDR CZ)"
Description: """This profile constrains the Immunization Recommendation resource for the purpose of this guide."""

//-------------------------------------------------------------------------------------------
* authority only Reference (CZ_OrganizationCore)
* date ^short = "When recomendation was created"
* patient only Reference (CZ_PatientCore)
* recommendation.vaccineCode from $vaccines-uv-ips (preferred)
  * ^binding.extension[+].extension[0].url = "purpose"
  * ^binding.extension[=].extension[=].valueCode = #preferred
  * ^binding.extension[=].extension[+].url = "valueSet"
  * ^binding.extension[=].extension[=].valueCanonical = "http://hl7.org/fhir/uv/ips/ValueSet/vaccines-whoatc-uv-ips"
  * ^binding.extension[=].extension[+].url = "documentation"
  * ^binding.extension[=].extension[=].valueMarkdown = "Additional conformance binding to a vaccines value set from the WHO ATC code system for use in specific jurisdictional or other contexts where use of the ATC terminology is preferred."
  * ^binding.extension[=].extension[+].url = "shortDoco"
  * ^binding.extension[=].extension[=].valueString = "For when WHO ATC code system is preferred"
  * ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
  * ^binding.description = "The type of vaccine for particular disease or diseases against which the patient has been immunised, or a code for absent/unknown immunization."

  * ^binding.extension[+].extension[0].url = "purpose"
  * ^binding.extension[=].extension[=].valueCode = #preferred
  * ^binding.extension[=].extension[+].url = "valueSet"
  * ^binding.extension[=].extension[=].valueCanonical = "http://terminology.ehdsi.eu/ValueSet/eHDSIVaccine"
  * ^binding.extension[=].extension[+].url = "documentation"
  * ^binding.extension[=].extension[=].valueMarkdown = "Additional conformance binding to the cross-border vaccines value set."
  * ^binding.extension[=].extension[+].url = "shortDoco"
  * ^binding.extension[=].extension[=].valueString = "For EU cross-border use"
  * ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
  * ^binding.description = "The type of vaccine for particular disease or diseases against which the patient has been immunised, or a code for absent/unknown immunization."
* recommendation.supportingPatientInformation only Reference (CZ_MedicalTestResultCore)
* recommendation.supportingImmunization only Reference (CZ_ImmunizationHdr or ImmunizationEvaluation)