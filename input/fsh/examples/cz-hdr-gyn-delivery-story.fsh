// Story-based example: gynecology discharge report after vaginal delivery (without negative waiver/reversal)

Instance: Practitioner-Cerna-Raketa
InstanceOf: CZ_PractitionerCore
Usage: #example
Description: "Admitting physician for the delivery case."
* id = "practitioner-cerna-raketa"
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/krzp"
* identifier[=].value = "971234701"
* name.use = #usual
* name.prefix = "MUDr."
* name.family = "Cerna"
* name.given[0] = "Raketa"

Instance: Practitioner-Bila-Palka
InstanceOf: CZ_PractitionerCore
Usage: #example
Description: "Discharging physician for the delivery case."
* id = "practitioner-bila-palka"
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/krzp"
* identifier[=].value = "971234702"
* name.use = #usual
* name.prefix = "MUDr."
* name.family = "Bila"
* name.given[0] = "Palka"

Instance: Organization-Prostejov-Hospital
InstanceOf: CZ_OrganizationCore
Usage: #example
Description: "Fictional hospital for story-based maternity discharge."
* id = "organization-prostejov-hospital"
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/ico"
* identifier[=].value = "12345670"
* name = "Nemocnice Prostejov a.s."

Instance: Organization-Prostejov-Maternity
InstanceOf: CZ_OrganizationCore
Usage: #example
Description: "Maternity department of the hospital."
* id = "organization-prostejov-maternity"
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/ico"
* identifier[=].value = "12345671"
* name = "Porodni oddeleni Nemocnice Prostejov"
* partOf = Reference(Organization-Prostejov-Hospital)

Instance: Organization-Payer-111-Story
InstanceOf: CZ_OrganizationCore
Usage: #example
Description: "Health insurance payer 111."
* id = "organization-payer-111-story"
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/zdravotni-pojistovna"
* identifier[=].value = "111"
* name = "Vseobecna zdravotni pojistovna Ceske republiky"

Instance: Patient-Story-Mother
InstanceOf: CZ_PatientCore
Usage: #example
Description: "Mother in story-based delivery discharge use case."
* id = "patient-story-mother"
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/rcis"
* identifier[=].value = "8653034455"
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/rid"
* identifier[=].value = "9003001122"
* name.use = #usual
* name.family = "Dvorakova"
* name.given[0] = "Petra"
* gender = #female
* birthDate = "1986-05-03"
* address[+].text = "Prostejov, CZ"

Instance: Patient-Story-Newborn
InstanceOf: CZ_PatientCore
Usage: #example
Description: "Newborn from story-based delivery discharge use case."
* id = "patient-story-newborn"
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/rid"
* identifier[=].value = "9003007788"
* name.use = #official
* name.family = "Dvorak"
* name.given[0] = "Jan"
* gender = #male
* birthDate = "2026-03-03"
* multipleBirthBoolean = false
* link[+].other = Reference(Patient-Story-Mother)
* link[=].type = #seealso

Instance: Coverage-Story-Mother
InstanceOf: CZ_Coverage
Usage: #example
Description: "Coverage of the mother for payer 111."
* id = "coverage-story-mother"
* status = #active
* beneficiary = Reference(Patient-Story-Mother)
* payor[+] = Reference(Organization-Payer-111-Story)
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/cislo-pojistence"
* identifier[=].value = "8653034455"

Instance: Encounter-Story-Delivery
InstanceOf: CZ_EncounterHdr
Usage: #example
Description: "Inpatient encounter for delivery hospitalization."
* id = "encounter-story-delivery"
* status = #finished
* class.code = #IMP
* class.system = $cz-encounter-typ-kontaktu
* class.display = "lĂ„Ä…ÄąÂ»Ă„Ä…Ă„ÄľkovĂ„â€šĂ‹ĹĄ kontakt"
* subject = Reference(Patient-Story-Mother)
* period.start = "2026-03-03T05:22:00+01:00"
* period.end = "2026-03-04T18:41:00+01:00"
* serviceProvider = Reference(Organization-Prostejov-Maternity)
* participant[admitter][0].individual = Reference(Practitioner-Cerna-Raketa)
* participant[discharger][0].individual = Reference(Practitioner-Bila-Palka)
* hospitalization.dischargeDisposition.coding[0].system = $discharge-disposition
* hospitalization.dischargeDisposition.coding[0].code = #home
* hospitalization.dischargeDisposition.coding[0].display = "DomĂ„Ä…ÄąÂ»"

Instance: Procedure-Story-DeliveryMethod
InstanceOf: CZ_ProcedureMethodOfDelivery
Usage: #example
Description: "Induced vaginal delivery in week 40+2."
* id = "procedure-story-delivery-method"
* status = #completed
* code = $sct#22640007 "VaginĂ„â€šĂ‹â€ˇlnĂ„â€šĂ‚Â­ porod"
* subject = Reference(Patient-Story-Mother)
* performedDateTime = "2026-03-03T17:13:00+01:00"
* performer.actor = Reference(Practitioner-Cerna-Raketa)

Instance: Procedure-Story-Induction
InstanceOf: CZ_ProcedureInductionOfLabor
Usage: #example
Description: "Labor induction by Prostin E2 due to labor stagnation."
* id = "procedure-story-induction"
* status = #completed
* code = $sct#398307005 "Indukce porodu"
* subject = Reference(Patient-Story-Mother)
* performedPeriod.start = "2026-03-03T12:30:00+01:00"
* performedPeriod.end = "2026-03-03T16:30:00+01:00"

Instance: Condition-Story-Primary
InstanceOf: CZ_ConditionHdr
Usage: #example
Description: "Primary diagnosis for vaginal delivery."
* id = "condition-story-primary"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* code = $MKN10#O800 "IZ, III.p., CH 3200g, rpt.perinei I, KS 0 pozit., ZK 250ml"
* subject = Reference(Patient-Story-Mother)

