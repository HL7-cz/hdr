// Story-based example: gynecology discharge report after vaginal delivery (without negative waiver/reversal)

Instance: Practitioner-Cerna-Raketa
InstanceOf: CZ_PractitionerCore
Usage: #example
Title: "HDR - GYNPOR - Přijímající lékař / Admitting practitioner"
Description: "Admitting physician for the delivery case."
* id = "5cbed9dd-df97-46ee-974d-8bf34ef30efd"
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/krzp"
* identifier[=].value = "971234701"
* name.use = #usual
* name.prefix = "MUDr."
* name.family = "Cerna"
* name.given[0] = "Raketa"

Instance: Practitioner-Bila-Palka
InstanceOf: CZ_PractitionerCore
Usage: #example
Title: "HDR - GYNPOR - Propouštějící lékař / Discharging practitioner"
Description: "Discharging physician for the delivery case."
* id = "c02be8d5-83a2-466b-aa82-089088b1abf7"
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/krzp"
* identifier[=].value = "971234702"
* name.use = #usual
* name.prefix = "MUDr."
* name.family = "Bila"
* name.given[0] = "Palka"

Instance: Organization-Prostejov-Hospital
InstanceOf: CZ_OrganizationCore
Usage: #example
Title: "HDR - GYNPOR - Nemocnice Prostějov / Hospital"
Description: "Fictional hospital for story-based maternity discharge."
* id = "42a659d0-c08a-424f-9c0c-82096e0f59e0"
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/ico"
* identifier[=].value = "12345670"
* name = "Nemocnice Prostejov a.s."

Instance: Organization-Prostejov-Maternity
InstanceOf: CZ_OrganizationCore
Usage: #example
Title: "HDR - GYNPOR - Porodní oddělení Nemocnice Prostějov / Maternity department"
Description: "Maternity department of the hospital."
* id = "7aef05df-4e1f-434e-8a66-68ef945ead43"
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/ico"
* identifier[=].value = "12345671"
* name = "Porodni oddeleni Nemocnice Prostejov"
* partOf = Reference(urn:uuid:42a659d0-c08a-424f-9c0c-82096e0f59e0)

Instance: Organization-Payer-111-Story
InstanceOf: CZ_OrganizationCore
Usage: #example
Title: "HDR - GYNPOR - Zdravotní pojišťovna 111 / Payer 111"
Description: "Health insurance payer 111."
* id = "78392d70-a15f-47b9-b6bc-72b6018ae4b9"
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/kp"
* identifier[=].value = "111"
* name = "Vseobecna zdravotni pojistovna Ceske republiky"

Instance: Patient-Story-Mother
InstanceOf: CZ_PatientCore
Usage: #example
Title: "HDR - GYNPOR - Matka Petra Dvořáková / Mother Petra Dvorakova"
Description: "Mother in story-based delivery discharge use case."
* id = "c517f75a-1e29-423b-8c59-1b275e65019a"
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/rid"
* identifier[=].value = "9003001122"
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/rcis"
* identifier[=].value = "8653034455"
* name.use = #usual
* name.family = "Dvorakova"
* name.given[0] = "Petra"
* gender = #female
* birthDate = "1986-05-03"
* address[+].text = "Prostejov, CZ"

Instance: Patient-Story-Newborn
InstanceOf: CZ_PatientCore
Usage: #example
Title: "HDR - GYNPOR - Novorozenec Jan Dvořák / Newborn Jan Dvorak"
Description: "Newborn from story-based delivery discharge use case."
* id = "fd7709a1-247b-4d43-92e7-6b7b21d4a6ba"
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/rid"
* identifier[=].value = "9003007788"
* name.use = #official
* name.family = "Dvorak"
* name.given[0] = "Jan"
* gender = #male
* birthDate = "2026-03-03"
* multipleBirthBoolean = false
* link[+].other = Reference(urn:uuid:c517f75a-1e29-423b-8c59-1b275e65019a)
* link[=].type = #seealso

Instance: Coverage-Story-Mother
InstanceOf: CZ_Coverage
Usage: #example
Title: "HDR - GYNPOR - Pojištění matky / Maternal coverage"
Description: "Coverage of the mother for payer 111."
* id = "35b9ce78-80c3-443f-b21f-a346a87e15ef"
* status = #active
* beneficiary = Reference(urn:uuid:c517f75a-1e29-423b-8c59-1b275e65019a)
* payor[+] = Reference(urn:uuid:78392d70-a15f-47b9-b6bc-72b6018ae4b9)
* subscriberId = "8653034455"

Instance: Encounter-Story-Delivery
InstanceOf: CZ_EncounterHdr
Usage: #example
Title: "HDR - GYNPOR - Hospitalizace k porodu / Delivery hospitalization"
Description: "Inpatient encounter for delivery hospitalization."
* id = "a182bf8a-ce46-4e61-9106-0fd5139c3e78"
* status = $encounter-status-r4#finished
* class.code = #IMP
* class.system = $cz-encounter-typ-kontaktu
* class.display = "inpatient encounter"
* subject = Reference(urn:uuid:c517f75a-1e29-423b-8c59-1b275e65019a)
* period.start = "2026-03-03T05:22:00+01:00"
* period.end = "2026-03-04T18:41:00+01:00"
* serviceProvider = Reference(urn:uuid:7aef05df-4e1f-434e-8a66-68ef945ead43)
* participant[admitter][0].individual = Reference(urn:uuid:5cbed9dd-df97-46ee-974d-8bf34ef30efd)
* participant[discharger][0].individual = Reference(urn:uuid:c02be8d5-83a2-466b-aa82-089088b1abf7)
* hospitalization.dischargeDisposition.coding[0].system = $discharge-disposition
* hospitalization.dischargeDisposition.coding[0].code = #home
* hospitalization.dischargeDisposition.coding[0].display = "home"

Instance: Procedure-Story-DeliveryMethod
InstanceOf: CZ_ProcedureMethodOfDelivery
Usage: #example
Title: "HDR - GYNPOR - Vaginální porod / Vaginal delivery"
Description: "Induced vaginal delivery in week 40+2."
* id = "f1184d84-9da0-4584-82f2-4efbf3ee74b3"
* status = #completed
* code = $sct#700000006 "Vaginal delivery of fetus"
* subject = Reference(urn:uuid:c517f75a-1e29-423b-8c59-1b275e65019a)
* performedDateTime = "2026-03-03T17:13:00+01:00"
* performer.actor = Reference(urn:uuid:5cbed9dd-df97-46ee-974d-8bf34ef30efd)

