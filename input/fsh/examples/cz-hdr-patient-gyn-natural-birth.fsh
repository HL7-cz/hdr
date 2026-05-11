Instance: Patient-Novakova-Jana
InstanceOf: CZ_PatientCore
Usage: #example
Description: "Example of patient Jana Novakova after spontaneous vaginal delivery."
* id = "6c4f4d2c-5f24-4a91-a75e-1b0e2a1f7731"
* meta.profile[0] = "https://hl7.cz/fhir/core/StructureDefinition/cz-patient-core"
* identifier[+]
  * system = "https://ncez.mzcr.cz/fhir/sid/rcis"
  * value = "9355181234"
  * use = #official
* identifier[+]
  * system = "https://ncez.mzcr.cz/fhir/sid/rid"
  * value = "9001234567"
* name.use = #usual
* name.family = "Novakova"
* name.given[0] = "Jana"
* telecom[+].system = #phone
* telecom[=].value = "+420777222333"
* telecom[=].use = #mobile
* gender = #female
* birthDate = "1993-05-18"
* address[+]
  * use = #home
  * type = #physical
  * text = "Kvetna 12, 60200 Brno"
  * line[+] = "Kvetna 12"
  * city = "Brno"
  * postalCode = "60200"
  * country = "CZ"
* communication[+].language = urn:ietf:bcp:47#cs
* communication[=].preferred = true
* extension[registeringProvider][+].extension[value].valueReference = Reference(urn:uuid:b6399cd8-3a91-4c7e-9a03-49d873669ed5)
* extension[registeringProvider][=].extension[category].valueCodeableConcept = $sct#700232004 "všeobecné lékařské služby"
* extension[registeringProvider][+].extension[value].valueReference = Reference(urn:uuid:17a26fdf-d36d-464b-b85b-f6f613bb62b4)
* extension[registeringProvider][=].extension[category].valueCodeableConcept = $sct#310061009 "gynekologické služby"

Instance: Practitioner-NovakovaJana-GP
InstanceOf: CZ_PractitionerCore
Usage: #example
Description: "Fictional general practitioner - registering physician for Jana Novakova."
* id = "b1e65698-2b43-481d-b8f4-7ff6d8e81ada"
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/krzp"
* identifier[=].value = "971234560"
* name.use = #usual
* name.prefix = "MUDr."
* name.family = "Kral"
* name.given[0] = "Pavel"
* telecom[+].system = #phone
* telecom[=].value = "+420725111222"
* telecom[=].use = #work

Instance: PractitionerRole-NovakovaJana-GP
InstanceOf: CZ_PractitionerRoleCore
Usage: #example
Description: "General practitioner role for patient registration."
* id = "b6399cd8-3a91-4c7e-9a03-49d873669ed5"
* practitioner = Reference(urn:uuid:b1e65698-2b43-481d-b8f4-7ff6d8e81ada)
* organization = Reference(urn:uuid:4f5f6b0d-f1a6-4ff0-9457-5ddd2117e9d9)
* code = $cz-nrzp_povolani#L00 "Lekar"
* specialty = $sct#419772000 "Family practice"

Instance: Practitioner-NovakovaJana-GYN
InstanceOf: CZ_PractitionerCore
Usage: #example
Description: "Fictional gynecologist - registering physician for Jana Novakova."
* id = "7f2542b8-afe3-4a30-8f4f-c2f6fd2c2f85"
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/krzp"
* identifier[=].value = "971234561"
* name.use = #usual
* name.prefix = "MUDr."
* name.family = "Vesela"
* name.given[0] = "Petra"
* telecom[+].system = #phone
* telecom[=].value = "+420725333444"
* telecom[=].use = #work

