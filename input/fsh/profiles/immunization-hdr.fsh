//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  CZ_ImmunizationHdr
Parent:   Immunization
Id:       cz-immunization-hdr
Title:    "Immunization (HDR CZ)"
Description: """This profile constrains the Immunization resource for the purpose of this guide."""

//-------------------------------------------------------------------------------------------

* ^experimental = false
* ^purpose = "This profile constrains the Immunization resource for the purpose of this guide."

* insert ImposeProfile($ImmunizationEuHdr, 0)

// check preadoption of R5 element
* extension contains ImmunizationAdministeredProduct named administeredProduct 0..1
* extension[administeredProduct].extension[concept]
* extension[administeredProduct].extension[reference].valueReference only Reference ( CZ_MedicationCore )

* patient only Reference(CZ_PatientCore)
* occurrence[x] only dateTime

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  CZ_ImmunizationRecommendationHdr
Parent:   ImmunizationRecommendation
Id:       cz-immunizationrecommendation-hdr
Title:    "Immunization Recommendation (HDR CZ)"
Description: """This profile constrains the Immunization Recommendation resource for the purpose of this guide."""

//-------------------------------------------------------------------------------------------

* ^experimental = false
* ^purpose = "This profile constrains the Immunization resource for the purpose of this guide."

* insert ImposeProfile($ImmunizationRecommendationEuHdr, 0)

* date ^short = "When recomendation was created"
* patient only Reference (CZ_PatientCore)