Instance: Procedure-Story-Induction
InstanceOf: CZ_ProcedureInductionOfLabor
Usage: #example
Title: "HDR - GYNPOR - Indukce porodu / Labor induction"
Description: "Labor induction by Prostin E2 due to labor stagnation."
* id = "bac0a2d8-114c-4b1b-a65f-dff718f942b4"
* status = #completed
* code = $sct#398307005 "Indukce porodu"
* subject = Reference(urn:uuid:c517f75a-1e29-423b-8c59-1b275e65019a)
* performedPeriod.start = "2026-03-03T12:30:00+01:00"
* performedPeriod.end = "2026-03-03T16:30:00+01:00"

Instance: Condition-Story-Primary
InstanceOf: CZ_ConditionHdr
Usage: #example
Title: "HDR - GYNPOR - Základní diagnóza porodu / Primary delivery diagnosis"
Description: "Primary diagnosis for vaginal delivery."
* id = "1d2b2e56-93b0-4c03-bf01-4612d54b14bc"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* code = $MKN10#O800 "IZ, III.p., CH 3200g, rpt.perinei I, KS 0 pozit., ZK 250ml"
* subject = Reference(urn:uuid:c517f75a-1e29-423b-8c59-1b275e65019a)

Instance: Condition-Story-GestHypertension
InstanceOf: CZ_ConditionHdr
Usage: #example
Title: "HDR - GYNPOR - Gestační hypertenze / Gestational hypertension"
Description: "Gestational hypertension from week 38."
* id = "5e63d48d-ff6f-43fb-babd-74ffb0f6a00d"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* code = $MKN10#O13 "Gestační (vyvolaná těhotenstvím) hypertenze"
* subject = Reference(urn:uuid:c517f75a-1e29-423b-8c59-1b275e65019a)

Instance: Condition-Story-GDM
InstanceOf: CZ_ConditionHdr
Usage: #example
Title: "HDR - GYNPOR - Gestační diabetes mellitus / Gestational diabetes mellitus"
Description: "Gestational diabetes mellitus."
* id = "a8d9f5cd-a2f7-4073-a33d-23cfdeef9dc1"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* code = $MKN10#O244 "Diabetes mellitus vzniklý v těhotenství"
* subject = Reference(urn:uuid:c517f75a-1e29-423b-8c59-1b275e65019a)

Instance: Condition-Story-CordAroundNeck
InstanceOf: CZ_ConditionHdr
Usage: #example
Title: "HDR - GYNPOR - Pupečník kolem krku / Cord around neck"
Description: "Delivery complicated by cord around neck."
* id = "a44a3603-e3a6-45d9-858d-9d5b5173c771"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* code = $MKN10#O691 "Porod komplikovaný pupečníkem kolem krku s kompresí"
* subject = Reference(urn:uuid:c517f75a-1e29-423b-8c59-1b275e65019a)

Instance: Condition-Story-PerinealTear
InstanceOf: CZ_ConditionHdr
Usage: #example
Title: "HDR - GYNPOR - Trhlina hráze I. stupně / First degree perineal tear"
Description: "First degree perineal tear during delivery, sutured."
* id = "74f20ae7-9560-416b-bea1-78f782316395"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* code = $MKN10#O700 "Trhlina hráze prvního stupně při porodu"
* subject = Reference(urn:uuid:c517f75a-1e29-423b-8c59-1b275e65019a)
* onsetDateTime = "2026-03-03T17:13:00+01:00"

Instance: Condition-Story-LivebornSingle
InstanceOf: CZ_ConditionHdr
Usage: #example
Title: "HDR - GYNPOR - Jediné živě narozené dítě / Single liveborn infant"
Description: "Single liveborn infant."
* id = "4f82fd24-88b7-4328-bcbe-b4da5bb4999b"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* code = $MKN10#Z370 "Jediné dítě, živě narozené"
* subject = Reference(urn:uuid:c517f75a-1e29-423b-8c59-1b275e65019a)

Instance: Observation-Story-Gravidity
InstanceOf: CZ_ObservationGravidity
Usage: #example
Title: "HDR - GYNPOR - Gravidita IV / Gravidity IV"
Description: "Gravidity IV."
* id = "7c3bf638-f63f-49b7-b3a4-185fb5fd149d"
* status = #final
* subject = Reference(urn:uuid:c517f75a-1e29-423b-8c59-1b275e65019a)
* effectiveDateTime = "2026-03-03T10:00:00+01:00"
* valueInteger = 4
* performer = Reference(urn:uuid:5cbed9dd-df97-46ee-974d-8bf34ef30efd)

Instance: Observation-Story-Parity
InstanceOf: CZ_ObservationParity
Usage: #example
Title: "HDR - GYNPOR - Parita II / Parity II"
Description: "Parity II."
* id = "b33f71c0-6fb1-45ba-8e8f-e4fb38964d63"
* status = #final
* subject = Reference(urn:uuid:c517f75a-1e29-423b-8c59-1b275e65019a)
* effectiveDateTime = "2026-03-03T10:00:00+01:00"
* valueInteger = 2
* performer = Reference(urn:uuid:5cbed9dd-df97-46ee-974d-8bf34ef30efd)

Instance: Observation-Story-MultiplePregnancy
InstanceOf: CZ_ObservationMultiplePregnancy
Usage: #example
Title: "HDR - GYNPOR - Jednoplodové těhotenství / Singleton pregnancy"
Description: "Singleton pregnancy."
* id = "71eab157-2477-495e-8def-2d9ae6386f88"
* status = #final
* subject = Reference(urn:uuid:c517f75a-1e29-423b-8c59-1b275e65019a)
* effectiveDateTime = "2026-03-03T10:00:00+01:00"
* valueBoolean = false
* component.valueInteger = 1
* performer = Reference(urn:uuid:5cbed9dd-df97-46ee-974d-8bf34ef30efd)