Instance: PractitionerRole-NovakovaJana-GYN
InstanceOf: CZ_PractitionerRoleCore
Usage: #example
Description: "Gynecology role for patient registration."
* id = "17a26fdf-d36d-464b-b85b-f6f613bb62b4"
* practitioner = Reference(urn:uuid:7f2542b8-afe3-4a30-8f4f-c2f6fd2c2f85)
* organization = Reference(urn:uuid:6dbf2b1f-67f6-46c9-b1b7-f412aaadf2ba)
* code = $cz-nrzp_povolani#L00 "Lekar"
* specialty = $sct#394586005 "Gynecology"

Instance: Organization-Payer-111
InstanceOf: CZ_OrganizationCore
Usage: #example
Description: "Health insurance payer 111 (VZP CR)."
* id = "96cb3f63-2644-4fd8-8df2-eed1a9bc16f9"
* identifier[+]
  * system = "https://ncez.mzcr.cz/fhir/sid/kp"
  * value = "111"
* name = "Vseobecna zdravotni pojistovna Ceske republiky"

Instance: Coverage-Novakova-Jana
InstanceOf: CZ_Coverage
Usage: #example
Description: "Coverage for mother after spontaneous vaginal delivery."
* id = "8f9c2f14-1f69-4f2b-b4a8-8b7ca4db9f31"
* status = #active
* beneficiary = Reference(urn:uuid:6c4f4d2c-5f24-4a91-a75e-1b0e2a1f7731)
* payor[+] = Reference(urn:uuid:96cb3f63-2644-4fd8-8df2-eed1a9bc16f9)
* subscriberId = "9355181234"

Instance: RelatedPerson-Novak-Petr-Husband
InstanceOf: CZ_RelatedPersonCore
Usage: #example
Description: "Husband and father of the newborn (Petr Novak), linked to Jana Novakova."
* id = "8f283107-54fe-4be4-801b-a535cd1e9e37"
* patient = Reference(urn:uuid:6c4f4d2c-5f24-4a91-a75e-1b0e2a1f7731)
* relationship[+].coding = $v3-RoleCode#HUSB "husband"
* relationship[=].text = "Manzel, otec ditete"
* identifier[+]
  * system = "https://ncez.mzcr.cz/fhir/sid/rid"
  * value = "1597778923"
* name.use = #usual
* name.family = "Novak"
* name.given[0] = "Petr"
* telecom[+].system = #phone
* telecom[=].value = "+420777111222"
* telecom[=].use = #mobile

Instance: Patient-Novak-Jan-Newborn
InstanceOf: CZ_PatientCore
Usage: #example
Description: "Example newborn patient after spontaneous vaginal delivery."
* id = "b7e6c8a1-4a8d-4d9f-8f69-df4f210cb2d7"
* meta.profile[0] = "https://hl7.cz/fhir/core/StructureDefinition/cz-patient-core"
// Primary newborn identifier (current state)
* identifier[+]
  * system = "https://ncez.mzcr.cz/fhir/sid/rid"
  * value = "9009876543"
  * use = #official
* name.use = #official
* name.family = "Novak"
* name.given[0] = "Jan"
* gender = #male
* birthDate = "2025-05-18"
* multipleBirthBoolean = false
* address[+]
  * use = #home
  * type = #physical
  * text = "Kvetna 12, 60200 Brno"
  * line[+] = "Kvetna 12"
  * city = "Brno"
  * postalCode = "60200"
  * country = "CZ"
* contact[+].relationship.coding[+]
  * system = "http://terminology.hl7.org/CodeSystem/v3-RoleCode"
  * code = #MTH
  * display = "mother"
* contact[=].name.family = "Novakova"
* contact[=].name.given[0] = "Jana"
* contact[=].telecom[+].system = #phone
* contact[=].telecom[=].value = "+420777222333"
* contact[=].telecom[=].use = #mobile
* link[+].other = Reference(urn:uuid:6c4f4d2c-5f24-4a91-a75e-1b0e2a1f7731)
* link[=].type = #seealso
* communication[+].language = urn:ietf:bcp:47#cs
* communication[=].preferred = true
