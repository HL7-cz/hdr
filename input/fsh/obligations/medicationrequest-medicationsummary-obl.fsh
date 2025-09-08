// TODO: Profile for medicationRequest obligation
Profile: CZ_MedicationRequestMedicationSummaryObligationsHdr
Parent: CZ_MedicationRequestHdr
Id: cz-medicationrequest-medicationsummary-obl-hdr
Title: "MedicationRequest: Obligations (HDR CZ) - medication summary"
Description: "Profile for MedicationRequest with obligations (HDR CZ) - medication summary."

* insert SetFmmandStatusRule ( 0, informative)
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
* medicationCodeableConcept insert OblCreator(#SHALL:populate-if-known,L3)

// Consumer obligations L3
* status insert OblConsumer(#SHALL:display,L3)
* statusReason insert OblConsumer(#SHALL:display,L3)
* medicationCodeableConcept insert OblConsumer(#SHALL:display,L3)