Instance: Observation-Story-GestAgeAtDelivery
InstanceOf: CZ_ObservationGestationalAge
Usage: #example
Title: "HDR - GYNPOR - Gestační stáří při porodu / Gestational age at delivery"
Description: "Gestational age at delivery 40+2."
* id = "c6e95717-3ceb-4211-b9ce-d61d794701d3"
* status = #final
* subject = Reference(urn:uuid:c517f75a-1e29-423b-8c59-1b275e65019a)
* effectiveDateTime = "2026-03-03T17:13:00+01:00"
* valueString = "40+2"
* performer = Reference(urn:uuid:5cbed9dd-df97-46ee-974d-8bf34ef30efd)

Instance: Observation-Story-BirthWeight
InstanceOf: CZ_ObservationBirthWeight
Usage: #example
Title: "HDR - GYNPOR - Porodní hmotnost / Birth weight"
Description: "Newborn birth weight."
* id = "73f44a2f-9cfd-4b56-b1df-b6898b7a8da3"
* subject = Reference(urn:uuid:c517f75a-1e29-423b-8c59-1b275e65019a)
* valueQuantity = 3200 'g' "g"

Instance: Observation-Story-BirthLength
InstanceOf: CZ_ObservationBirthLength
Usage: #example
Title: "HDR - GYNPOR - Porodní délka / Birth length"
Description: "Newborn birth length."
* id = "55a402b2-f4af-4904-b01b-0f0953335d85"
* subject = Reference(urn:uuid:c517f75a-1e29-423b-8c59-1b275e65019a)
* valueQuantity = 50 'cm' "cm"
* performer = Reference(urn:uuid:c02be8d5-83a2-466b-aa82-089088b1abf7)

Instance: Observation-Story-Apgar1
InstanceOf: CZ_ObservationApgarScore1Min
Usage: #example
Title: "HDR - GYNPOR - APGAR v 1. minutě / APGAR at 1 minute"
Description: "Newborn APGAR score at 1 minute."
* id = "cc37d883-9740-437c-95d2-7e3e66c29658"
* status = #final
* code = $loinc#9272-6 "1 minute Apgar Score"
* subject = Reference(urn:uuid:fd7709a1-247b-4d43-92e7-6b7b21d4a6ba)
* effectiveDateTime = "2026-03-03T17:14:00+01:00"
* valueInteger = 10
* performer = Reference(urn:uuid:c02be8d5-83a2-466b-aa82-089088b1abf7)

Instance: Observation-Story-Apgar5
InstanceOf: CZ_ObservationApgarScore5Min
Usage: #example
Title: "HDR - GYNPOR - APGAR v 5. minutě / APGAR at 5 minutes"
Description: "Newborn APGAR score at 5 minutes."
* id = "1df3f436-f303-4ffd-aeb7-a71ae5a8791d"
* status = #final
* code = $loinc#9274-2 "5 minute Apgar Score"
* subject = Reference(urn:uuid:fd7709a1-247b-4d43-92e7-6b7b21d4a6ba)
* effectiveDateTime = "2026-03-03T17:18:00+01:00"
* valueInteger = 10
* performer = Reference(urn:uuid:c02be8d5-83a2-466b-aa82-089088b1abf7)

Instance: Observation-Story-Apgar10
InstanceOf: CZ_ObservationApgarScore10Min
Usage: #example
Title: "HDR - GYNPOR - APGAR v 10. minutě / APGAR at 10 minutes"
Description: "Newborn APGAR score at 10 minutes."
* id = "d9e9d7df-a3fa-430a-9d19-38e8432c8803"
* status = #final
* code = $loinc#9271-8 "10 minute Apgar Score"
* subject = Reference(urn:uuid:fd7709a1-247b-4d43-92e7-6b7b21d4a6ba)
* effectiveDateTime = "2026-03-03T17:23:00+01:00"
* valueInteger = 10
* performer = Reference(urn:uuid:c02be8d5-83a2-466b-aa82-089088b1abf7)

Instance: Allergy-Story-Zinnat
InstanceOf: CZ_AllergyIntoleranceHdr
Usage: #example
Title: "HDR - GYNPOR - Alergie na Zinnat / Zinnat allergy"
Description: "Unverified allergy to Zinnat with vertigo."
* id = "ff3372f1-0189-457f-8368-aa28e36df796"
* identifier[0].system = "urn:oid:1.2.203.24341.1.1.999"
* identifier[0].value = "Allergy-Story-Zinnat-001"
* clinicalStatus = $allergyintolerance-clinical#active
* verificationStatus = $allergyintolerance-verification#unconfirmed
* code.text = "Zinnat"
* patient = Reference(urn:uuid:c517f75a-1e29-423b-8c59-1b275e65019a)
* reaction[0].manifestation[0].coding[0].system = $sct
* reaction[0].manifestation[0].coding[0].code = #404640003
* reaction[0].manifestation[0].coding[0].display = "Závrať"
* reaction[0].description = "Vertigo"

Instance: Allergy-Story-Environmental
InstanceOf: CZ_AllergyIntoleranceHdr
Usage: #example
Title: "HDR - GYNPOR - Alergie na trávy, prach a pyl / Environmental allergies"
Description: "Unverified environmental allergies: grass, dust, pollen."
* id = "26be4e8d-b6bc-4b61-a4ff-87641d9aa789"
* identifier[0].system = "urn:oid:1.2.203.24341.1.1.999"
* identifier[0].value = "Allergy-Story-Environmental-001"
* clinicalStatus = $allergyintolerance-clinical#active
* verificationStatus = $allergyintolerance-verification#unconfirmed
* code.text = "Travy, prach, pyl"
* patient = Reference(urn:uuid:c517f75a-1e29-423b-8c59-1b275e65019a)

Instance: Medication-Story-Dopegyt
InstanceOf: CZ_Medication
Usage: #example
Title: "HDR - GYNPOR - Dopegyt 250 mg / Dopegyt 250 mg"
Description: "Dopegyt 250 mg tablets."
* id = "6910dd1a-deee-463a-b776-6ee3ca8bf7ed"
* status = #active
* identifier[0].system = $cz-medication-DLP-cs
* identifier[0].value = "DLP-DOPEGYT-001"
* code.coding[0].system = "http://www.whocc.no/atc"
* code.coding[0].code = #C02AB01
* code.coding[0].display = "Methyldopa"
* code.text = "Dopegyt 250 mg tablety"