Instance: Condition-Story-GestHypertension
InstanceOf: CZ_ConditionHdr
Usage: #example
Description: "Gestational hypertension from week 38."
* id = "condition-story-o13"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* code = $MKN10#O13 "GestaÄ‚â€žÄąÂ¤nĂ„â€šĂ‚Â­ (vyvolanĂ„â€šĂ‹â€ˇ tÄ‚â€žĂ˘â‚¬ĹźhotenstvĂ„â€šĂ‚Â­m) hypertenze"
* subject = Reference(Patient-Story-Mother)

Instance: Condition-Story-GDM
InstanceOf: CZ_ConditionHdr
Usage: #example
Description: "Gestational diabetes mellitus."
* id = "condition-story-o244"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* code = $MKN10#O244 "Diabetes mellitus vzniklĂ„â€šĂ‹ĹĄ v tÄ‚â€žĂ˘â‚¬ĹźhotenstvĂ„â€šĂ‚Â­"
* subject = Reference(Patient-Story-Mother)

Instance: Condition-Story-CordAroundNeck
InstanceOf: CZ_ConditionHdr
Usage: #example
Description: "Delivery complicated by cord around neck."
* id = "condition-story-o691"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* code = $MKN10#O691 "Porod komplikovanĂ„â€šĂ‹ĹĄ pupeÄ‚â€žÄąÂ¤nĂ„â€šĂ‚Â­kem kolem krku s kompresĂ„â€šĂ‚Â­"
* subject = Reference(Patient-Story-Mother)

Instance: Condition-Story-PerinealTear
InstanceOf: CZ_ConditionHdr
Usage: #example
Description: "First degree perineal tear during delivery, sutured."
* id = "condition-story-o700"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* code = $MKN10#O700 "Trhlina hrĂ„â€šĂ‹â€ˇze prvnĂ„â€šĂ‚Â­ho stupnÄ‚â€žĂ˘â‚¬Ĺź pĂ„Ä…Ă˘â€žËi porodu"
* subject = Reference(Patient-Story-Mother)
* onsetDateTime = "2026-03-03T17:13:00+01:00"

Instance: Condition-Story-LivebornSingle
InstanceOf: CZ_ConditionHdr
Usage: #example
Description: "Single liveborn infant."
* id = "condition-story-z370"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* code = $MKN10#Z370 "JedinĂ„â€šĂ‚Â© dĂ„â€šĂ‚Â­tÄ‚â€žĂ˘â‚¬Ĺź, Ă„Ä…Ă„ÄľivÄ‚â€žĂ˘â‚¬Ĺź narozenĂ„â€šĂ‚Â©"
* subject = Reference(Patient-Story-Mother)

Instance: Observation-Story-Gravidity
InstanceOf: CZ_ObservationGravidity
Usage: #example
Description: "Gravidity IV."
* id = "observation-story-gravidity"
* status = #final
* subject = Reference(Patient-Story-Mother)
* effectiveDateTime = "2026-03-03T10:00:00+01:00"
* valueInteger = 4

Instance: Observation-Story-Parity
InstanceOf: CZ_ObservationParity
Usage: #example
Description: "Parity II."
* id = "observation-story-parity"
* status = #final
* subject = Reference(Patient-Story-Mother)
* effectiveDateTime = "2026-03-03T10:00:00+01:00"
* valueInteger = 2

Instance: Observation-Story-MultiplePregnancy
InstanceOf: CZ_ObservationMultiplePregnancy
Usage: #example
Description: "Singleton pregnancy."
* id = "observation-story-multiple-pregnancy"
* status = #final
* subject = Reference(Patient-Story-Mother)
* effectiveDateTime = "2026-03-03T10:00:00+01:00"
* valueBoolean = false
* component.valueInteger = 1

Instance: Observation-Story-GestAgeAtDelivery
InstanceOf: Observation
Usage: #example
Description: "Gestational age at delivery 40+2."
* id = "observation-story-gest-age"
* status = #final
* code = $loinc#76516-4 "GestaÄ‚â€žÄąÂ¤nĂ„â€šĂ‚Â­ stĂ„â€šĂ‹â€ˇĂ„Ä…Ă˘â€žËĂ„â€šĂ‚Â­ pĂ„Ä…Ă˘â€žËi porodu"
* subject = Reference(Patient-Story-Mother)
* effectiveDateTime = "2026-03-03T17:13:00+01:00"
* valueString = "40+2"

Instance: Observation-Story-BirthWeight
InstanceOf: CZ_ObservationBirthWeight
Usage: #example
Description: "Newborn birth weight."
* id = "observation-story-birth-weight"
* subject = Reference(Patient-Story-Newborn)
* valueQuantity = 3200 'g' "g"

Instance: Observation-Story-BirthLength
InstanceOf: CZ_ObservationBirthLength
Usage: #example
Description: "Newborn birth length."
* id = "observation-story-birth-length"
* subject = Reference(Patient-Story-Newborn)
* valueQuantity = 50 'cm' "cm"

Instance: Allergy-Story-Zinnat
InstanceOf: CZ_AllergyIntoleranceHdr
Usage: #example
Description: "Unverified allergy to Zinnat with vertigo."
* id = "allergy-story-zinnat"
* identifier[0].system = "urn:oid:1.2.203.24341.1.1.999"
* identifier[0].value = "Allergy-Story-Zinnat-001"
* clinicalStatus = $allergyintolerance-clinical#active
* verificationStatus = $allergyintolerance-verification#unconfirmed
* code.text = "Zinnat"
* patient = Reference(Patient-Story-Mother)
* reaction[0].manifestation[0].coding[0].system = $sct
* reaction[0].manifestation[0].coding[0].code = #404640003
* reaction[0].manifestation[0].coding[0].display = "ZĂ„â€šĂ‹â€ˇvraĂ„Ä…Ă„â€ž"
* reaction[0].description = "Vertigo"

