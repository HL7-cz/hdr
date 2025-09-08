// TODO: Profile for medicationRequest obligation
Profile: CZ_MedicationRequestHospitalStayObligationsHdr
Parent: CZ_MedicationRequestHdr
Id: cz-medicationrequest-hospitalstay-obl-hdr
Title: "MedicationRequest: Obligations (HDR CZ) - hospital stay"
Description: "Profile for MedicationRequest with obligations (HDR CZ) - hospital stay."

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
