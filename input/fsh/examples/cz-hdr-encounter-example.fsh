Instance: CZ-Encounter-HDR-Example
InstanceOf: CZ_EncounterHdr
Usage: #example
Title: "CZ-Encounter-HDR Example"
Description: "Czech HDR - example of an inpatient encounter"

// Encounter status and class
* status = #finished
* class = $v3-ActCode#IMP
* priority.coding[0].system = $actPriority
* priority.coding[0].code = #EM
* priority.coding[0].display = "Emergency"

// Encounter type and subject
//* type[0].coding[0].system = $encounter-type TODO: custom valueset and codesystem
//* type[0].coding[0].code = #DIS 
//* type[0].coding[0].display = "Discharge"
* subject = Reference(Mracena2)

// Note for the encounter - nelze pouzit
//* extension[1].url = "http://hl7.org/fhir/StructureDefinition/encounter-note"
//* extension[1].valueString = "This is a test of the encounter note field."

// Encounter period
* period.start = "2025-01-01T08:00:00+01:00"
* period.end = "2025-01-10T08:00:00+01:00"

// Reason for encounter
* reasonCode[0].coding[0].system = $icd10
* reasonCode[0].coding[0].code = #I50
* reasonCode[0].coding[0].display = "Heart failure"

// Legal status of the encounter
* extension[0].url = "http://example.org/fhir/StructureDefinition/legalStatus"
* extension[0].valueCodeableConcept.coding[0].system = $sct
* extension[0].valueCodeableConcept.coding[0].code = #398165009
* extension[0].valueCodeableConcept.coding[0].display = "Legal"

// Hospitalization details
* hospitalization.admitSource.coding[0].system = $admit-source
* hospitalization.admitSource.coding[0].code = #mp
* hospitalization.admitSource.coding[0].display = "Medical Practitioner/physician referral"
* hospitalization.dischargeDisposition.coding[0].system = $discharge-disposition
* hospitalization.dischargeDisposition.coding[0].code = #home
* hospitalization.dischargeDisposition.coding[0].display = "Home"

// Location details
* location[0].location = Reference(Location-2)
* location[0].period.start = "2025-01-01T08:00:00+01:00"
* location[0].period.end = "2025-01-03T08:00:00+01:00"

* location[1].location = Reference(Location-3)
* location[1].period.start = "2025-01-03T08:00:00+01:00"
* location[1].period.end = "2025-01-07T08:00:00+01:00"

* location[2].location = Reference(Location-4)
* location[2].period.start = "2025-01-07T08:00:00+01:00"
* location[2].period.end = "2025-01-10T08:00:00+01:00"

// Adminiting provider details
* serviceProvider = Reference(RegisteringProviderExample)

// Participant details
* participant[0].individual = Reference(Practitioner-2)
* participant[0].type.coding[0].system = $v3-ParticipationType
* participant[0].type.coding[0].code = #ADM
* participant[0].type.coding[0].display = "Admitter"

// Diagnosis details
* diagnosis[0].condition = Reference(CZ-Condition-HDR-Example)
* diagnosis[0].use.coding[0].system = $diagnosis-role
* diagnosis[0].use.coding[0].code = #AD
* diagnosis[0].use.coding[0].display = "Admission diagnosis"



// 7. Encounter: Inpatient hospitalization
Instance: HospitalEncounter
InstanceOf: CZ_EncounterHdr
Usage: #example
Title: "CZ-Encounter-HDR Example of finished hospital encounter"
Description: "Czech HDR - example of finished hospital encounter"
* meta.profile[0] = "https://hl7.cz/fhir/hdr/StructureDefinition/cz-encounter-hdr"
//* id = "hospital-encounter"
* status = #finished
* class.code = #IMP // Corrected code assignment
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.display = "inpatient encounter"
* subject = Reference(Mracena2)
* period.start = "2025-03-01T10:15:00+01:00"
* period.end = "2025-03-10T09:30:00+01:00"
* serviceProvider = Reference(RegisteringProviderExample)

//------------------------------

Instance: HospitalEncounter-Novak-Petr
InstanceOf: CZ_EncounterHdr
Usage: #example
Title: "CZ-Encounter-HDR Example of encounter with emergency priority"
Description: "Czech HDR - example of encounter with emergency priority"
* id = "10f5c49e-086d-4016-8dd1-b555306bf620"
* status = #finished
* class.code = #IMP 
* class.system = $cz-encounter-typ-kontaktu
* class.display = "inpatient encounter"
* subject = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000)
* period.start = "2025-03-01T10:15:00+01:00"
* period.end = "2025-03-10T09:30:00+01:00"
* serviceProvider = Reference(RegisteringProviderExample)
// Reason for encounter
* reasonReference = Reference(urn:uuid:35717696-8a99-4f99-a938-ec0ec88a65a2)
* hospitalization.admitSource.coding[0].system = $admit-source
* hospitalization.admitSource.coding[0].code = #outp
* hospitalization.admitSource.coding[0].display = "From outpatient department"
* priority.coding[0].system = $actPriority
* priority.coding[0].code = #EM
* priority.coding[0].display = "emergency"
* participant[0].individual = Reference(Practitioner-Admitter)
* participant[0].type.coding[0].system = $v3-ParticipationType
* participant[0].type.coding[0].code = #ADM
* participant[0].type.coding[0].display = "Admitter"
* participant[1].individual = Reference(Practitioner-Referrer-detail)
* participant[1].type.coding[0].system = $v3-ParticipationType
* participant[1].type.coding[0].code = #REF
* participant[1].type.coding[0].display = "Referrer"
* hospitalization.dischargeDisposition.coding[0].system = $discharge-disposition
* hospitalization.dischargeDisposition.coding[0].code = #home
* hospitalization.dischargeDisposition.coding[0].display = "Home"
// Location details
* location[0].location = Reference(Location-Chrudim-Chir1)
* location[0].period.start = "2025-03-01T08:00:00+01:00"
* location[0].period.end = "2025-03-02T08:00:00+01:00"
* location[1].location = Reference(Location-Chrudim-ChirJIP)
* location[1].period.start = "2025-03-02T08:00:00+01:00"
* location[1].period.end = "2025-03-04T08:00:00+01:00"
* location[2].location = Reference(Location-Chrudim-Chir1)
* location[2].period.start = "2025-03-04T08:00:00+01:00"
* location[2].period.end = "2025-03-10T08:00:00+01:00"


Instance: HospitalEncounter-Novak-Petr_L1
InstanceOf: CZ_EncounterHdr
Usage: #example
Title: "CZ-Encounter-HDR Example of encounter for Novak Petr"
Description: "Czech HDR - example of encounter for Novak Petr"
* id = "f08151d0-a7ad-4a7b-b7b9-97eb1d394ffb"
* status = #finished
* class.code = #IMP 
* class.system = $cz-encounter-typ-kontaktu
* class.display = "inpatient encounter"
* subject = Reference(urn:uuid:48a9d440-4194-42c1-87ad-b5a39020a4d0)
* period.start = "2025-03-01T10:15:00+01:00"
* period.end = "2025-03-10T09:30:00+01:00"
* serviceProvider = Reference(urn:uuid:9f7c3d74-2c71-4b92-9a59-2b6f37ecb3d1) // nelze zapsat do bundelu
