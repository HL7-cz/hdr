// Instance: Není známá informace o alergii
Instance: AllergyInfoUnknown
InstanceOf: CZ_AllergyIntoleranceHdr
Usage: #example
Title: "Allergy Information Unknown"
Description: "No information is available regarding the patient’s allergy status."
// Povinný identifikátor
* identifier[0].system = "urn:oid:1.2.203.24341.1.1.999"
* identifier[0].value = "no-known-allergy-001"
//clinicalStatus
* clinicalStatus = #active
// Kód pro “žádné známé alergie” (SNOMED CT)
* code.coding[0].system = $sct
* code.coding[0].code = #160244002
* code.coding[0].display = "No known allergy"
// Pacienta
* patient = Reference(Mracena)

// Instance: Bez známých alergií
Instance: NoKnownAllergy
InstanceOf: CZ_AllergyIntoleranceHdr
Usage: #example
Title: "AllergyIntolerance - No Known Allergies"
Description: "Patient has no known allergies."
// Povinný identifikátor
* identifier[0].system = "urn:oid:1.2.203.24341.1.1.999"
* identifier[0].value = "NoKnownAllergy-001"
// Narrativní text
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pacient nemá žádné známé alergie.</div>"

// Klinický a verifikační stav
* clinicalStatus.coding[0].system = $allergyintolerance-clinical
* clinicalStatus.coding[0].code = #inactive
* verificationStatus.coding[0].system = $allergyintolerance-verification
* verificationStatus.coding[0].code = #unconfirmed

// Typ a závažnost (nelze posoudit)
// type = #allergy
* criticality = #unable-to-assess

// Kód pro “žádné alergie” (SNOMED CT)
* code.coding[0].system = $sct
* code.coding[0].code = #443508001
* code.coding[0].display = "No history of clinical finding in subject"

// Pacienta
* patient = Reference(Mracena)

// Jahodová alergie
Instance: StrawberryAllergy
InstanceOf: CZ_AllergyIntoleranceHdr
Usage: #example
Title: "AllergyIntolerance - Strawberry"
Description: "Patient experiences itching and tongue swelling in response to strawberries."
// Povinný identifikátor
* identifier[0].system = "urn:oid:1.2.203.24341.1.1.999"
* identifier[0].value = "StrawberryAllergy-001"
// // Narrativní text
// * text.status = #generated
// * text.div = "<div><p>Alergie na jahody – svědění, otok jazyka.</p></div>"

// Stav
* clinicalStatus.coding[0].system = $allergyintolerance-clinical
* clinicalStatus.coding[0].code = #active
* verificationStatus.coding[0].system = $allergyintolerance-verification
* verificationStatus.coding[0].code = #confirmed

// Typ a závažnost
* type = #allergy
* criticality = #low

// Alergen (SNOMED CT)
* code.coding[0].system = $sct
* code.coding[0].code = #91938006
* code.coding[0].display = "Allergy to strawberry"

// Pacient
* patient = Reference(Mracena)

// Reakce
* reaction[0].manifestation[0].coding[0].system = $sct
* reaction[0].manifestation[0].coding[0].code = #418363000
* reaction[0].manifestation[0].coding[0].display = "Itching of skin"
* reaction[0].manifestation[1].coding[0].system = $sct
* reaction[0].manifestation[1].coding[0].code = #81950002
* reaction[0].manifestation[1].coding[0].display = "Edema of the tongue"
* reaction[0].description = "Svědění, otok jazyka."

// Penicilinová alergie
Instance: PenicillinAllergy
InstanceOf: cz-allergyIntolerance-hdr
Usage: #example
Title: "AllergyIntolerance - Penicillin"
Description: "Patient experiences skin rash and lip swelling in response to penicillin."
// Povinný identifikátor
* identifier[0].system = "urn:oid:1.2.203.24341.1.1.999"
* identifier[0].value = "PenicillinAllergy-001"
// Narrativní text
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Alergie na penicilin – kožní vyrážka, otok rtů.</p></div>"

// Stav
* clinicalStatus.coding[0].system = $allergyintolerance-clinical
* clinicalStatus.coding[0].code = #active
* verificationStatus.coding[0].system = $allergyintolerance-verification
* verificationStatus.coding[0].code = #confirmed

// Typ a závažnost
* type = #allergy
* criticality = #low

// Alergen (SNOMED CT)
* code.coding[0].system = $sct
* code.coding[0].code = #764146007
* code.coding[0].display = "Penicillin"

// Pacient
* patient = Reference(Mracena)

// Reakce
* reaction[0].manifestation[0].coding[0].system = $sct
* reaction[0].manifestation[0].coding[0].code = #271807003
* reaction[0].manifestation[0].coding[0].display = "Eruption of skin"
* reaction[0].manifestation[1].coding[0].system = $sct
* reaction[0].manifestation[1].coding[0].code = #267038008
* reaction[0].manifestation[1].coding[0].display = "Edema (finding)"
* reaction[0].description = "Kožní vyrážka, otok rtů."


