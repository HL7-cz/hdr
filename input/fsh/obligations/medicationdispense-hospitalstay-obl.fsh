// TODO: Profile for medicationDispense obligation

Profile: CZ_MedicationDispenseHospitalStayObligationsHdr
Parent: CZ_MedicationDispenseHdr
Id: cz-medicationdispens-hospitalstay-obl-hdr
Title: "MedicationDispense: Obligations (HDR CZ) - hospital stay"
Description: "Profile for MedicationDispense with obligations (HDR CZ). - hospital stay."

* insert SetFmmandStatusRule ( 0, informative)

//HospitalStay.pharmacotherapy.reason (A.2.7.5.1 - Medication reason)	is equivalent to	MedicationRequest.reasonCode
//HospitalStay.pharmacotherapy.reason (A.2.7.5.1 - Medication reason)	is equivalent to	MedicationRequest.reasonReference
//HospitalStay.pharmacotherapy.productCode (A.2.7.5.2 - Code)	is equivalent to	MedicationRequest.medicationCodeableConcept

//TODO opravdu je reasonCode -> statusReasonCodeableConcept
//TODO opravdu je reasonReference -> statusReasonReference

// Creator Obligations L2 ============>
// * reasonCode insert OblCreator(#SHALL:able-to-populate,L2)
* statusReasonCodeableConcept insert OblCreator(#SHALL:able-to-populate,L2)
// * reasonReference insert OblCreator(#SHALL:able-to-populate,L2)
* statusReasonReference insert OblCreator(#SHALL:able-to-populate,L2)
* medicationCodeableConcept insert OblCreator(#SHALL:able-to-populate,L2)

// Consumer obligations L2
// * reasonCode insert OblConsumer(#SHALL:display,L2)
* statusReasonCodeableConcept insert OblConsumer(#SHALL:display,L2)
// * reasonReference insert OblConsumer(#SHALL:display,L2)
* statusReasonReference insert OblConsumer(#SHALL:display,L2)
* medicationCodeableConcept insert OblConsumer(#SHALL:display,L2)

// Creator Obligations L3 ============>
// * reasonCode insert OblCreator(#SHALL:able-to-populate,L3)
* statusReasonCodeableConcept insert OblCreator(#SHALL:able-to-populate,L3)
// * reasonReference insert OblCreator(#SHALL:able-to-populate,L3)
* statusReasonReference insert OblCreator(#SHALL:able-to-populate,L3)
* medicationCodeableConcept insert OblCreator(#SHALL:able-to-populate,L3)


// Consumer obligations L3
// * reasonCode insert OblConsumer(#SHALL:display,L3)
* statusReasonCodeableConcept insert OblConsumer(#SHALL:display,L3)
// * reasonReference insert OblConsumer(#SHALL:display,L3)
* statusReasonReference insert OblConsumer(#SHALL:display,L3)
* medicationCodeableConcept insert OblConsumer(#SHALL:display,L3)
