Profile: CZ_MedicationHospitalStayObligationsHdr
Parent: CZ_Medication
Id: cz-medication-hospitalstay-obl-hdr
Title: "Medication Obligations: (HDR CZ) - hospital stay"
Description: "Profile for Medication Obligations in the Czech Republic Health Data Repository (HDR CZ). - hospital stay."

* insert SetFmmandStatusRule ( 0, informative)


// HospitalStay.pharmacotherapy.productCode (A.2.7.5.2 - Code)	is equivalent to	Medication.code
// HospitalStay.pharmacotherapy.intendedUse (A.2.7.5.3 - Intended use)	is equivalent to	Composition.section:sectionPharmacotherapy
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