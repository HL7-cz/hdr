Instance: MilkAllergy
InstanceOf: CZ_AllergyIntoleranceHdr
Usage: #example
Title: "Allergy to cow's milk protein"
Description: "Allergy"


* text.status = #generated
* text.div = """
<div>
  <p>Alergie na bílkovinu kravského mléka</p>
  <p>Počátek období projevu: 15 let</p>
</div>
"""
* type = #allergy
* onsetAge = 15 'a'
* code.coding.system = $sct
* code.coding.code = #782555009
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
Description: "Patient, contact information and practitioner"

* birthDate = "1971-11-26"
* identifier[+]
  * system = "https://ncez.mzcr.cz/fhir/sid/rid"
  * value = "456789123"
* name.use = #usual
* name.family = "Mrakomorová"
* name.given = "Mračena"