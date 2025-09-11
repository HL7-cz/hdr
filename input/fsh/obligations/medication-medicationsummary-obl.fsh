// TODO: Profile for medication obligation

Profile: CZ_MedicationMedicationSummaryObligationsHdr
Parent: CZ_Medication
Id: cz-medication-medicationsummary-obl-hdr
Title: "Medication Obligations: (HDR CZ) - medication summary"
Description: "Profile for Medication Obligations in the Czech Republic Health Data Repository (HDR CZ). - medication summary."

* insert SetFmmandStatusRule ( 0, informative)

// MedicationSummary.productCode (A.2.9.2.3 - Code)	is equivalent to	Medication.code	Preferred mapping
// MedicationSummary.productName (A.2.9.2.4 - Brand name)	is equal to	Medication.extension:productName	
// MedicationSummary.activeIngredient (A.2.9.2.5 - Active ingredient list)	is equal to	Medication.ingredient.item[x]	Medication.ingredient.isActive = true
// MedicationSummary.strength (A.2.9.2.6 - Strength)	is equivalent to	Medication.ingredient.strength	
// MedicationSummary.doseForm (A.2.9.2.7 - Pharmaceutical dose form)	is equal to	Medication.form

// Creator Obligations L2 ============>

// Consumer obligations L2

// Creator Obligations L3 ============>
* code insert OblCreator(#SHALL:populate-if-known,L3)
//todo vhodnější pro Organization (CZ core) - extension:logo
//* extension[productName] insert OblCreator(#SHALL:able-to-populate,L3)
* ingredient.item[x] insert OblCreator(#SHALL:able-to-populate,L3)
* ingredient.strength insert OblCreator(#SHALL:able-to-populate,L3)
* form insert OblCreator(#SHALL:able-to-populate,L3)

// Consumer obligations L3
* code insert OblConsumer(#SHALL:display,L3)
//todo vhodnější pro Organization (CZ core) - extension:logo
//* ingredient.item[x] insert OblConsumer(#SHALL:display,L3)
* form insert OblConsumer(#SHALL:display,L3)