Instance: Medication-Story-Fraxiparine
InstanceOf: CZ_Medication
Usage: #example
Title: "HDR - GYNPOR - Fraxiparine 0,6 ml / Fraxiparine 0.6 ml"
Description: "Fraxiparine 0.6 ml."
* id = "9b5df9b6-b25b-4f28-a74d-419b1c74acb8"
* status = #active
* identifier[0].system = $cz-medication-DLP-cs
* identifier[0].value = "DLP-FRAXIPARINE-001"
* code.coding[0].system = "http://www.whocc.no/atc"
* code.coding[0].code = #B01AB06
* code.coding[0].display = "Nadroparin"
* code.text = "Fraxiparine 0.6 ml"

Instance: Medication-Story-ProstinE2
InstanceOf: CZ_Medication
Usage: #example
Title: "HDR - GYNPOR - Prostin E2 / Prostin E2"
Description: "Prostin E2 for labor induction."
* id = "c45659d8-37e0-4d5d-8992-166900cd3a4a"
* status = #active
* identifier[0].system = $cz-medication-DLP-cs
* identifier[0].value = "DLP-PROSTINE2-001"
* code.coding[0].system = "http://www.whocc.no/atc"
* code.coding[0].code = #G02AD02
* code.coding[0].display = "Dinoprostone"
* code.text = "Prostin E2"

Instance: Medication-Story-LidocaineEgis
InstanceOf: CZ_Medication
Usage: #example
Title: "HDR - GYNPOR - Lidocaine EGIS / Lidocaine EGIS"
Description: "Lidocaine EGIS used during hospitalization."
* id = "d894281f-1104-42d0-9746-98e43262ecc3"
* status = #active
* identifier[0].system = $cz-medication-DLP-cs
* identifier[0].value = "DLP-LIDOCAINEEGIS-001"
* code.text = "Lidocaine EGIS"

Instance: Medication-Story-Ofost
InstanceOf: CZ_Medication
Usage: #example
Title: "HDR - GYNPOR - OFOST / OFOST"
Description: "OFOST used during hospitalization."
* id = "f7206785-f3f2-46e2-9c20-5c684686aabd"
* status = #active
* identifier[0].system = $cz-medication-DLP-cs
* identifier[0].value = "DLP-OFOST-001"
* code.text = "OFOST"

Instance: MedicationRequest-Story-Dopegyt-Discharge
InstanceOf: CZ_MedicationRequestHdr
Usage: #example
Title: "HDR - GYNPOR - Dopegyt při propuštění / Dopegyt at discharge"
Description: "Discharge medication request for Dopegyt."
* id = "3d648416-8bea-4a9a-9b50-6859084e53c4"
* status = #active
* intent = #order
* medicationReference = Reference(urn:uuid:6910dd1a-deee-463a-b776-6ee3ca8bf7ed)
* subject = Reference(urn:uuid:c517f75a-1e29-423b-8c59-1b275e65019a)
* encounter = Reference(urn:uuid:a182bf8a-ce46-4e61-9106-0fd5139c3e78)
* authoredOn = "2026-03-04T18:31:00+01:00"
* requester = Reference(urn:uuid:c02be8d5-83a2-466b-aa82-089088b1abf7)
* dosageInstruction[0].text = "1-0-1 po 12 hodinách (07:00, 19:00)."
* dispenseRequest.quantity.value = 60
* dispenseRequest.quantity.unit = "tablet"
* substitution.allowedCodeableConcept.text = "Substituce nepovolena"

Instance: MedicationRequest-Story-Fraxiparine-Discharge
InstanceOf: CZ_MedicationRequestHdr
Usage: #example
Title: "HDR - GYNPOR - Fraxiparine při propuštění / Fraxiparine at discharge"
Description: "Discharge medication request for Fraxiparine (LMWH prophylaxis)."
* id = "80806e6f-99e7-4945-9d1b-465e98fbd45b"
* status = #active
* intent = #order
* medicationReference = Reference(urn:uuid:9b5df9b6-b25b-4f28-a74d-419b1c74acb8)
* subject = Reference(urn:uuid:c517f75a-1e29-423b-8c59-1b275e65019a)
* encounter = Reference(urn:uuid:a182bf8a-ce46-4e61-9106-0fd5139c3e78)
* authoredOn = "2026-03-04T18:31:00+01:00"
* requester = Reference(urn:uuid:c02be8d5-83a2-466b-aa82-089088b1abf7)
* dosageInstruction[0].text = "0,6 ml s.c. 1x denně v 18:00 do 10.03.2026 včetně."
* dispenseRequest.quantity.value = 7
* dispenseRequest.quantity.unit = "dávka"
* substitution.allowedCodeableConcept.text = "Substituce nepovolena"

Instance: Device-Story-SamsungR7
InstanceOf: CZ_MedicalDevice
Usage: #example
Title: "HDR - GYNPOR - Ultrazvuk Samsung R7 / Samsung R7 ultrasound device"
Description: "Ultrasound device used for obstetric examination."
* id = "dcf20b83-aacd-45af-99d6-3d277089da35"
* manufacturer = "Samsung"
* modelNumber = "R7"
* type = $sct#706171005 "Ultrasound imaging system"
* patient = Reference(urn:uuid:c517f75a-1e29-423b-8c59-1b275e65019a)

Instance: Observation-Story-UZ
InstanceOf: Observation
Usage: #example
Title: "HDR - GYNPOR - Porodnický ultrazvuk / Obstetric ultrasound"
Description: "Obstetric ultrasound finding recorded during admission."
* id = "e967fac7-ed30-44a2-8d7a-3ad35db9fff6"
* status = #final
* category = $observation-category#imaging
* code = $sct#268445003 "Ultrasound scan - obstetric"
* subject = Reference(urn:uuid:c517f75a-1e29-423b-8c59-1b275e65019a)
* effectiveDateTime = "2026-03-02T10:00:00+01:00"
* device = Reference(urn:uuid:dcf20b83-aacd-45af-99d6-3d277089da35)
* valueString = "UZ: PPH, postavení II přední, ASP+, PP+, placenta na zadní stěně mimo DS, přídatný lalok i na přední stěně, bez známek patologie plodové vody, normohydramnion, EFW 3480 g, proporční."
* performer = Reference(urn:uuid:c02be8d5-83a2-466b-aa82-089088b1abf7)