Instance: Allergy-Story-Environmental
InstanceOf: CZ_AllergyIntoleranceHdr
Usage: #example
Description: "Unverified environmental allergies: grass, dust, pollen."
* id = "allergy-story-environmental"
* identifier[0].system = "urn:oid:1.2.203.24341.1.1.999"
* identifier[0].value = "Allergy-Story-Environmental-001"
* clinicalStatus = $allergyintolerance-clinical#active
* verificationStatus = $allergyintolerance-verification#unconfirmed
* code.text = "Travy, prach, pyl"
* patient = Reference(Patient-Story-Mother)

Instance: Medication-Story-Dopegyt
InstanceOf: CZ_Medication
Usage: #example
Description: "Dopegyt 250 mg tablets."
* id = "medication-story-dopegyt"
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
Description: "Fraxiparine 0.6 ml."
* id = "medication-story-fraxiparine"
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
Description: "Prostin E2 for labor induction."
* id = "medication-story-prostin-e2"
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
Description: "Lidocaine EGIS used during hospitalization."
* id = "medication-story-lidocaine-egis"
* status = #active
* identifier[0].system = $cz-medication-DLP-cs
* identifier[0].value = "DLP-LIDOCAINEEGIS-001"
* code.text = "Lidocaine EGIS"

Instance: Medication-Story-Ofost
InstanceOf: CZ_Medication
Usage: #example
Description: "OFOST used during hospitalization."
* id = "medication-story-ofost"
* status = #active
* identifier[0].system = $cz-medication-DLP-cs
* identifier[0].value = "DLP-OFOST-001"
* code.text = "OFOST"

Instance: MedicationRequest-Story-Dopegyt-Discharge
InstanceOf: CZ_MedicationRequestHdr
Usage: #example
Description: "Discharge medication request for Dopegyt."
* id = "medicationrequest-story-dopegyt-discharge"
* status = #active
* intent = #order
* medicationReference = Reference(Medication-Story-Dopegyt)
* subject = Reference(Patient-Story-Mother)
* encounter = Reference(Encounter-Story-Delivery)
* authoredOn = "2026-03-04T18:31:00+01:00"
* requester = Reference(Practitioner-Bila-Palka)
* dosageInstruction[0].text = "1-0-1 po 12 hodinach (07:00, 19:00)."
* dispenseRequest.quantity.value = 60
* dispenseRequest.quantity.unit = "tablet"
* substitution.allowedCodeableConcept.text = "Substituce nepovolena"

Instance: MedicationRequest-Story-Fraxiparine-Discharge
InstanceOf: CZ_MedicationRequestHdr
Usage: #example
Description: "Discharge medication request for Fraxiparine (LMWH prophylaxis)."
* id = "medicationrequest-story-fraxiparine-discharge"
* status = #active
* intent = #order
* medicationReference = Reference(Medication-Story-Fraxiparine)
* subject = Reference(Patient-Story-Mother)
* encounter = Reference(Encounter-Story-Delivery)
* authoredOn = "2026-03-04T18:31:00+01:00"
* requester = Reference(Practitioner-Bila-Palka)
* dosageInstruction[0].text = "0,6 ml s.c. 1x denne v 18:00 do 10.03.2026 vcetne."
* dispenseRequest.quantity.value = 7
* dispenseRequest.quantity.unit = "dÄ‚Ë‡vka"
* substitution.allowedCodeableConcept.text = "Substituce nepovolena"

Instance: Device-Story-SamsungR7
InstanceOf: CZ_MedicalDevice
Usage: #example
Description: "Ultrasound device used for obstetric examination."
* id = "device-story-samsung-r7"
* manufacturer = "Samsung"
* modelNumber = "R7"
* type = $sct#706171005 "Ultrasound imaging system"
* patient = Reference(Patient-Story-Mother)

Instance: Observation-Story-UZ
InstanceOf: Observation
Usage: #example
Description: "Obstetric ultrasound finding recorded during admission."
* id = "observation-story-uz"
* status = #final
* category = $observation-category#imaging
* code = $sct#169238002 "Obstetric ultrasound scan"
* subject = Reference(Patient-Story-Mother)
* effectiveDateTime = "2026-03-02T10:00:00+01:00"
* device = Reference(Device-Story-SamsungR7)
* valueString = "UZ: PPH, postavenÄ‚Â­ II pÄąâ„˘ednÄ‚Â­, ASP+, PP+, placenta na zadnÄ‚Â­ stĂ„â€şnĂ„â€ş mimo DS, pÄąâ„˘Ä‚Â­datnÄ‚Ëť lalok i na pÄąâ„˘ednÄ‚Â­ stĂ„â€şnĂ„â€ş, bez znÄ‚Ë‡mek patologie plodovÄ‚Â© vody, normohydramnion, EFW 3480 g proporĂ„Ĺ¤nĂ„â€ş."

Instance: Observation-Story-BloodGroup
InstanceOf: CZ_ObservationResultLaboratory
Usage: #example
Description: "Maternal blood group test."
* id = "observation-story-blood-group"
* status = #final
* category[laboratory] = $observation-category#laboratory
* category[studyType] = $loinc#26436-6 "Laboratory studies (set)"
* code = $nclp#15961 "AB0 a RhD krevnĂ­ skupina"
* subject = Reference(Patient-Story-Mother)
* effectiveDateTime = "2026-03-03T06:10:00+01:00"
* performer = Reference(Practitioner-Cerna-Raketa)
* valueCodeableConcept.text = "0 RhD pozitivni (0+)"

Instance: DischargeComposition-Story-GynDelivery
InstanceOf: CZ_CompositionHdr
Usage: #example
Description: "Story-based gynecology discharge report after induced vaginal delivery."
* id = "composition-story-gyn-delivery"
* status = #final
* type = $loinc#34105-7 "Hospital Discharge summary"
* title = "Gynekologicka propousteci zprava - indukovany vaginalni porod"
* date = "2026-03-04T18:31:00+01:00"
* author[0] = Reference(Practitioner-Bila-Palka)
* subject = Reference(Patient-Story-Mother)
* encounter = Reference(Encounter-Story-Delivery)
* extension[information-recipient][+].valueReference = Reference(Practitioner-NovakovaJana-GP)
* extension[information-recipient][+].valueReference = Reference(Practitioner-NovakovaJana-GYN)

