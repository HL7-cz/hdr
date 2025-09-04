// TODO: Profile for medicationDispense obligation

Profile: CZ_MedicationDispenseObligationsHdr
Parent: CZ_MedicationDispenseHdr
Id: cz-medicationdispense-obl-hdr
Title: "MedicationDispense: Obligations (HDR CZ)"
Description: "Profile for MedicationDispense with obligations (HDR CZ)."

* insert SetFmmandStatusRule ( 0, informative)


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


//MedicationSummary.productCode (A.2.9.2.3 - Code)	is equivalent to	MedicationDispense.medicationCodeableConcept	

// Creator Obligations L3 ============>
//TODO: liší se od výše able-to-populate->populate-if-known
//* medicationCodeableConcept insert OblCreator(#SHALL:populate-if-known,L3)


// Consumer obligations L3
//stejné jako výše
//* medicationCodeableConcept insert OblConsumer(#SHALL:display,L3)