Instance: MilkAllergy
InstanceOf: CZ_AllergyIntoleranceHdr
Usage: #example
Title: "AllergyIntolerance - cow's milk protein"
Description: "Patient experiences rash and itching after ingestion of cow's milk protein due to intolerance."
// Povinný identifikátor
* identifier[0].system = "urn:oid:1.2.203.24341.1.1.999"
* identifier[0].value = "MilkAllergy-001"

* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Intolerance na bílkovinu kravského mléka. Počátek období projevu: 15 let</div>"

* type = #intolerance
* onsetAge = 15 'a'
* code.coding.system = $sct
* code.coding.code = #738069006
* patient = Reference(Mracena)

* reaction[0].description = "Projevy: vyrážka, svědění kůže po požití mléka."
* reaction[0].manifestation[0].coding[0].system = $sct
* reaction[0].manifestation[0].coding[0].code = #418363000
* reaction[0].manifestation[0].coding[0].display = "Svědění kůže"

* criticality = #low

* clinicalStatus.coding[0].system = $allergyintolerance-clinical
* clinicalStatus.coding[0].code = #active
* clinicalStatus.coding[0].display = "Active"

* verificationStatus.coding[0].system = $allergyintolerance-verification
* verificationStatus.coding[0].code = #confirmed
* verificationStatus.coding[0].display = "Confirmed"

* lastOccurrence = "2025-01-01"

Instance: Mracena
InstanceOf: CZ_PatientCore
Usage: #example
Title: "Patient - Mracena"
Description: "Patient, contact information and practitioner"
* birthDate = "1971-11-26"
* identifier[+]
  * system = "https://ncez.mzcr.cz/fhir/sid/rid"
  * value = "456789123"
* name.use = #usual
* name.family = "Mrakomorová"
* name.given = "Mračena"

//-----------------------------
Instance: Allergy-Strawberry-Novak
InstanceOf: CZ_AllergyIntoleranceHdr
Usage: #example
Title: "AllergyIntolerance - Strawberry"
Description: "Patient experiences itching and tongue swelling in response to strawberries."
// Povinný identifikátor
* identifier[0].system = "urn:oid:1.2.203.24341.1.1.999"
* identifier[0].value = "Allergy-Strawberry-Novak-001"
// // Narrativní text
// * text.status = #generated
// * text.div = xmlns=\"http://www.w3.org/1999/xhtml\"<div><p>Alergie na jahody – svědění, otok jazyka.</p></div>"
// Stav
* clinicalStatus.coding[0].system = $allergyintolerance-clinical
* clinicalStatus.coding[0].code = #active
* verificationStatus.coding[0].system = $allergyintolerance-verification
* verificationStatus.coding[0].code = #confirmed
// Typ a závažnost
/** type.coding[0].system =  $cz-allergyintolerance-typ-reakce
* type.coding[0].code = #allergy
* type.coding[0].display = "Allergy"
*/
* type = #allergy
* category = #food
/*
* criticality.coding[0].system = $cz-allergyintolerance-riziko
* criticality.coding[0].code = #low
* criticality.coding[0].display = "Low"
*/
* criticality = #low
// Alergen (SNOMED CT)
* code = $sct#102261002 "Strawberry"
/*
* code.coding[0].system = $cz-allergyintolerance-puvodce
* code.coding[0].code = #91938006
* code.coding[0].display = "Allergy to strawberry"
*/
* onsetDateTime = "2020-01-01"
* recordedDate = "2023-10-01"
// Pacient
* patient = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000)
// Reakce
* reaction[+]
  * manifestation[+] = $sct#81950002 "Edema of the tongue"
  * manifestation[+] = $sct#4386001	"Bronchospasm"
  * onset = "2020-01-01T12:00:00Z"
* reaction[+]
  * manifestation = $sct#418363000 "Itching of skin"
  * onset = "2022-10-01T10:00:00Z"
  * severity = #mild
/* * reaction[0].manifestation[0].coding[0].system = $cz-allergyintolerance-reakce
* reaction[0].manifestation[0].coding[0].code = #418363000
* reaction[0].manifestation[0].coding[0].display = "Itching of skin"
* reaction[0].manifestation[1].coding[0].system = $cz-allergyintolerance-reakce
* reaction[0].manifestation[1].coding[0].code = #81950002
* reaction[0].manifestation[1].coding[0].display = "Edema of the tongue"
* reaction[0].description = "Svědění, otok jazyka."
 *//*
* reaction[0].severity.coding[0].system = $cz-allergyintolerance-reakce-zavaznost
* reaction[0].severity.coding[0].code = #mild
* reaction[0].severity.coding[0].display = "Mírná"

* reaction[0].severity = #mild
*/