* section[sectionAdmissionEvaluation].title = "PÄąâ„˘Ä‚Â­jmovÄ‚Â© vyÄąË‡etÄąâ„˘enÄ‚Â­"
* section[sectionAdmissionEvaluation].code = $loinc#67851-6 "PÄąâ„˘Ä‚Â­jmovÄ‚Â© vyÄąË‡etÄąâ„˘enÄ‚Â­"
* section[sectionAdmissionEvaluation].text.status = #additional
* section[sectionAdmissionEvaluation].text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><p>PÄąâ„˘ijata pro zesilujÄ‚Â­cÄ‚Â­ dĂ„â€şloÄąÄľnÄ‚Â­ kontrakce.</p><p>SubjektivnĂ„â€ş: cÄ‚Â­tÄ‚Â­ se dobÄąâ„˘e, pohyby plodu cÄ‚Â­tÄ‚Â­, cefaleu neguje, epigastrickou bolest neguje, vizus v normĂ„â€ş, otoky prstÄąĹ» hornÄ‚Â­ch i dolnÄ‚Â­ch konĂ„Ĺ¤etin, bez krvÄ‚Ë‡cenÄ‚Â­.</p><p>ObjektivnĂ„â€ş: PPH, hlava nalÄ‚Â©hÄ‚Ë‡, branka 5 cm, hmatnÄ‚Ëť VB, kontrakce Ä‚Ë‡ 5 min.</p><p>KTG: fyziologickÄ‚Ëť zÄ‚Ë‡znam, akcelerace pÄąâ„˘Ä‚Â­tomny, bez deceleracÄ‚Â­, oscilace undulatornÄ‚Â­.</p><p>UZ bÄąâ„˘icha (Samsung R7, 02.03.): PPH, postavenÄ‚Â­ II pÄąâ„˘ednÄ‚Â­, ASP+, PP+, placenta na zadnÄ‚Â­ stĂ„â€şnĂ„â€ş mimo DS, pÄąâ„˘Ä‚Â­datnÄ‚Ëť lalok i na pÄąâ„˘ednÄ‚Â­ stĂ„â€şnĂ„â€ş, bez znÄ‚Ë‡mek patologie plodovÄ‚Â© vody, normohydramnion. EFW 01.03.2026: 3480 g, proporĂ„Ĺ¤nÄ‚Â­ rÄąĹ»st.</p><p>ZÄ‚Ë‡vĂ„â€şr: gravidita 40+2 dle UZ, IV/II, GBS pozitivnÄ‚Â­, GDM na dietĂ„â€ş, gestaĂ„Ĺ¤nÄ‚Â­ hypertenze na Dopegytu 1-0-1.</p><p>DoporuĂ„Ĺ¤enÄ‚Â­ pÄąâ„˘i pÄąâ„˘Ä‚Â­jmu: s ohledem na GBS pozitivitu doporuĂ„Ĺ¤ena antibiotickÄ‚Ë‡ profylaxe, dÄ‚Ë‡le pÄąâ„˘Ä‚Â­prava k porodu, spontÄ‚Ë‡nnÄ‚Â­ vedenÄ‚Â­ porodu, KTG Ä‚Ë‡ 3 hod, OP Ä‚Ë‡ 30 min, TK Ä‚Ë‡ 3 hod.</p></div>"""
* section[sectionAdmissionEvaluation].section[sectionPhysicalExamination].code = $sct#425044008 "Physical exam section (record artifact)"
* section[sectionAdmissionEvaluation].section[sectionPhysicalExamination].text.status = #additional
* section[sectionAdmissionEvaluation].section[sectionPhysicalExamination].text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><p>SouĂ„Ĺ¤Ä‚Ë‡stÄ‚Â­ pÄąâ„˘Ä‚Â­jmovÄ‚Â©ho vyÄąË‡etÄąâ„˘enÄ‚Â­ bylo i UZ vyÄąË‡etÄąâ„˘enÄ‚Â­ na pÄąâ„˘Ä‚Â­stroji Samsung R7. Doplneno laboratorni vysetreni krevni skupiny: 0 RhD pozitivni.</p></div>"""
* section[sectionAdmissionEvaluation].section[sectionPhysicalExamination].entry[+] = Reference(Observation-Story-UZ)
* section[sectionAdmissionEvaluation].section[sectionPhysicalExamination].entry[+] = Reference(Observation-Story-BloodGroup)
* section[sectionHospitalCourse].title = "Prubeh hospitalizace"
* section[sectionHospitalCourse].code = $loinc#8648-8 "PrĂ„Ä…ÄąÂ»bÄ‚â€žĂ˘â‚¬Ĺźh hospitalizace"
* section[sectionHospitalCourse].text.status = #additional
* section[sectionHospitalCourse].text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><p>Hospitalizace od 03.03.2026 05:22 do 04.03.2026 18:41. Prijata pro pravidelne kontrakce a 5 minut. Pro stagnaci porodnickeho nalezu byla provedena indukce porodu Prostin E2. Poporodni prubeh bez komplikaci.</p></div>"""

* section[sectionHospitalCourse].section[sectionDelivery].title = "Porod"
* section[sectionHospitalCourse].section[sectionDelivery].code = $loinc#57074-7 "ZĂ„â€šĂ‹â€ˇznam o porodu"
* section[sectionHospitalCourse].section[sectionDelivery].text.status = #additional
* section[sectionHospitalCourse].section[sectionDelivery].text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><p>PorodnickĂ„â€šĂ‹ĹĄ prĂ„Ä…ÄąÂ»bÄ‚â€žĂ˘â‚¬Ĺźh: pĂ„Ä…Ă˘â€žËijata pro pravidelnĂ„â€šĂ‚Â© kontrakce Ă„â€šĂ‹â€ˇ 5 minut v gestaÄ‚â€žÄąÂ¤nĂ„â€šĂ‚Â­m stĂ„â€šĂ‹â€ˇĂ„Ä…Ă˘â€žËĂ„â€šĂ‚Â­ 40+2. Pro stagnaci porodnickĂ„â€šĂ‚Â©ho nĂ„â€šĂ‹â€ˇlezu byla zahĂ„â€šĂ‹â€ˇjena indukce porodu Prostin E2.</p><p>Porod dne 03.03.2026 v 17:13, spontĂ„â€šĂ‹â€ˇnnÄ‚â€žĂ˘â‚¬Ĺź zĂ„â€šĂ‹â€ˇhlavĂ„â€šĂ‚Â­m. BÄ‚â€žĂ˘â‚¬Ĺźhem porodu pupeÄ‚â€žÄąÂ¤nĂ„â€šĂ‚Â­k 1x kolem krku s kompresĂ„â€šĂ‚Â­.</p><p>PorodnĂ„â€šĂ‚Â­ poranÄ‚â€žĂ˘â‚¬ĹźnĂ„â€šĂ‚Â­: ruptura perinea I. stupnÄ‚â€žĂ˘â‚¬Ĺź, oĂ„Ä…Ă‹â€ˇetĂ„Ä…Ă˘â€žËeno suturou. OdhadovanĂ„â€šĂ‹â€ˇ krevnĂ„â€šĂ‚Â­ ztrĂ„â€šĂ‹â€ˇta 250 ml.</p><p>Novorozenec: chlapec, Ă„Ä…Ă„ÄľivÄ‚â€žĂ˘â‚¬Ĺź narozenĂ„â€šĂ‹ĹĄ, porodnĂ„â€šĂ‚Â­ hmotnost 3200 g.</p><p>Souvislosti: GBS pozitivita, gestaÄ‚â€žÄąÂ¤nĂ„â€šĂ‚Â­ hypertenze (Dopegyt), gestaÄ‚â€žÄąÂ¤nĂ„â€šĂ‚Â­ diabetes na dietÄ‚â€žĂ˘â‚¬Ĺź.</p></div>"""
* section[sectionHospitalCourse].section[sectionDelivery].entry[deliveryProcedure][+] = Reference(Procedure-Story-DeliveryMethod)
* section[sectionHospitalCourse].section[sectionDelivery].entry[inductionProcedure][+] = Reference(Procedure-Story-Induction)
* section[sectionHospitalCourse].section[sectionDelivery].entry[birthInjury][+] = Reference(Condition-Story-PerinealTear)
* section[sectionHospitalCourse].section[sectionDelivery].entry[birthWeight][+] = Reference(Observation-Story-BirthWeight)
* section[sectionHospitalCourse].section[sectionDelivery].entry[birthLength][+] = Reference(Observation-Story-BirthLength)
* section[sectionHospitalCourse].section[sectionDelivery].entry[deliveryObservation][+] = Reference(Observation-Story-GestAgeAtDelivery)
* section[sectionHospitalCourse].section[sectionDelivery].entry[newborn][+] = Reference(Patient-Story-Newborn)
* section[sectionHospitalCourse].section[sectionDelivery].entry[+] = Reference(Condition-Story-CordAroundNeck)
* section[sectionHospitalCourse].section[sectionDelivery].entry[+] = Reference(Condition-Story-LivebornSingle)