Instance: Observation-Story-BloodGroup
InstanceOf: CZ_ObservationResultLaboratory
Usage: #example
Title: "HDR - GYNPOR - Krevní skupina / Blood group"
Description: "Maternal blood group test."
* id = "f432828d-fa44-4928-afa6-a248b126860b"
* status = #final
* category[laboratory] = $observation-category#laboratory
* category[studyType] = $loinc#26436-6 "Laboratorní studie"
* code = $nclp#05162
* subject = Reference(urn:uuid:c517f75a-1e29-423b-8c59-1b275e65019a)
* effectiveDateTime = "2026-03-03T06:10:00+01:00"
* performer = Reference(urn:uuid:5cbed9dd-df97-46ee-974d-8bf34ef30efd)
* valueCodeableConcept.text = "0 RhD pozitivní (0+)"

Instance: DischargeComposition-Story-GynDelivery
InstanceOf: CZ_CompositionHdr
Usage: #example
Title: "HDR - GYNPOR - Gynekologická propouštěcí zpráva po porodu / Gynecology discharge report after delivery"
Description: "Story-based gynecology discharge report after induced vaginal delivery."
* id = "4c26810a-e3ca-4723-9708-0c8ceac5a737"
* status = #final
* type = $loinc#34105-7 "Hospital Discharge summary"
* title = "Gynekologická propouštěcí zpráva - indukovaný vaginální porod"
* date = "2026-03-04T18:31:00+01:00"
* author[0] = Reference(urn:uuid:c02be8d5-83a2-466b-aa82-089088b1abf7)
* subject = Reference(urn:uuid:c517f75a-1e29-423b-8c59-1b275e65019a)
* encounter = Reference(urn:uuid:a182bf8a-ce46-4e61-9106-0fd5139c3e78)
* extension[information-recipient][+].valueReference = Reference(urn:uuid:b1e65698-2b43-481d-b8f4-7ff6d8e81ada)
* extension[information-recipient][+].valueReference = Reference(urn:uuid:7f2542b8-afe3-4a30-8f4f-c2f6fd2c2f85)

* section[sectionAdmissionEvaluation].title = "Příjmové vyšetření"
* section[sectionAdmissionEvaluation].code = $loinc#67851-6 "Příjmové vyšetření"
* section[sectionAdmissionEvaluation].text.status = #additional
* section[sectionAdmissionEvaluation].text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><p>Přijata pro zesilující děložní kontrakce.</p><p>Subjektivně: cítí se dobře, pohyby plodu cítí, cefaleu neguje, epigastrickou bolest neguje, vizus v normě, otoky prstů horních i dolních končetin, bez krvácení.</p><p>Objektivně: PPH, hlava naléhá, branka 5 cm, hmatný VB, kontrakce á 5 min.</p><p>KTG: fyziologický záznam, akcelerace přítomny, bez decelerací, oscilace undulatorní.</p><p>UZ břicha (Samsung R7, 02.03.): PPH, postavení II přední, ASP+, PP+, placenta na zadní stěně mimo DS, přídatný lalok i na přední stěně, bez známek patologie plodové vody, normohydramnion. EFW 01.03.2026: 3480 g, proporční růst.</p><p>Závěr: gravidita 40+2 dle UZ, IV/II, GBS pozitivní, GDM na dietě, gestační hypertenze na Dopegytu 1-0-1.</p><p>Doporučení při příjmu: s ohledem na GBS pozitivitu doporučena antibiotická profylaxe, dále příprava k porodu, spontánní vedení porodu, KTG á 3 hod, OP á 30 min, TK á 3 hod.</p></div>"""
* section[sectionAdmissionEvaluation].section[sectionPhysicalExamination].code = $sct#425044008 "Physical exam section"
* section[sectionAdmissionEvaluation].section[sectionPhysicalExamination].text.status = #additional
* section[sectionAdmissionEvaluation].section[sectionPhysicalExamination].text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><p>Součástí příjmového vyšetření bylo i UZ vyšetření na přístroji Samsung R7. Doplněno laboratorní vyšetření krevní skupiny: 0 RhD pozitivní.</p></div>"""
* section[sectionAdmissionEvaluation].section[sectionPhysicalExamination].entry[+] = Reference(urn:uuid:e967fac7-ed30-44a2-8d7a-3ad35db9fff6)
* section[sectionAdmissionEvaluation].section[sectionPhysicalExamination].entry[+] = Reference(urn:uuid:f432828d-fa44-4928-afa6-a248b126860b)
* section[sectionHospitalCourse].title = "Průběh hospitalizace"
* section[sectionHospitalCourse].code = $loinc#8648-8 "Průběh hospitalizace"
* section[sectionHospitalCourse].text.status = #additional
* section[sectionHospitalCourse].text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><p>Hospitalizace od 03.03.2026 05:22 do 04.03.2026 18:41. Přijata pro pravidelné kontrakce á 5 minut. Pro stagnaci porodnického nálezu byla provedena indukce porodu Prostin E2. Poporodní průběh bez komplikací.</p></div>"""

* section[sectionHospitalCourse].section[sectionDelivery].title = "Porod"
* section[sectionHospitalCourse].section[sectionDelivery].code = $loinc#57074-7 "Záznam o porodu"
* section[sectionHospitalCourse].section[sectionDelivery].text.status = #additional
* section[sectionHospitalCourse].section[sectionDelivery].text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><p>Porodnický průběh: přijata pro pravidelné kontrakce á 5 minut v gestačním stáří 40+2. Pro stagnaci porodnického nálezu byla zahájena indukce porodu Prostin E2.</p><p>Porod dne 03.03.2026 v 17:13, spontánně záhlavím. Během porodu pupečník 1x kolem krku s kompresí.</p><p>Porodní poranění: ruptura perinea I. stupně, ošetřeno suturou. Odhadovaná krevní ztráta 250 ml.</p><p>Novorozenec: chlapec, živě narozený, porodní hmotnost 3200 g, délka 50 cm, APGAR 10-10-10.</p><p>Souvislosti: GBS pozitivita, gestační hypertenze (Dopegyt), gestační diabetes na dietě.</p></div>"""
* section[sectionHospitalCourse].section[sectionDelivery].entry[deliveryProcedure][+] = Reference(urn:uuid:f1184d84-9da0-4584-82f2-4efbf3ee74b3)
* section[sectionHospitalCourse].section[sectionDelivery].entry[inductionProcedure][+] = Reference(urn:uuid:bac0a2d8-114c-4b1b-a65f-dff718f942b4)
* section[sectionHospitalCourse].section[sectionDelivery].entry[birthInjury][+] = Reference(urn:uuid:74f20ae7-9560-416b-bea1-78f782316395)
* section[sectionHospitalCourse].section[sectionDelivery].entry[birthWeight][+] = Reference(urn:uuid:73f44a2f-9cfd-4b56-b1df-b6898b7a8da3)
* section[sectionHospitalCourse].section[sectionDelivery].entry[birthLength][+] = Reference(urn:uuid:55a402b2-f4af-4904-b01b-0f0953335d85)
* section[sectionHospitalCourse].section[sectionDelivery].entry[apgarScore][+] = Reference(urn:uuid:cc37d883-9740-437c-95d2-7e3e66c29658)
* section[sectionHospitalCourse].section[sectionDelivery].entry[apgarScore][+] = Reference(urn:uuid:1df3f436-f303-4ffd-aeb7-a71ae5a8791d)
* section[sectionHospitalCourse].section[sectionDelivery].entry[apgarScore][+] = Reference(urn:uuid:d9e9d7df-a3fa-430a-9d19-38e8432c8803)
* section[sectionHospitalCourse].section[sectionDelivery].entry[newborn][+] = Reference(urn:uuid:fd7709a1-247b-4d43-92e7-6b7b21d4a6ba)
* section[sectionHospitalCourse].section[sectionDelivery].entry[+] = Reference(urn:uuid:a44a3603-e3a6-45d9-858d-9d5b5173c771)
* section[sectionHospitalCourse].section[sectionDelivery].entry[+] = Reference(urn:uuid:4f82fd24-88b7-4328-bcbe-b4da5bb4999b)

