Profile: CZ_PatientObligationsHdr
Parent: CZ_PatientCore
Id: cz-patient-obl-hdr
Title:    "Patient: Obligations"
Description: "This profile defines obligations for an human Patient in FHIR for the purpose of this guide."
// * ^publisher = "HL7 Europe"
// * ^copyright = "HL7 Europe"
* insert SetFmmandStatusRule ( 0, informative)

// TEST OBLIGATIONS  ====>
// Creator Obligations
* identifier insert OblCreator(#SHALL:able-to-populate)
* identifier[RID] insert OblCreator(#SHALL:able-to-populate)
* name.given insert OblCreator(#SHALL:able-to-populate)
* name.family insert OblCreator(#SHALL:able-to-populate)
* name.text insert OblCreator(#SHALL:able-to-populate) //can-send
* telecom insert OblCreator(#SHOULD:able-to-populate) //can-send
* gender insert OblCreator(#SHALL:able-to-populate)
* birthDate insert OblCreator(#SHALL:able-to-populate)
* generalPractitioner insert OblCreator(#SHOULD:able-to-populate) //can-send
* address insert OblCreator(#SHALL:able-to-populate) //can-send

// consumer obligations
* identifier insert OblConsumer(#SHALL:display)
* name.given insert OblConsumer(#SHALL:display)
* name.family insert OblConsumer(#SHALL:display)
* name.text insert OblConsumer(#SHOULD:display)
* telecom insert OblConsumer(#SHALL:display)
* gender insert OblConsumer(#SHALL:display)
* birthDate insert OblConsumer(#SHALL:display)
* generalPractitioner insert OblConsumer(#SHOULD:display)
* address insert OblConsumer(#SHALL:display)

// Obligations at the element level
// Server obligations
/*
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
*/
//* generalPractitioner.name insert ObligationSet-02_creator-should-able
//* generalPractitioner.qualification insert ObligationSet-04_creator-should-if-known
//* generalPractitioner.telecom insert ObligationSet-04_creator-should-if-known

//* link.RelatedPersonCore insert ObligationSet-04_creator-should-if-known
//* link.RelatedPersonCore.relationship insert ObligationSet-04_creator-should-if-known
//* link.RelatedPersonCore.telecom insert ObligationSet-04_creator-should-if-known
