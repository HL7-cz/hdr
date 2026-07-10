//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:    CZ_MedicationAdministrationHdr
Parent:     MedicationAdministration
Id:         cz-MedicationAdministration
Title:      "Medication Administration: HDR (CZ)"
Description: "Czech national profile for a medication administration."
//-------------------------------------------------------------------------------------------
* ^experimental = false
* . ^comment = ""
* ^purpose = "MedicationAdministration is intended for tracking the administration of medications."
* . ^short = "Czech Medication Administration"
* . ^definition = "This profile is derived from the Medication Administration in FHIR, which is a record for tracking the administration of medications."

* identifier 1..
* partOf only Reference(CZ_MedicationAdministrationHdr or MedicationAdministration or CZ_ProcedureHdr or Procedure)
* status
* status from $hl7MedicationAdminStatus
* medication[x]
* medicationReference only Reference(CZ_MedicationCore)
* medicationCodeableConcept from $dlp_lecprip (preferred)

* subject only Reference(CZ_PatientCore or CZ_PatientAnimal or Group)
* performer.actor only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_PatientCore or CZ_RelatedPersonCore or CZ_DeviceObserver)
* reasonReference only Reference(CZ_ConditionHdr or Observation or DiagnosticReport)
* device only Reference(CZ_DeviceObserver or CZ_MedicalDevice)

* dosage
  * route 0..1
  * dose 0..1