* section[sectionPatientHx].title = "Anamnéza"
* section[sectionPatientHx].code = $loinc#35090-0 "Anamnestická poznámka"
* section[sectionPatientHx].text.status = #additional
* section[sectionPatientHx].text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><p> Bez trvalé léčby mimo graviditu, nyní GDM dieta (také ve II. graviditě), TEN 0, úrazy 0, operace 0, transfuze 0, epidemiologická anamnéza bez očkování proti RSV. FA: aktuálně dlouhodobě Dopegyt. FF: močení i stolice v pořádku.</p></div>"""
* section[sectionPatientHx].section[sectionFamilyHistory].title = "Rodinná anamnéza"
* section[sectionPatientHx].section[sectionFamilyHistory].code = $loinc#10157-6 "Rodinná anamnéza"
* section[sectionPatientHx].section[sectionFamilyHistory].text.status = #additional
* section[sectionPatientHx].section[sectionFamilyHistory].text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><p> Matka karcinom prsu v 57 letech, hypertenze a onemocnění štítné žlázy; bratři hypertenze; sestra hypotyreóza; prarodiče diabetes mellitus; dědeček leukemie.</p></div>"""
* section[sectionPatientHx].section[sectionPregnancyHx].title = "Těhotenská anamnéza"
* section[sectionPatientHx].section[sectionPregnancyHx].code = $loinc#10162-6 "Těhotenská anamnéza"
* section[sectionPatientHx].section[sectionPregnancyHx].text.status = #additional
* section[sectionPatientHx].section[sectionPregnancyHx].text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><p>Gravidita spontánní. Gravidita/parita IV/II, gestační stáří při porodu 40+2, singleton gravidita. Předchozí porody: 05/2016 spontánní porod záhlavím, chlapec 3800 g, epiziotomie a infekce poranění v šestinedělí; 02/2019 spontánní porod záhlavím 3740 g bez komplikací. Abortus: 01/2022 spontánní abortus completus. UUT: 0. Menarché v 11 letech, cyklus nepravidelný, gynekologické operace ne.</p></div>"""
* section[sectionPatientHx].section[sectionPregnancyHx].entry[+] = Reference(urn:uuid:1d2b2e56-93b0-4c03-bf01-4612d54b14bc)
* section[sectionPatientHx].section[sectionPregnancyHx].entry[gestationalAge][+] = Reference(urn:uuid:c6e95717-3ceb-4211-b9ce-d61d794701d3)
* section[sectionPatientHx].section[sectionPregnancyHx].entry[+] = Reference(urn:uuid:7c3bf638-f63f-49b7-b3a4-185fb5fd149d)
* section[sectionPatientHx].section[sectionPregnancyHx].entry[+] = Reference(urn:uuid:b33f71c0-6fb1-45ba-8e8f-e4fb38964d63)
* section[sectionPatientHx].section[sectionPregnancyHx].entry[+] = Reference(urn:uuid:71eab157-2477-495e-8def-2d9ae6386f88)
* section[sectionPatientHx].section[sectionSocialHistory].title = "Sociální a pracovní anamnéza"
* section[sectionPatientHx].section[sectionSocialHistory].code = $loinc#29762-2 "Sociální anamnéza"
* section[sectionPatientHx].section[sectionSocialHistory].text.status = #additional
* section[sectionPatientHx].section[sectionSocialHistory].text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><p>Bydlí s manželem, na mateřské dovolené, povoláním lékařnice.</p></div>"""
* section[sectionPatientHx].section[sectionInfectiousContacts].title = "Epidemiologická anamnéza"
* section[sectionPatientHx].section[sectionInfectiousContacts].code = TemporaryHDRSystem#infection-contact "Infekční kontakty"
* section[sectionPatientHx].section[sectionInfectiousContacts].text.status = #additional
* section[sectionPatientHx].section[sectionInfectiousContacts].text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><p>Bez významných rizikových kontaktů, proti RSV neočkována.</p></div>"""
* section[sectionPatientHx].section[sectionSubstanceUse].title = "Užívání návykových látek"
* section[sectionPatientHx].section[sectionSubstanceUse].code = TemporaryHDRSystem#substance-use "Užívání návykových látek"
* section[sectionPatientHx].section[sectionSubstanceUse].text.status = #additional
* section[sectionPatientHx].section[sectionSubstanceUse].text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><p>Nekouří, alkohol nepije, drogy neužívá.</p></div>"""

