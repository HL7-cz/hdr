// TODO: Profile for medication obligation

Profile: CZ_MedicationObligationsHdr
Parent: CZ_Medication
Id: cz-medication-obl-hdr
Title: "Medication Obligations: HDR CZ"
Description: "Profile for Medication Obligations in the Czech Republic Health Data Repository (HDR CZ)."

* insert SetFmmandStatusRule ( 0, informative)


// HospitalStay.pharmacotherapy.productCode (A.2.7.5.2 - Code)	is equivalent to	Medication.code
// HospitalStay.pharmacotherapy.intendedUse (A.2.7.5.3 - Intended use)	is equivalent to	Composition.section:sectionMedications
// HospitalStay.pharmacotherapy.productName (A.2.7.5.4 - Brand name)	is equivalent to	Medication.extension:productName
// HospitalStay.pharmacotherapy.activeIngredient (A.2.7.5.5 - Active ingredient list)	is equivalent to	Medication.ingredient.itemCodeableConcept	
// HospitalStay.pharmacotherapy.strength (A.2.7.5.6 - Strength)	is equivalent to	Medication.ingredient.strength
// HospitalStay.pharmacotherapy.doseForm (A.2.7.5.7 - Pharmaceutical dose form)	is equivalent to	Medication.form

//todo neexistuje extension productName

// Creator Obligations L2 ============>
* code insert OblCreator(#SHALL:able-to-populate,L2)
// * extension:productName insert OblCreator(#SHOULD:populate-if-known,L2)
* ingredient.itemCodeableConcept insert OblCreator(#SHOULD:populate-if-known,L2)
* ingredient.strength insert OblCreator(#SHOULD:populate-if-known,L2)
* form insert OblCreator(#SHOULD:populate-if-known,L2)

// Consumer obligations L2
* code insert OblConsumer(#SHALL:display,L2)
// * extension:productName insert OblConsumer(#SHOULD:display,L2)
* ingredient.itemCodeableConcept	 insert OblConsumer(#SHOULD:display,L2)
* ingredient.strength insert OblConsumer(#SHOULD:display,L2)
* form insert OblConsumer(#SHOULD:display,L2)

// Creator Obligations L3 ============>
* code insert OblCreator(#SHALL:able-to-populate,L3)
//* extension:productName insert OblCreator(#SHOULD:populate-if-known,L3)
* ingredient.item[x] insert OblCreator(#SHOULD:populate-if-known,L3)
* ingredient.strength insert OblCreator(#SHOULD:populate-if-known,L3)
* form insert OblCreator(#SHOULD:populate-if-known,L3)

// Consumer obligations L3
* code insert OblConsumer(#SHALL:display,L3)
//* extension:productName insert OblConsumer(#SHOULD:display,L3)
* ingredient.item[x] insert OblConsumer(#SHOULD:display,L3)
* ingredient.strength insert OblConsumer(#SHOULD:display,L3)
* form insert OblConsumer(#SHOULD:display,L3)

// MedicationSummary.productCode (A.2.9.2.3 - Code)	is equivalent to	Medication.code	Preferred mapping
// MedicationSummary.productName (A.2.9.2.4 - Brand name)	is equal to	Medication.extension:productName	
// MedicationSummary.activeIngredient (A.2.9.2.5 - Active ingredient list)	is equal to	Medication.ingredient.item[x]	Medication.ingredient.isActive = true
// MedicationSummary.strength (A.2.9.2.6 - Strength)	is equivalent to	Medication.ingredient.strength	
// MedicationSummary.doseForm (A.2.9.2.7 - Pharmaceutical dose form)	is equal to	Medication.form

// Creator Obligations L2 ============>

// Consumer obligations L2

// Creator Obligations L3 ============>
//TODO: kolize s výše uvedeným (A.2.7.5.2 - Code x A.2.9.2.3 - Code)
//* code insert OblCreator(SHALL:populate-if-known,L3)
//* extension:productName insert OblCreator(SHALL:able-to-populate,L3)
//TODO: kolize s výše uvedeným (A.2.7.5.5 - Active ingredient list x A.2.9.2.5 - Active ingredient list)
//* ingredient.item[x] insert OblCreator(SHALL:able-to-populate,L3)
//TODO: kolize s výše uvedeným (A.2.7.5.6 - Strength x A.2.9.2.6 - Strength
//* ingredient.strength insert OblCreator(SHALL:able-to-populate,L3)
//TODO: kolize s výše uvedeným (A.2.7.5.7 - Pharmaceutical dose form x A.2.9.2.7 - Pharmaceutical dose form
//* form insert OblCreator(SHALL:able-to-populate,L3)

// Consumer obligations L3
//code stejné jako výše
//* code insert OblConsumer(SHALL:display,L3)
//TODO: kolize s výše uvedeným (A.2.7.5.6 - Strength x A.2.9.2.6 - Strength
//* ingredient.item[x] insert OblConsumer(#SHALL:display,L3)
//TODO: kolize s výše uvedeným (A.2.7.5.7 - Pharmaceutical dose form x A.2.9.2.7 - Pharmaceutical dose form
//* form insert OblConsumer(#SHALL:display,L3)



