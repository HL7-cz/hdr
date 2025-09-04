// TODO: Profile for medicationAdministration obligation
Profile: CZ_MedicationAdministrationObligationsHdr
Parent: MedicationAdministration
Id: cz-medicationadministration-obl-hdr
Title: "Medication Administration Obligations (HDR CZ)"
Description: "Profile for Medication Administration Obligations in the Czech Republic Health Data Repository (HDR CZ)."

* insert SetFmmandStatusRule ( 0, informative)

// HospitalStay.pharmacotherapy.reason (A.2.7.5.1 - Medication reason)	is equivalent to	MedicationAdministration.reasonCode	
// HospitalStay.pharmacotherapy.reason (A.2.7.5.1 - Medication reason)	is equivalent to	MedicationAdministration.reasonReference	
// HospitalStay.pharmacotherapy.productCode (A.2.7.5.2 - Code)	is equivalent to	MedicationAdministration.medicationCodeableConcept	
// HospitalStay.pharmacotherapy.dosageRegimen (A.2.7.5.8 - Dosage Regimen)	is related to	MedicationAdministration	several elements used
// HospitalStay.pharmacotherapy.route (A.2.7.5.9 - Route of administration)	is equivalent to	MedicationAdministration.dosage.route	
// HospitalStay.pharmacotherapy.period (A.2.7.5.10 - Period of treatment)	is equivalent to	MedicationAdministration.occurencePeriod	

//todo occurencePeriod -> effectivePeriod

// Creator Obligations L2 ============>
* reasonCode insert OblCreator(#SHALL:able-to-populate,L2)
* reasonReference insert OblCreator(#SHALL:able-to-populate,L2)
* medicationCodeableConcept insert OblCreator(#SHALL:able-to-populate,L2)
* dosage.route insert OblCreator(#SHOULD:populate-if-known,L2)
* effectivePeriod insert OblCreator(#SHALL:able-to-populate,L2)

// Consumer obligations L2
* reasonCode insert OblConsumer(#SHALL:display,L2)
* reasonReference insert OblConsumer(#SHALL:display,L2)
* medicationCodeableConcept insert OblConsumer(#SHALL:display,L2)
* dosage.route insert OblConsumer(#SHOULD:display,L2)
* effectivePeriod insert OblConsumer(#SHALL:display,L2)

// Creator Obligations L3 ============>
* reasonCode insert OblCreator(#SHALL:able-to-populate,L3)
* reasonReference insert OblCreator(#SHALL:able-to-populate,L3)
* medicationCodeableConcept insert OblCreator(#SHALL:able-to-populate,L3)
* dosage.route insert OblCreator(#SHOULD:populate-if-known,L3)
* effectivePeriod insert OblCreator(#SHALL:able-to-populate,L3)

// Consumer obligations L3
* reasonCode insert OblConsumer(#SHALL:display,L3)
* reasonReference insert OblConsumer(#SHALL:display,L3)
* medicationCodeableConcept insert OblConsumer(#SHALL:display,L3)
* dosage.route insert OblConsumer(#SHOULD:display,L3)
* effectivePeriod insert OblConsumer(#SHALL:display,L3)