* section[sectionPatientHx].title = "Anamneza"
* section[sectionPatientHx].code = $loinc#35090-0 "AnamnestickĂ„â€šĂ‹â€ˇ poznĂ„â€šĂ‹â€ˇmka"
* section[sectionPatientHx].text.status = #additional
* section[sectionPatientHx].text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><p>AnamnĂ„â€šĂ‚Â©za strukturovĂ„â€šĂ‹â€ˇna: RA, OA, FA, AA, GA, FF, abĂ„â€šÄąĹşzus, SA+PA. OA: bez trvalĂ„â€šĂ‚Â© lĂ„â€šĂ‚Â©Ä‚â€žÄąÂ¤by mimo graviditu, nynĂ„â€šĂ‚Â­ GDM dieta (takĂ„â€šĂ‚Â© ve II. graviditÄ‚â€žĂ˘â‚¬Ĺź), TEN 0, Ă„â€šÄąĹşrazy 0, operace 0, transfuze 0, epidemiologickĂ„â€šĂ‹â€ˇ anamnĂ„â€šĂ‚Â©za bez oÄ‚â€žÄąÂ¤kovĂ„â€šĂ‹â€ˇnĂ„â€šĂ‚Â­ proti RSV. FA: aktuĂ„â€šĂ‹â€ˇlnÄ‚â€žĂ˘â‚¬Ĺź dlouhodobÄ‚â€žĂ˘â‚¬Ĺź Dopegyt. FF: moÄ‚â€žÄąÂ¤enĂ„â€šĂ‚Â­ i stolice v poĂ„Ä…Ă˘â€žËĂ„â€šĂ‹â€ˇdku.</p></div>"""
* section[sectionPatientHx].section[sectionFamilyHistory].title = "RodinnĂ„â€šĂ‹â€ˇ anamnĂ„â€šĂ‚Â©za"
* section[sectionPatientHx].section[sectionFamilyHistory].code = $loinc#10157-6 "RodinnĂ„â€šĂ‹â€ˇ anamnĂ„â€šĂ‚Â©za"
* section[sectionPatientHx].section[sectionFamilyHistory].text.status = #additional
* section[sectionPatientHx].section[sectionFamilyHistory].text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><p>RA: matka karcinom prsu v 57 letech, hypertenze a onemocnÄ‚â€žĂ˘â‚¬ĹźnĂ„â€šĂ‚Â­ Ă„Ä…Ă‹â€ˇtĂ„â€šĂ‚Â­tnĂ„â€šĂ‚Â© Ă„Ä…Ă„ÄľlĂ„â€šĂ‹â€ˇzy; bratĂ„Ä…Ă˘â€žËi hypertenze; sestra hypotyreĂ„â€šÄąâ€šza; prarodiÄ‚â€žÄąÂ¤e diabetes mellitus; dÄ‚â€žĂ˘â‚¬ĹźdeÄ‚â€žÄąÂ¤ek leukemie.</p></div>"""
* section[sectionPatientHx].section[sectionPregnancyHx].title = "Tehotenska anamneza"
* section[sectionPatientHx].section[sectionPregnancyHx].code = $loinc#10162-6 "TÄ‚â€žĂ˘â‚¬ĹźhotenskĂ„â€šĂ‹â€ˇ anamnĂ„â€šĂ‚Â©za"
* section[sectionPatientHx].section[sectionPregnancyHx].text.status = #additional
* section[sectionPatientHx].section[sectionPregnancyHx].text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><p>GA: gravidita spontĂ„â€šĂ‹â€ˇnnĂ„â€šĂ‚Â­. Gravidita/parita IV/II, gestaÄ‚â€žÄąÂ¤nĂ„â€šĂ‚Â­ stĂ„â€šĂ‹â€ˇĂ„Ä…Ă˘â€žËĂ„â€šĂ‚Â­ pĂ„Ä…Ă˘â€žËi porodu 40+2, singleton gravidita. PĂ„Ä…Ă˘â€žËedchozĂ„â€šĂ‚Â­ porody: 05/2016 spontĂ„â€šĂ‹â€ˇnnĂ„â€šĂ‚Â­ porod zĂ„â€šĂ‹â€ˇhlavĂ„â€šĂ‚Â­m, chlapec 3800 g, epiziotomie a infekce poranÄ‚â€žĂ˘â‚¬ĹźnĂ„â€šĂ‚Â­ v Ă„Ä…Ă‹â€ˇestinedÄ‚â€žĂ˘â‚¬ĹźlĂ„â€šĂ‚Â­; 02/2019 spontĂ„â€šĂ‹â€ˇnnĂ„â€šĂ‚Â­ porod zĂ„â€šĂ‹â€ˇhlavĂ„â€šĂ‚Â­m 3740 g bez komplikacĂ„â€šĂ‚Â­. Abortus: 01/2022 spontĂ„â€šĂ‹â€ˇnnĂ„â€šĂ‚Â­ abortus completus. UUT: 0. MenarchĂ„â€šĂ‚Â© v 11 letech, cyklus nepravidelnĂ„â€šĂ‹ĹĄ, gynekologickĂ„â€šĂ‚Â© operace ne.</p></div>"""
* section[sectionPatientHx].section[sectionPregnancyHx].entry[+] = Reference(Condition-Story-Primary)
* section[sectionPatientHx].section[sectionPregnancyHx].entry[gestationalAge][+] = Reference(Observation-Story-GestAgeAtDelivery)
* section[sectionPatientHx].section[sectionPregnancyHx].entry[+] = Reference(Observation-Story-Gravidity)
* section[sectionPatientHx].section[sectionPregnancyHx].entry[+] = Reference(Observation-Story-Parity)
* section[sectionPatientHx].section[sectionPregnancyHx].entry[+] = Reference(Observation-Story-MultiplePregnancy)
* section[sectionPatientHx].section[sectionSocialHistory].title = "SociĂ„â€šĂ‹â€ˇlnĂ„â€šĂ‚Â­ a pracovnĂ„â€šĂ‚Â­ anamnĂ„â€šĂ‚Â©za"
* section[sectionPatientHx].section[sectionSocialHistory].code = $loinc#29762-2 "SociĂ„â€šĂ‹â€ˇlnĂ„â€šĂ‚Â­ anamnĂ„â€šĂ‚Â©za"
* section[sectionPatientHx].section[sectionSocialHistory].text.status = #additional
* section[sectionPatientHx].section[sectionSocialHistory].text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><p>SA+PA: bydlĂ„â€šĂ‚Â­ s manĂ„Ä…Ă„Äľelem, na mateĂ„Ä…Ă˘â€žËskĂ„â€šĂ‚Â© dovolenĂ„â€šĂ‚Â©, povolĂ„â€šĂ‹â€ˇnĂ„â€šĂ‚Â­m lĂ„â€šĂ‚Â©kĂ„â€šĂ‹â€ˇrnice. AbĂ„â€šÄąĹşzus: nekuĂ„Ä…Ă˘â€žËaÄ‚â€žÄąÂ¤ka, alkohol nepije.</p></div>"""
* section[sectionPatientHx].section[sectionInfectiousContacts].title = "EpidemiologickĂ„â€šĂ‹â€ˇ anamnĂ„â€šĂ‚Â©za"
* section[sectionPatientHx].section[sectionInfectiousContacts].code = TemporaryHDRSystem#infection-contact "InfekÄ‚â€žÄąÂ¤nĂ„â€šĂ‚Â­ kontakty"
* section[sectionPatientHx].section[sectionInfectiousContacts].text.status = #additional
* section[sectionPatientHx].section[sectionInfectiousContacts].text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><p>EpidemiologickĂ„â€šĂ‹â€ˇ anamnĂ„â€šĂ‚Â©za: bez vĂ„â€šĂ‹ĹĄznamnĂ„â€šĂ‹ĹĄch rizikovĂ„â€šĂ‹ĹĄch kontaktĂ„Ä…ÄąÂ», proti RSV neoÄ‚â€žÄąÂ¤kovĂ„â€šĂ‹â€ˇna.</p></div>"""
* section[sectionPatientHx].section[sectionSubstanceUse].title = "UĂ„Ä…Ă„ÄľĂ„â€šĂ‚Â­vĂ„â€šĂ‹â€ˇnĂ„â€šĂ‚Â­ nĂ„â€šĂ‹â€ˇvykovĂ„â€šĂ‹ĹĄch lĂ„â€šĂ‹â€ˇtek"
* section[sectionPatientHx].section[sectionSubstanceUse].code = TemporaryHDRSystem#substance-use "UĂ„Ä…Ă„ÄľĂ„â€šĂ‚Â­vĂ„â€šĂ‹â€ˇnĂ„â€šĂ‚Â­ nĂ„â€šĂ‹â€ˇvykovĂ„â€šĂ‹ĹĄch lĂ„â€šĂ‹â€ˇtek"
* section[sectionPatientHx].section[sectionSubstanceUse].text.status = #additional
* section[sectionPatientHx].section[sectionSubstanceUse].text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><p>NekouĂ„Ä…Ă˘â€žËĂ„â€šĂ‚Â­, alkohol nepije, drogy neudĂ„â€šĂ‹â€ˇvĂ„â€šĂ‹â€ˇ.</p></div>"""

