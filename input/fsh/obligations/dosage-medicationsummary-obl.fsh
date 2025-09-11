// TODO: Profile for dosage obligation

Profile: CZ_DosageMedicationSummaryObligationsHdr
Parent: Dosage
Id: cz-dosage-medicationsummary-obl-hdr
Title: "Dosage: Obligations (HDR CZ) - medication summary"
Description: "Profile for Dosage with obligations (HDR CZ) - medication summary."

* insert SetFmmandStatusRule ( 0, informative)

// MedicationSummary.dosageRegimen (A.2.9.2.8 - Dosage Regimen)	is equivalent to	Dosage	MedicationRequest.dosageInstruction or MedicationDispense.dosageInstruction
// MedicationSummary.route (A.2.9.2.9 - Route of administration)	is equivalent to	Dosage.route	
// MedicationSummary.period (A.2.9.2.10 - Period of treatment)	is equivalent to	Dosage.timing.repeat.duration	CHECK it is used the name period but the imression is that is the duration not the period

// Creator Obligations L3 ============>

* route insert OblCreator(#SHALL:able-to-populate,L3)
* timing.repeat.duration insert OblCreator(#SHALL:able-to-populate,L3)

// Consumer obligations L3
* route insert OblConsumer(#SHALL:display,L3)
* timing.repeat.duration insert OblConsumer(#SHALL:display,L3)
