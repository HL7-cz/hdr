// TODO: Profile for dosage obligation

Profile: CZ_DosageHospitalStayObligationsHdr
Parent: Dosage
Id: cz-dosage-hospitalstay-obl-hdr
Title: "Dosage: Obligations (HDR CZ) - hospital stay"
Description: "Profile for Dosage with obligations (HDR CZ) - hospital stay."

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