* section[sectionAllergies].title = "Alergie, intolerance a varovani"
* section[sectionAllergies].code = $loinc#48765-2 "Alergie a neĂ„Ä…Ă„ÄľĂ„â€šĂ‹â€ˇdoucĂ„â€šĂ‚Â­ reakce"
* section[sectionAllergies].text.status = #additional
* section[sectionAllergies].text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><p>AA: alergie neovÄ‚â€žĂ˘â‚¬ĹźĂ„Ä…Ă˘â€žËeny - trĂ„â€šĂ‹â€ˇvy, prach, pyl, Zinnat (vertigo).</p></div>"""
* section[sectionAllergies].entry[allergyIntolerance][+] = Reference(Allergy-Story-Environmental)
* section[sectionAllergies].entry[allergyIntolerance][+] = Reference(Allergy-Story-Zinnat)

* section[sectionPharmacotherapy].title = "Pharmacotherapy"
* section[sectionPharmacotherapy].code = $loinc#87232-5 "StruÄ‚â€žÄąÂ¤nĂ„â€šĂ‹ĹĄ pĂ„Ä…Ă˘â€žËehled podanĂ„â€šĂ‹ĹĄch lĂ„â€šĂ‚Â©Ä‚â€žÄąÂ¤iv"
* section[sectionPharmacotherapy].text.status = #additional
* section[sectionPharmacotherapy].text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><p>Behem hospitalizace podany Dopegyt, Fraxiparine, Lidocaine, OFOST, Prostin E2. Pri propusteni doporucen Dopegyt 1-0-1 a LMWH profylaxe do 10.03.2026 vcetne.</p></div>"""
* section[sectionPharmacotherapy].entry[+] = Reference(Medication-Story-Dopegyt)
* section[sectionPharmacotherapy].entry[+] = Reference(Medication-Story-Fraxiparine)
* section[sectionPharmacotherapy].entry[+] = Reference(Medication-Story-LidocaineEgis)
* section[sectionPharmacotherapy].entry[+] = Reference(Medication-Story-Ofost)
* section[sectionPharmacotherapy].entry[+] = Reference(Medication-Story-ProstinE2)

