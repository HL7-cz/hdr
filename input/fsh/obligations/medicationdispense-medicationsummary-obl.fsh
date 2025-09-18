// TODO: Profile for medicationDispense obligation

Profile: CZ_MedicationDispenseMedicationSummaryObligationsHdr
Parent: CZ_MedicationDispenseHdr
Id: cz-medicationdispens-medicationsummary-obl-hdr
Title: "MedicationDispense: Obligations (HDR CZ) - medication summary"
Description: "Profile for MedicationDispense with obligations (HDR CZ). - medication summary."

* insert SetFmmandStatusRule ( 0, informative)

//MedicationSummary.productCode (A.2.9.2.3 - Code)	is equivalent to	MedicationDispense.medicationCodeableConcept	
//MedicationSummary.productCode (A.2.9.2.3 - Code)	is equivalent to	Medication.code	Preferred mapping
//MedicationSummary.productName (A.2.9.2.4 - Brand name)	is equal to	Medication.extension:productName	
//MedicationSummary.activeIngredient (A.2.9.2.5 - Active ingredient list)	is equal to	Medication.ingredient.item[x]	Medication.ingredient.isActive = true
//MedicationSummary.strength (A.2.9.2.6 - Strength)	is equivalent to	Medication.ingredient.strength	
//MedicationSummary.doseForm (A.2.9.2.7 - Pharmaceutical dose form)	is equal to	Medication.form	

// Creator Obligations L3 ============>
* medicationCodeableConcept insert OblCreator(#SHALL:populate-if-known,L3)


// Consumer obligations L3
* medicationCodeableConcept insert OblConsumer(#SHALL:display,L3)

