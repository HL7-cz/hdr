Profile: CZ_PatientObligationsHdr
Parent: CZ_PatientCore
Id: cz-patient-obl-hdr
Title:    "Patient: Obligations"
Description: "This profile defines obligations for an human Patient in FHIR for the purpose of this guide."
// * ^publisher = "HL7 Europe"
// * ^copyright = "HL7 Europe"
* insert SetFmmandStatusRule ( 0, informative)

// TEST OBLIGATIONS  ====>

// Obligations at the element level 
// Server obligations
* identifier insert ObligationSet-02_creator-should-able
* identifier.system insert ObligationSet-01_creator-shall-able
* identifier.value insert ObligationSet-01_creator-shall-able
* name.given insert ObligationSet-01_creator-shall-able
* name.family insert ObligationSet-01_creator-shall-able
* birthDate insert ObligationSet-02_creator-should-able
* extension[patient-nationality] insert ObligationSet-04_creator-should-if-known
* gender insert ObligationSet-01_creator-shall-able

* telecom insert ObligationSet-04_creator-should-if-known
* address insert ObligationSet-04_creator-should-if-known

* generalPractitioner.identifier insert ObligationSet-02_creator-should-able
//* generalPractitioner.name insert ObligationSet-02_creator-should-able
//* generalPractitioner.qualification insert ObligationSet-04_creator-should-if-known
//* generalPractitioner.telecom insert ObligationSet-04_creator-should-if-known

//* link.RelatedPersonCore insert ObligationSet-04_creator-should-if-known
//* link.RelatedPersonCore.relationship insert ObligationSet-04_creator-should-if-known
//* link.RelatedPersonCore.telecom insert ObligationSet-04_creator-should-if-known