* section[sectionDischargeMedications].title = "Hospital discharge medications"
* section[sectionDischargeMedications].code = $loinc#75311-1 "Hospital discharge medications"
* section[sectionDischargeMedications].text.status = #additional
* section[sectionDischargeMedications].text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><p>Doporucena medikace pri propusteni: Dopegyt 1-0-1 a Fraxiparine 0,6 ml s.c. 1x denne do 10.03.2026 vcetne.</p></div>"""
* section[sectionDischargeMedications].entry[+] = Reference(MedicationRequest-Story-Dopegyt-Discharge)
* section[sectionDischargeMedications].entry[+] = Reference(MedicationRequest-Story-Fraxiparine-Discharge)

* section[sectionPayers].title = "Health insurance and payment information"
* section[sectionPayers].code = $loinc#48768-6 "Informace o plĂ„â€šĂ‹â€ˇtci pĂ„â€šĂ‚Â©Ä‚â€žÄąÂ¤e"
* section[sectionPayers].text.status = #additional
* section[sectionPayers].text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><p>Payer: 111 (VZP).</p></div>"""
* section[sectionPayers].entry[+] = Reference(Coverage-Story-Mother)

* section[sectionPlanOfCare].title = "Plan of care"
* section[sectionPlanOfCare].code = $loinc#18776-5 "LĂ„â€šĂ‚Â©Ä‚â€žÄąÂ¤ebnĂ„â€šĂ‹ĹĄ plĂ„â€šĂ‹â€ˇn"
* section[sectionPlanOfCare].text.status = #additional
* section[sectionPlanOfCare].text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><p>Doporuceno: self-monitoring TK 5x denne, pri hodnotach nad 150/100 mmHg okamzita kontrola. Kontrola u praktickeho lekare do tydne, gynekologicka kontrola po sestinedeli.</p></div>"""

Instance: DischargeBundle-Story-GynDelivery
InstanceOf: CZ_BundleHdr
Usage: #example
Description: "Document bundle for story-based gynecology discharge report without negative waiver."
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:bundle-story-gyn-delivery"
* type = #document
* timestamp = "2026-03-04T18:31:00+01:00"

* entry[composition][0].fullUrl = "urn:uuid:composition-story-gyn-delivery"
* entry[composition][=].resource = DischargeComposition-Story-GynDelivery
* entry[patient][+].fullUrl = "urn:uuid:patient-story-mother"
* entry[patient][=].resource = Patient-Story-Mother
* entry[patient][+].fullUrl = "urn:uuid:patient-story-newborn"
* entry[patient][=].resource = Patient-Story-Newborn
* entry[encounter][+].fullUrl = "urn:uuid:encounter-story-delivery"
* entry[encounter][=].resource = Encounter-Story-Delivery
* entry[coverage][+].fullUrl = "urn:uuid:coverage-story-mother"
* entry[coverage][=].resource = Coverage-Story-Mother
* entry[allergyIntolerance][+].fullUrl = "urn:uuid:allergy-story-environmental"
* entry[allergyIntolerance][=].resource = Allergy-Story-Environmental
* entry[allergyIntolerance][+].fullUrl = "urn:uuid:allergy-story-zinnat"
* entry[allergyIntolerance][=].resource = Allergy-Story-Zinnat
* entry[procedure][+].fullUrl = "urn:uuid:procedure-story-delivery-method"
* entry[procedure][=].resource = Procedure-Story-DeliveryMethod
* entry[procedure][+].fullUrl = "urn:uuid:procedure-story-induction"
* entry[procedure][=].resource = Procedure-Story-Induction
* entry[condition][+].fullUrl = "urn:uuid:condition-story-primary"
* entry[condition][=].resource = Condition-Story-Primary
* entry[condition][+].fullUrl = "urn:uuid:condition-story-o13"
* entry[condition][=].resource = Condition-Story-GestHypertension
* entry[condition][+].fullUrl = "urn:uuid:condition-story-o244"
* entry[condition][=].resource = Condition-Story-GDM
* entry[condition][+].fullUrl = "urn:uuid:condition-story-o691"
* entry[condition][=].resource = Condition-Story-CordAroundNeck
* entry[condition][+].fullUrl = "urn:uuid:condition-story-o700"
* entry[condition][=].resource = Condition-Story-PerinealTear
* entry[condition][+].fullUrl = "urn:uuid:condition-story-z370"
* entry[condition][=].resource = Condition-Story-LivebornSingle
* entry[observation][+].fullUrl = "urn:uuid:observation-story-gravidity"
* entry[observation][=].resource = Observation-Story-Gravidity
* entry[observation][+].fullUrl = "urn:uuid:observation-story-parity"
* entry[observation][=].resource = Observation-Story-Parity
* entry[observation][+].fullUrl = "urn:uuid:observation-story-multiple-pregnancy"
* entry[observation][=].resource = Observation-Story-MultiplePregnancy
* entry[observation][+].fullUrl = "urn:uuid:observation-story-gest-age"
* entry[observation][=].resource = Observation-Story-GestAgeAtDelivery
* entry[observation][+].fullUrl = "urn:uuid:observation-story-birth-weight"
* entry[observation][=].resource = Observation-Story-BirthWeight
* entry[observation][+].fullUrl = "urn:uuid:observation-story-birth-length"
* entry[observation][=].resource = Observation-Story-BirthLength
* entry[observation][+].fullUrl = "urn:uuid:observation-story-uz"
* entry[observation][=].resource = Observation-Story-UZ
* entry[observation][+].fullUrl = "urn:uuid:observation-story-blood-group"
* entry[observation][=].resource = Observation-Story-BloodGroup
* entry[medication][+].fullUrl = "urn:uuid:medication-story-dopegyt"
* entry[medication][=].resource = Medication-Story-Dopegyt
* entry[medication][+].fullUrl = "urn:uuid:medication-story-fraxiparine"
* entry[medication][=].resource = Medication-Story-Fraxiparine
* entry[medication][+].fullUrl = "urn:uuid:medication-story-lidocaine-egis"
* entry[medication][=].resource = Medication-Story-LidocaineEgis
* entry[medication][+].fullUrl = "urn:uuid:medication-story-ofost"
* entry[medication][=].resource = Medication-Story-Ofost
* entry[medication][+].fullUrl = "urn:uuid:medication-story-prostin-e2"
* entry[medication][=].resource = Medication-Story-ProstinE2
* entry[medicationRequest][+].fullUrl = "urn:uuid:medicationrequest-story-dopegyt-discharge"
* entry[medicationRequest][=].resource = MedicationRequest-Story-Dopegyt-Discharge
* entry[medicationRequest][+].fullUrl = "urn:uuid:medicationrequest-story-fraxiparine-discharge"
* entry[medicationRequest][=].resource = MedicationRequest-Story-Fraxiparine-Discharge
* entry[practitioner][+].fullUrl = "urn:uuid:practitioner-cerna-raketa"
* entry[practitioner][=].resource = Practitioner-Cerna-Raketa
* entry[practitioner][+].fullUrl = "urn:uuid:practitioner-bila-palka"
* entry[practitioner][=].resource = Practitioner-Bila-Palka
* entry[practitioner][+].fullUrl = "urn:uuid:practitioner-novakovajana-gp"
* entry[practitioner][=].resource = Practitioner-NovakovaJana-GP
* entry[practitioner][+].fullUrl = "urn:uuid:practitioner-novakovajana-gyn"
* entry[practitioner][=].resource = Practitioner-NovakovaJana-GYN
* entry[practitionerRole][+].fullUrl = "urn:uuid:practitionerrole-novakovajana-gp"
* entry[practitionerRole][=].resource = PractitionerRole-NovakovaJana-GP
* entry[practitionerRole][+].fullUrl = "urn:uuid:practitionerrole-novakovajana-gyn"
* entry[practitionerRole][=].resource = PractitionerRole-NovakovaJana-GYN
* entry[organization][+].fullUrl = "urn:uuid:organization-prostejov-hospital"
* entry[organization][=].resource = Organization-Prostejov-Hospital
* entry[organization][+].fullUrl = "urn:uuid:organization-prostejov-maternity"
* entry[organization][=].resource = Organization-Prostejov-Maternity
* entry[organization][+].fullUrl = "urn:uuid:organization-payer-111-story"
* entry[organization][=].resource = Organization-Payer-111-Story
* entry[organization][+].fullUrl = "urn:uuid:registering-provider-example"
* entry[organization][=].resource = RegisteringProviderExample
* entry[organization][+].fullUrl = "urn:uuid:registering-provider-example-gynecology"
* entry[organization][=].resource = RegisteringProviderExample-gynecology
* entry[device][+].fullUrl = "urn:uuid:device-story-samsung-r7"
* entry[device][=].resource = Device-Story-SamsungR7