* section[sectionAllergies].title = "Alergie, intolerance a varování"
* section[sectionAllergies].code = $loinc#48765-2 "Alergie a nežádoucí reakce"
* section[sectionAllergies].text.status = #additional
* section[sectionAllergies].text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><p>Alergie neověřeny - trávy, prach, pyl, Zinnat (vertigo).</p></div>"""
* section[sectionAllergies].entry[allergyIntolerance][+] = Reference(urn:uuid:26be4e8d-b6bc-4b61-a4ff-87641d9aa789)
* section[sectionAllergies].entry[allergyIntolerance][+] = Reference(urn:uuid:ff3372f1-0189-457f-8368-aa28e36df796)

* section[sectionPharmacotherapy].title = "Pharmacotherapy"
* section[sectionPharmacotherapy].code = $loinc#87232-5 "Stručný přehled podaných léčiv"
* section[sectionPharmacotherapy].text.status = #additional
* section[sectionPharmacotherapy].text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><p>Během hospitalizace podány Dopegyt, Fraxiparine, Lidocaine, OFOST, Prostin E2. Při propuštění doporučen Dopegyt 1-0-1 a LMWH profylaxe do 10.03.2026 včetně.</p></div>"""
* section[sectionPharmacotherapy].entry[+] = Reference(urn:uuid:6910dd1a-deee-463a-b776-6ee3ca8bf7ed)
* section[sectionPharmacotherapy].entry[+] = Reference(urn:uuid:9b5df9b6-b25b-4f28-a74d-419b1c74acb8)
* section[sectionPharmacotherapy].entry[+] = Reference(urn:uuid:d894281f-1104-42d0-9746-98e43262ecc3)
* section[sectionPharmacotherapy].entry[+] = Reference(urn:uuid:f7206785-f3f2-46e2-9c20-5c684686aabd)
* section[sectionPharmacotherapy].entry[+] = Reference(urn:uuid:c45659d8-37e0-4d5d-8992-166900cd3a4a)

* section[sectionDischargeMedications].title = "Hospital discharge medications"
* section[sectionDischargeMedications].code = $loinc#75311-1 "Hospital discharge medications"
* section[sectionDischargeMedications].text.status = #additional
* section[sectionDischargeMedications].text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><p>Doporučená medikace při propuštění: Dopegyt 1-0-1 a Fraxiparine 0,6 ml s.c. 1x denně do 10.03.2026 včetně.</p></div>"""
* section[sectionDischargeMedications].entry[+] = Reference(urn:uuid:3d648416-8bea-4a9a-9b50-6859084e53c4)
* section[sectionDischargeMedications].entry[+] = Reference(urn:uuid:80806e6f-99e7-4945-9d1b-465e98fbd45b)

* section[sectionPayers].title = "Health insurance and payment information"
* section[sectionPayers].code = $loinc#48768-6 "Informace o plátci péče"
* section[sectionPayers].text.status = #additional
* section[sectionPayers].text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><p>Payer: 111 (VZP).</p></div>"""
* section[sectionPayers].entry[+] = Reference(urn:uuid:35b9ce78-80c3-443f-b21f-a346a87e15ef)

