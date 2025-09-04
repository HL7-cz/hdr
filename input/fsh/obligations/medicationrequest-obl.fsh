// TODO: Profile for medicationRequest obligation
Profile: CZ_MedicationRequestObligationsHdr
Parent: CZ_MedicationRequestHdr
Id: cz-medicationrequest-obl-hdr
Title: "MedicationRequest: Obligations (HDR CZ)"
Description: "Profile for MedicationRequest with obligations (HDR CZ)."

* insert SetFmmandStatusRule ( 0, informative)


// Source Code	Relationship	Target Code
// HospitalStay.pharmacotherapy.reason (A.2.7.5.1 - Medication reason)	is equivalent to	MedicationRequest.reasonCode
// HospitalStay.pharmacotherapy.reason (A.2.7.5.1 - Medication reason)	is equivalent to	MedicationRequest.reasonReference
// HospitalStay.pharmacotherapy.productCode (A.2.7.5.2 - Code)	is equivalent to	MedicationRequest.medicationCodeableConcept

// Creator Obligations L2 ============>
* reasonCode insert OblCreator(#SHALL:able-to-populate,L2)
* reasonReference insert OblCreator(#SHALL:able-to-populate,L2)
* medicationCodeableConcept insert OblCreator(#SHALL:able-to-populate,L2)

// Consumer obligations L2
* reasonCode insert OblConsumer(#SHALL:display,L2)
* reasonReference insert OblConsumer(#SHALL:display,L2)
* medicationCodeableConcept insert OblConsumer(#SHALL:display,L2)

// Creator Obligations L3 ============>
* reasonCode insert OblCreator(#SHALL:able-to-populate,L3)
* reasonReference insert OblCreator(#SHALL:able-to-populate,L3)
* medicationCodeableConcept insert OblCreator(#SHALL:able-to-populate,L3)


// Consumer obligations L3
* reasonCode insert OblConsumer(#SHALL:display,L3)
* reasonReference insert OblConsumer(#SHALL:display,L3)
* medicationCodeableConcept insert OblConsumer(#SHALL:display,L3)

// MedicationSummary.reason (A.2.9.2.1 - Medication reason)	is equal to	MedicationRequest.status	As reason for ordering
// MedicationSummary.changeReason (A.2.9.2.2 - Reason for change)	is equal to	MedicationRequest.statusReason	
// MedicationSummary.productCode (A.2.9.2.3 - Code)	is equivalent to	MedicationRequest.medicationCodeableConcept	If no details about the medication are provided
// MedicationSummary.daysSupplied (A.2.9.2.11 - Days supplied)	is equivalent to	MedicationDispense.daysSupply	

//TODO: kam se mapuje MedicationDispense.daysSupply? opravdu do MedicationDispense?

// Creator Obligations L2 ============>

// Consumer obligations L2

// Creator Obligations L3 ============>
* status insert OblCreator(#SHALL:able-to-populate,L3)
* statusReason insert OblCreator(#SHALL:populate-if-known,L3)
//TODO: rozdílné oproti předchoztí definici L3
//* medicationCodeableConcept insert OblCreator(SHALL:populate-if-known,L3)

// Consumer obligations L3
* status insert OblConsumer(#SHALL:display,L3)
* statusReason insert OblConsumer(#SHALL:display,L3)
//TODO: stejné jako předchozí
//* medicationCodeableConcept insert OblConsumer(SHALL:display,L3)
