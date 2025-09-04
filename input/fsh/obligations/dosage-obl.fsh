// TODO: Profile for dosage obligation

Profile: CZ_DosageObligationsHdr
Parent: Dosage
Id: cz-dosage-obl-hdr
Title: "Dosage: Obligations (HDR CZ)"
Description: "Profile for Dosage with obligations (HDR CZ)."

* insert SetFmmandStatusRule ( 0, informative)


// HospitalStay.pharmacotherapy.route (A.2.7.5.9 - Route of administration)	is equivalent to	Dosage.route	
// HospitalStay.pharmacotherapy.period (A.2.7.5.10 - Period of treatment)	is related to	Dosage.timing.repeat.duration	

// Creator Obligations L2 ============>
* route insert OblCreator(#SHOULD:populate-if-known,L2)
* timing.repeat.duration insert OblCreator(#SHALL:able-to-populate,L2)

// Consumer obligations L2
* route insert OblConsumer(#SHOULD:display,L2)
* timing.repeat.duration insert OblConsumer(#SHALL:display,L2)

// Creator Obligations L3 ============>
* route insert OblCreator(#SHOULD:populate-if-known,L3)
* timing.repeat.duration insert OblCreator(#SHALL:able-to-populate,L3)

// Consumer obligations L3
* route insert OblConsumer(#SHOULD:display,L3)
* timing.repeat.duration insert OblConsumer(#SHALL:display,L3)

// MedicationSummary.dosageRegimen (A.2.9.2.8 - Dosage Regimen)	is equivalent to	Dosage	MedicationRequest.dosageInstruction or MedicationDispense.dosageInstruction
// MedicationSummary.route (A.2.9.2.9 - Route of administration)	is equivalent to	Dosage.route	
// MedicationSummary.period (A.2.9.2.10 - Period of treatment)	is equivalent to	Dosage.timing.repeat.duration	CHECK it is used the name period but the imression is that is the duration not the period

// Creator Obligations L3 ============>
//TODO: rozdílné oproti předchoztí definici L3
//* route insert OblCreator(#SHALL:able-to-populate,L3)
//TODO: stejné jako předchozí
//* timing.repeat.duration insert OblCreator(#SHALL:able-to-populate,L3)

// Consumer obligations L3
//TODO: rozdílné oproti předchoztí definici L3
//* route insert OblConsumer(#SHALL:display,L3)
//TODO: stejné jako předchozí
//* timing.repeat.duration insert OblConsumer(#SHALL:display,L3)
