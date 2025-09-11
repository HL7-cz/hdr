// TODO: Profile for medicationStatement obligation

Profile: CZ_MedicationStatementObligationsHdr
Parent: CZ_MedicationStatement
Id: cz-medicationstatement-obl-hdr
Title: "MedicationStatement: Obligations (HDR CZ)"
Description: "Profile for MedicationStatement with obligations (HDR CZ)."

* insert SetFmmandStatusRule ( 0, informative)

// HospitalStay.pharmacotherapy.reason (A.2.7.5.1 - Medication reason)	is equivalent to	MedicationStatement.reasonReference
// HospitalStay.pharmacotherapy.reason (A.2.7.5.1 - Medication reason)	is equivalent to	MedicationStatement.reasonCode
// HospitalStay.pharmacotherapy.productCode (A.2.7.5.2 - Code)	is equivalent to	MedicationStatement.medicationCodeableConcept
// HospitalStay.pharmacotherapy.period (A.2.7.5.10 - Period of treatment)	is equivalent to	MedicationStatement.effectivePeriod

// Creator Obligations L2 ============>
* reasonCode insert OblCreator(#SHALL:able-to-populate,L2)
* reasonReference insert OblCreator(#SHALL:able-to-populate,L2)
* medicationCodeableConcept insert OblCreator(#SHALL:able-to-populate,L2)
* effectivePeriod insert OblCreator(#SHALL:able-to-populate,L2)

// Consumer obligations L2
* reasonCode insert OblConsumer(#SHALL:display,L2)
* reasonReference insert OblConsumer(#SHALL:display,L2)
* medicationCodeableConcept insert OblConsumer(#SHALL:display,L2)
* effectivePeriod insert OblConsumer(#SHALL:display,L2)

// Creator Obligations L3 ============>
* reasonCode insert OblCreator(#SHALL:able-to-populate,L3)
* reasonReference insert OblCreator(#SHALL:able-to-populate,L3)
* medicationCodeableConcept insert OblCreator(#SHALL:able-to-populate,L3)
* effectivePeriod insert OblCreator(#SHALL:able-to-populate,L3)

// Consumer obligations L3
* reasonCode insert OblConsumer(#SHALL:display,L3)
* reasonReference insert OblConsumer(#SHALL:display,L3)
* medicationCodeableConcept insert OblConsumer(#SHALL:display,L3)
* effectivePeriod insert OblConsumer(#SHALL:display,L3)