* section[sectionPlanOfCare].title = "Plan of care"
* section[sectionPlanOfCare].code = $loinc#18776-5 "Léčebný plán"
* section[sectionPlanOfCare].text.status = #additional
* section[sectionPlanOfCare].text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><p>Doporuceno: self-monitoring TK 5x denne, pri hodnotach nad 150/100 mmHg okamzita kontrola. Kontrola u praktickeho lekare do tydne, gynekologicka kontrola po sestinedeli.</p></div>"""

Instance: DischargeBundle-Story-GynDelivery
InstanceOf: CZ_BundleHdr
Usage: #example
Title: "HDR - GYNPOR - Dokumentový bundle gynekologické propouštěcí zprávy / Gynecology discharge report document bundle"
Description: "Document bundle for story-based gynecology discharge report without negative waiver."
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:bundle-story-gyn-delivery"
* type = #document
* timestamp = "2026-03-04T18:31:00+01:00"

* entry[composition][0].fullUrl = "urn:uuid:4c26810a-e3ca-4723-9708-0c8ceac5a737"
* entry[composition][=].resource = DischargeComposition-Story-GynDelivery
* entry[patient][+].fullUrl = "urn:uuid:c517f75a-1e29-423b-8c59-1b275e65019a"
* entry[patient][=].resource = Patient-Story-Mother
* entry[patient][+].fullUrl = "urn:uuid:fd7709a1-247b-4d43-92e7-6b7b21d4a6ba"
* entry[patient][=].resource = Patient-Story-Newborn
* entry[encounter][+].fullUrl = "urn:uuid:a182bf8a-ce46-4e61-9106-0fd5139c3e78"
* entry[encounter][=].resource = Encounter-Story-Delivery
* entry[coverage][+].fullUrl = "urn:uuid:35b9ce78-80c3-443f-b21f-a346a87e15ef"
* entry[coverage][=].resource = Coverage-Story-Mother
* entry[allergyIntolerance][+].fullUrl = "urn:uuid:26be4e8d-b6bc-4b61-a4ff-87641d9aa789"
* entry[allergyIntolerance][=].resource = Allergy-Story-Environmental
* entry[allergyIntolerance][+].fullUrl = "urn:uuid:ff3372f1-0189-457f-8368-aa28e36df796"
* entry[allergyIntolerance][=].resource = Allergy-Story-Zinnat
* entry[procedure][+].fullUrl = "urn:uuid:f1184d84-9da0-4584-82f2-4efbf3ee74b3"
* entry[procedure][=].resource = Procedure-Story-DeliveryMethod
* entry[procedure][+].fullUrl = "urn:uuid:bac0a2d8-114c-4b1b-a65f-dff718f942b4"
* entry[procedure][=].resource = Procedure-Story-Induction
* entry[condition][+].fullUrl = "urn:uuid:1d2b2e56-93b0-4c03-bf01-4612d54b14bc"
* entry[condition][=].resource = Condition-Story-Primary
//* entry[condition][+].fullUrl = "urn:uuid:5e63d48d-ff6f-43fb-babd-74ffb0f6a00d"
//* entry[condition][=].resource = Condition-Story-GestHypertension
//* entry[condition][+].fullUrl = "urn:uuid:a8d9f5cd-a2f7-4073-a33d-23cfdeef9dc1"
//* entry[condition][=].resource = Condition-Story-GDM
* entry[condition][+].fullUrl = "urn:uuid:a44a3603-e3a6-45d9-858d-9d5b5173c771"
* entry[condition][=].resource = Condition-Story-CordAroundNeck
* entry[condition][+].fullUrl = "urn:uuid:74f20ae7-9560-416b-bea1-78f782316395"
* entry[condition][=].resource = Condition-Story-PerinealTear
* entry[condition][+].fullUrl = "urn:uuid:4f82fd24-88b7-4328-bcbe-b4da5bb4999b"
* entry[condition][=].resource = Condition-Story-LivebornSingle
* entry[observation][+].fullUrl = "urn:uuid:7c3bf638-f63f-49b7-b3a4-185fb5fd149d"
* entry[observation][=].resource = Observation-Story-Gravidity
* entry[observation][+].fullUrl = "urn:uuid:b33f71c0-6fb1-45ba-8e8f-e4fb38964d63"
* entry[observation][=].resource = Observation-Story-Parity
* entry[observation][+].fullUrl = "urn:uuid:71eab157-2477-495e-8def-2d9ae6386f88"
* entry[observation][=].resource = Observation-Story-MultiplePregnancy
* entry[observation][+].fullUrl = "urn:uuid:c6e95717-3ceb-4211-b9ce-d61d794701d3"
* entry[observation][=].resource = Observation-Story-GestAgeAtDelivery
* entry[observation][+].fullUrl = "urn:uuid:73f44a2f-9cfd-4b56-b1df-b6898b7a8da3"
* entry[observation][=].resource = Observation-Story-BirthWeight
* entry[observation][+].fullUrl = "urn:uuid:55a402b2-f4af-4904-b01b-0f0953335d85"
* entry[observation][=].resource = Observation-Story-BirthLength
* entry[observation][+].fullUrl = "urn:uuid:cc37d883-9740-437c-95d2-7e3e66c29658"
* entry[observation][=].resource = Observation-Story-Apgar1
* entry[observation][+].fullUrl = "urn:uuid:1df3f436-f303-4ffd-aeb7-a71ae5a8791d"
* entry[observation][=].resource = Observation-Story-Apgar5
* entry[observation][+].fullUrl = "urn:uuid:d9e9d7df-a3fa-430a-9d19-38e8432c8803"
* entry[observation][=].resource = Observation-Story-Apgar10
* entry[observation][+].fullUrl = "urn:uuid:e967fac7-ed30-44a2-8d7a-3ad35db9fff6"
* entry[observation][=].resource = Observation-Story-UZ
* entry[observation][+].fullUrl = "urn:uuid:f432828d-fa44-4928-afa6-a248b126860b"
* entry[observation][=].resource = Observation-Story-BloodGroup
* entry[medication][+].fullUrl = "urn:uuid:6910dd1a-deee-463a-b776-6ee3ca8bf7ed"
* entry[medication][=].resource = Medication-Story-Dopegyt
* entry[medication][+].fullUrl = "urn:uuid:9b5df9b6-b25b-4f28-a74d-419b1c74acb8"
* entry[medication][=].resource = Medication-Story-Fraxiparine
* entry[medication][+].fullUrl = "urn:uuid:d894281f-1104-42d0-9746-98e43262ecc3"
* entry[medication][=].resource = Medication-Story-LidocaineEgis
* entry[medication][+].fullUrl = "urn:uuid:f7206785-f3f2-46e2-9c20-5c684686aabd"
* entry[medication][=].resource = Medication-Story-Ofost
* entry[medication][+].fullUrl = "urn:uuid:c45659d8-37e0-4d5d-8992-166900cd3a4a"
* entry[medication][=].resource = Medication-Story-ProstinE2
* entry[medicationRequest][+].fullUrl = "urn:uuid:3d648416-8bea-4a9a-9b50-6859084e53c4"
* entry[medicationRequest][=].resource = MedicationRequest-Story-Dopegyt-Discharge
* entry[medicationRequest][+].fullUrl = "urn:uuid:80806e6f-99e7-4945-9d1b-465e98fbd45b"
* entry[medicationRequest][=].resource = MedicationRequest-Story-Fraxiparine-Discharge
* entry[practitioner][+].fullUrl = "urn:uuid:5cbed9dd-df97-46ee-974d-8bf34ef30efd"
* entry[practitioner][=].resource = Practitioner-Cerna-Raketa
* entry[practitioner][+].fullUrl = "urn:uuid:c02be8d5-83a2-466b-aa82-089088b1abf7"
* entry[practitioner][=].resource = Practitioner-Bila-Palka
* entry[practitioner][+].fullUrl = "urn:uuid:b1e65698-2b43-481d-b8f4-7ff6d8e81ada"
* entry[practitioner][=].resource = Practitioner-NovakovaJana-GP
* entry[practitioner][+].fullUrl = "urn:uuid:7f2542b8-afe3-4a30-8f4f-c2f6fd2c2f85"
* entry[practitioner][=].resource = Practitioner-NovakovaJana-GYN
* entry[practitionerRole][+].fullUrl = "urn:uuid:b6399cd8-3a91-4c7e-9a03-49d873669ed5"
* entry[practitionerRole][=].resource = PractitionerRole-NovakovaJana-GP
* entry[practitionerRole][+].fullUrl = "urn:uuid:17a26fdf-d36d-464b-b85b-f6f613bb62b4"
* entry[practitionerRole][=].resource = PractitionerRole-NovakovaJana-GYN
* entry[organization][+].fullUrl = "urn:uuid:42a659d0-c08a-424f-9c0c-82096e0f59e0"
* entry[organization][=].resource = Organization-Prostejov-Hospital
* entry[organization][+].fullUrl = "urn:uuid:7aef05df-4e1f-434e-8a66-68ef945ead43"
* entry[organization][=].resource = Organization-Prostejov-Maternity
* entry[organization][+].fullUrl = "urn:uuid:78392d70-a15f-47b9-b6bc-72b6018ae4b9"
* entry[organization][=].resource = Organization-Payer-111-Story
* entry[organization][+].fullUrl = "urn:uuid:4f5f6b0d-f1a6-4ff0-9457-5ddd2117e9d9"
* entry[organization][=].resource = RegisteringProviderExample
* entry[organization][+].fullUrl = "urn:uuid:6dbf2b1f-67f6-46c9-b1b7-f412aaadf2ba"
* entry[organization][=].resource = RegisteringProviderExample-gynecology
* entry[device][+].fullUrl = "urn:uuid:dcf20b83-aacd-45af-99d6-3d277089da35"
* entry[device][=].resource = Device-Story-SamsungR7


