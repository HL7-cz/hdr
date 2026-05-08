// Instance: Není známá informace o alergii
Instance: AllergyInfoUnknown
InstanceOf: CZ_AllergyIntoleranceHdr
Usage: #example
Title: "Allergy Information Unknown"
Description: "No information is available regarding the patient’s allergy status."
* identifier[+].system = "http://example.org/hospital/allergy-intolerances"
* identifier[=].value = "allergy-2"
* clinicalStatus = $allergyintolerance-clinical#active
* code.coding[0].system = $sct
* code.coding[0].code = #160244002
* code.coding[0].display = "No known allergies"
* patient = Reference(Mracena)

// Instance: Bez známých alergií
Instance: NoKnownAllergy
InstanceOf: CZ_AllergyIntoleranceHdr
Usage: #example
Title: "AllergyIntolerance - No Known Allergies"
Description: "Patient has no known allergies."
* identifier[+].system = "http://example.org/hospital/allergy-intolerances"
* identifier[=].value = "allergy-5"
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pacient nemá žádné známé alergie.</div>"
* clinicalStatus.coding[0].system = $allergyintolerance-clinical
* clinicalStatus.coding[0].code = #inactive
* verificationStatus.coding[0].system = $allergyintolerance-verification
* verificationStatus.coding[0].code = #unconfirmed

* criticality = #unable-to-assess

* code.coding[0].system = $sct
* code.coding[0].code = #443508001
* code.coding[0].display = "No history of clinical finding in subject"

* patient = Reference(Mracena)

// Jahodová alergie
Instance: StrawberryAllergy
InstanceOf: CZ_AllergyIntoleranceHdr
Usage: #example
Title: "AllergyIntolerance - Strawberry"
Description: "Patient experiences itching and tongue swelling in response to strawberries."
* identifier[+].system = "http://example.org/hospital/allergy-intolerances"
* identifier[=].value = "allergy-2"
* clinicalStatus.coding[0].system = $allergyintolerance-clinical
* clinicalStatus.coding[0].code = #active
* verificationStatus.coding[0].system = $allergyintolerance-verification
* verificationStatus.coding[0].code = #confirmed

* type = #allergy
* criticality = #low

* code.coding[0].system = $sct
* code.coding[0].code = #91938006
* code.coding[0].display = "Allergy to strawberry"

* patient = Reference(Mracena)

* reaction[0].manifestation[0].coding[0].system = $sct
* reaction[0].manifestation[0].coding[0].code = #418363000
* reaction[0].manifestation[0].coding[0].display = "svědění kůže"
* reaction[0].manifestation[1].coding[0].system = $sct
* reaction[0].manifestation[1].coding[0].code = #81950002
* reaction[0].manifestation[1].coding[0].display = "edém jazyka"
* reaction[0].description = "Svědění, otok jazyka."

// Penicilinová alergie
Instance: PenicillinAllergy
InstanceOf: cz-allergyIntolerance-hdr
Usage: #example
Title: "AllergyIntolerance - Penicillin"
Description: "Patient experiences skin rash and lip swelling in response to penicillin."
* identifier[+].system = "http://example.org/hospital/allergy-intolerances"
* identifier[=].value = "allergy-3"
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Alergie na penicilin – kožní vyrážka, otok rtů.</p></div>"

* clinicalStatus.coding[0].system = $allergyintolerance-clinical
* clinicalStatus.coding[0].code = #active
* verificationStatus.coding[0].system = $allergyintolerance-verification
* verificationStatus.coding[0].code = #confirmed

* type = #allergy
* criticality = #low

* code.coding[0].system = $sct
* code.coding[0].code = #764146007
* code.coding[0].display = "Penicillin"

* patient = Reference(Mracena)

* reaction[0].manifestation[0].coding[0].system = $sct
* reaction[0].manifestation[0].coding[0].code = #271807003
* reaction[0].manifestation[0].coding[0].display = "Eruption"
* reaction[0].manifestation[1].coding[0].system = $sct
* reaction[0].manifestation[1].coding[0].code = #267038008
* reaction[0].manifestation[1].coding[0].display = "Interstitial edema"
* reaction[0].description = "Kožní vyrážka, otok rtů."


Instance: MilkAllergy
InstanceOf: CZ_AllergyIntoleranceHdr
Usage: #example
Title: "AllergyIntolerance - cow's milk protein"
Description: "Patient experiences rash and itching after ingestion of cow's milk protein due to intolerance."
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Intolerance na bílkovinu kravského mléka. Počátek období projevu: 15 let</div>"
* identifier[+].system = "http://example.org/hospital/allergy-intolerances"
* identifier[=].value = "allergy-2"
* type = #intolerance
* onsetAge = 15 'a'
* code.coding.system = $sct
* code.coding.code = #738069006
* patient = Reference(Mracena)

* reaction[0].description = "Projevy: vyrážka, svědění kůže po požití mléka."
* reaction[0].manifestation[0].coding[0].system = $sct
* reaction[0].manifestation[0].coding[0].code = #418363000
* reaction[0].manifestation[0].coding[0].display = "svědění kůže"

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
  * value = "4567891235"
* name.use = #usual
* name.family = "Mrakomorová"
* name.given = "Mračena"

//-----------------------------
Instance: Allergy-Strawberry-Novak
InstanceOf: CZ_AllergyIntoleranceHdr
Usage: #example
Title: "AllergyIntolerance - Strawberry"
Description: "Patient experiences itching and tongue swelling in response to strawberries."
* id = "6cf80cb1-9766-470f-ac36-b1d3d8950f1b"
* identifier[+].system = "http://example.org/hospital/allergy-intolerances"
* identifier[=].value = "allergy-1"
* clinicalStatus.coding[0].system = $allergyintolerance-clinical
* clinicalStatus.coding[0].code = #active
* verificationStatus.coding[0].system = $allergyintolerance-verification
* verificationStatus.coding[0].code = #confirmed
* type = #allergy
* category = #food
* criticality = #low
* code = $sct#102261002 "Strawberry"
* onsetDateTime = "2020-01-01"
* recordedDate = "2023-10-01"
* patient = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000)
* reaction[+]
  * manifestation[+] = $sct#81950002 "edém jazyka"
  * manifestation[+] = $sct#4386001	"Bronchospasm"
  * onset = "2020-01-01T12:00:00Z"
* reaction[+]
  * manifestation = $sct#418363000 "Itching of skin"
  * onset = "2022-10-01T10:00:00Z"
  * severity = #mild


