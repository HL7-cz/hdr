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
* partOf = Reference("urn:uuid:organization-prostejov-hospital")

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
* link[+].other = Reference("urn:uuid:patient-story-mother")
* link[=].type = #seealso

Instance: Coverage-Story-Mother
InstanceOf: CZ_Coverage
Usage: #example
Description: "Coverage of the mother for payer 111."
* id = "coverage-story-mother"
* status = #active
* beneficiary = Reference("urn:uuid:patient-story-mother")
* payor[+] = Reference("urn:uuid:organization-payer-111-story")
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
* class.display = "lÄąĹ»ÄąÄľkovÄ‚Ëť kontakt"
* subject = Reference("urn:uuid:patient-story-mother")
* period.start = "2026-03-03T05:22:00+01:00"
* period.end = "2026-03-04T18:41:00+01:00"
* serviceProvider = Reference("urn:uuid:organization-prostejov-maternity")
* participant[admitter][0].individual = Reference("urn:uuid:practitioner-cerna-raketa")
* participant[discharger][0].individual = Reference("urn:uuid:practitioner-bila-palka")
* hospitalization.dischargeDisposition.coding[0].system = $discharge-disposition
* hospitalization.dischargeDisposition.coding[0].code = #home
* hospitalization.dischargeDisposition.coding[0].display = "DomÄąĹ»"

Instance: Procedure-Story-DeliveryMethod
InstanceOf: CZ_ProcedureMethodOfDelivery
Usage: #example
Description: "Induced vaginal delivery in week 40+2."
* id = "procedure-story-delivery-method"
* status = #completed
* code = $sct#22640007 "VaginÄ‚Ë‡lnÄ‚Â­ porod"
* subject = Reference("urn:uuid:patient-story-mother")
* performedDateTime = "2026-03-03T17:13:00+01:00"
* performer.actor = Reference("urn:uuid:practitioner-cerna-raketa")

Instance: Procedure-Story-Induction
InstanceOf: CZ_ProcedureInductionOfLabor
Usage: #example
Description: "Labor induction by Prostin E2 due to labor stagnation."
* id = "procedure-story-induction"
* status = #completed
* code = $sct#398307005 "Indukce porodu"
* subject = Reference("urn:uuid:patient-story-mother")
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
* subject = Reference("urn:uuid:patient-story-mother")

Instance: Condition-Story-GestHypertension
InstanceOf: CZ_ConditionHdr
Usage: #example
Description: "Gestational hypertension from week 38."
* id = "condition-story-o13"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* code = $MKN10#O13 "GestaĂ„Ĺ¤nÄ‚Â­ (vyvolanÄ‚Ë‡ tĂ„â€şhotenstvÄ‚Â­m) hypertenze"
* subject = Reference("urn:uuid:patient-story-mother")

Instance: Condition-Story-GDM
InstanceOf: CZ_ConditionHdr
Usage: #example
Description: "Gestational diabetes mellitus."
* id = "condition-story-o244"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* code = $MKN10#O244 "Diabetes mellitus vzniklÄ‚Ëť v tĂ„â€şhotenstvÄ‚Â­"
* subject = Reference("urn:uuid:patient-story-mother")

Instance: Condition-Story-CordAroundNeck
InstanceOf: CZ_ConditionHdr
Usage: #example
Description: "Delivery complicated by cord around neck."
* id = "condition-story-o691"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* code = $MKN10#O691 "Porod komplikovanÄ‚Ëť pupeĂ„Ĺ¤nÄ‚Â­kem kolem krku s kompresÄ‚Â­"
* subject = Reference("urn:uuid:patient-story-mother")

Instance: Condition-Story-PerinealTear
InstanceOf: CZ_ConditionHdr
Usage: #example
Description: "First degree perineal tear during delivery, sutured."
* id = "condition-story-o700"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* code = $MKN10#O700 "Trhlina hrÄ‚Ë‡ze prvnÄ‚Â­ho stupnĂ„â€ş pÄąâ„˘i porodu"
* subject = Reference("urn:uuid:patient-story-mother")
* onsetDateTime = "2026-03-03T17:13:00+01:00"

Instance: Condition-Story-LivebornSingle
InstanceOf: CZ_ConditionHdr
Usage: #example
Description: "Single liveborn infant."
* id = "condition-story-z370"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* code = $MKN10#Z370 "JedinÄ‚Â© dÄ‚Â­tĂ„â€ş, ÄąÄľivĂ„â€ş narozenÄ‚Â©"
* subject = Reference("urn:uuid:patient-story-mother")

Instance: Observation-Story-Gravidity
InstanceOf: CZ_ObservationGravidity
Usage: #example
Description: "Gravidity IV."
* id = "observation-story-gravidity"
* status = #final
* subject = Reference("urn:uuid:patient-story-mother")
* effectiveDateTime = "2026-03-03T10:00:00+01:00"
* valueInteger = 4

Instance: Observation-Story-Parity
InstanceOf: CZ_ObservationParity
Usage: #example
Description: "Parity II."
* id = "observation-story-parity"
* status = #final
* subject = Reference("urn:uuid:patient-story-mother")
* effectiveDateTime = "2026-03-03T10:00:00+01:00"
* valueInteger = 2

Instance: Observation-Story-MultiplePregnancy
InstanceOf: CZ_ObservationMultiplePregnancy
Usage: #example
Description: "Singleton pregnancy."
* id = "observation-story-multiple-pregnancy"
* status = #final
* subject = Reference("urn:uuid:patient-story-mother")
* effectiveDateTime = "2026-03-03T10:00:00+01:00"
* valueBoolean = false
* component.valueInteger = 1

Instance: Observation-Story-GestAgeAtDelivery
InstanceOf: Observation
Usage: #example
Description: "Gestational age at delivery 40+2."
* id = "observation-story-gest-age"
* status = #final
* code = $loinc#76516-4 "GestaĂ„Ĺ¤nÄ‚Â­ stÄ‚Ë‡Äąâ„˘Ä‚Â­ pÄąâ„˘i porodu"
* subject = Reference("urn:uuid:patient-story-mother")
* effectiveDateTime = "2026-03-03T17:13:00+01:00"
* valueString = "40+2"

Instance: Observation-Story-BirthWeight
InstanceOf: CZ_ObservationBirthWeight
Usage: #example
Description: "Newborn birth weight."
* id = "observation-story-birth-weight"
* subject = Reference("urn:uuid:patient-story-newborn")
* valueQuantity = 3200 'g' "g"

Instance: Observation-Story-BirthLength
InstanceOf: CZ_ObservationBirthLength
Usage: #example
Description: "Newborn birth length."
* id = "observation-story-birth-length"
* subject = Reference("urn:uuid:patient-story-newborn")
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
* patient = Reference("urn:uuid:patient-story-mother")
* reaction[0].manifestation[0].coding[0].system = $sct
* reaction[0].manifestation[0].coding[0].code = #404640003
* reaction[0].manifestation[0].coding[0].display = "ZÄ‚Ë‡vraÄąÄ„"
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
* patient = Reference("urn:uuid:patient-story-mother")

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
* medicationReference = Reference("urn:uuid:medication-story-dopegyt")
* subject = Reference("urn:uuid:patient-story-mother")
* encounter = Reference("urn:uuid:encounter-story-delivery")
* authoredOn = "2026-03-04T18:31:00+01:00"
* requester = Reference("urn:uuid:practitioner-bila-palka")
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
* medicationReference = Reference("urn:uuid:medication-story-fraxiparine")
* subject = Reference("urn:uuid:patient-story-mother")
* encounter = Reference("urn:uuid:encounter-story-delivery")
* authoredOn = "2026-03-04T18:31:00+01:00"
* requester = Reference("urn:uuid:practitioner-bila-palka")
* dosageInstruction[0].text = "0,6 ml s.c. 1x denne v 18:00 do 10.03.2026 vcetne."
* dispenseRequest.quantity.value = 7
* dispenseRequest.quantity.unit = "dĂˇvka"
* substitution.allowedCodeableConcept.text = "Substituce nepovolena"

Instance: Device-Story-SamsungR7
InstanceOf: CZ_MedicalDevice
Usage: #example
Description: "Ultrasound device used for obstetric examination."
* id = "device-story-samsung-r7"
* manufacturer = "Samsung"
* modelNumber = "R7"
* type = $sct#706171005 "Ultrasound imaging system"
* patient = Reference("urn:uuid:patient-story-mother")

Instance: Observation-Story-UZ
InstanceOf: Observation
Usage: #example
Description: "Obstetric ultrasound finding recorded during admission."
* id = "observation-story-uz"
* status = #final
* category = $observation-category#imaging
* code = $sct#169238002 "Obstetric ultrasound scan"
* subject = Reference("urn:uuid:patient-story-mother")
* effectiveDateTime = "2026-03-02T10:00:00+01:00"
* device = Reference("urn:uuid:device-story-samsung-r7")
* valueString = "UZ: PPH, postavenĂ­ II pĹ™ednĂ­, ASP+, PP+, placenta na zadnĂ­ stÄ›nÄ› mimo DS, pĹ™Ă­datnĂ˝ lalok i na pĹ™ednĂ­ stÄ›nÄ›, bez znĂˇmek patologie plodovĂ© vody, normohydramnion, EFW 3480 g proporÄŤnÄ›."

Instance: Observation-Story-BloodGroup
InstanceOf: CZ_ObservationResultLaboratory
Usage: #example
Description: "Maternal blood group test."
* id = "observation-story-blood-group"
* status = #final
* category[laboratory] = $observation-category#laboratory
* category[studyType] = $loinc#26436-6 "Laboratory studies (set)"
* code = $nclp#15961 "AB0 a RhD krevní skupina"
* subject = Reference("urn:uuid:patient-story-mother")
* effectiveDateTime = "2026-03-03T06:10:00+01:00"
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
* author[0] = Reference("urn:uuid:practitioner-bila-palka")
* subject = Reference("urn:uuid:patient-story-mother")
* encounter = Reference("urn:uuid:encounter-story-delivery")
* extension[information-recipient][+].valueReference = Reference("urn:uuid:practitioner-novakovajana-gp")
* extension[information-recipient][+].valueReference = Reference("urn:uuid:practitioner-novakovajana-gyn")

* section[sectionAdmissionEvaluation].title = "PĹ™Ă­jmovĂ© vyĹˇetĹ™enĂ­"
* section[sectionAdmissionEvaluation].code = $loinc#67851-6 "PĹ™Ă­jmovĂ© vyĹˇetĹ™enĂ­"
* section[sectionAdmissionEvaluation].text.status = #additional
* section[sectionAdmissionEvaluation].text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><p>PĹ™ijata pro zesilujĂ­cĂ­ dÄ›loĹľnĂ­ kontrakce.</p><p>SubjektivnÄ›: cĂ­tĂ­ se dobĹ™e, pohyby plodu cĂ­tĂ­, cefaleu neguje, epigastrickou bolest neguje, vizus v normÄ›, otoky prstĹŻ hornĂ­ch i dolnĂ­ch konÄŤetin, bez krvĂˇcenĂ­.</p><p>ObjektivnÄ›: PPH, hlava nalĂ©hĂˇ, branka 5 cm, hmatnĂ˝ VB, kontrakce Ăˇ 5 min.</p><p>KTG: fyziologickĂ˝ zĂˇznam, akcelerace pĹ™Ă­tomny, bez deceleracĂ­, oscilace undulatornĂ­.</p><p>UZ bĹ™icha (Samsung R7, 02.03.): PPH, postavenĂ­ II pĹ™ednĂ­, ASP+, PP+, placenta na zadnĂ­ stÄ›nÄ› mimo DS, pĹ™Ă­datnĂ˝ lalok i na pĹ™ednĂ­ stÄ›nÄ›, bez znĂˇmek patologie plodovĂ© vody, normohydramnion. EFW 01.03.2026: 3480 g, proporÄŤnĂ­ rĹŻst.</p><p>ZĂˇvÄ›r: gravidita 40+2 dle UZ, IV/II, GBS pozitivnĂ­, GDM na dietÄ›, gestaÄŤnĂ­ hypertenze na Dopegytu 1-0-1.</p><p>DoporuÄŤenĂ­ pĹ™i pĹ™Ă­jmu: s ohledem na GBS pozitivitu doporuÄŤena antibiotickĂˇ profylaxe, dĂˇle pĹ™Ă­prava k porodu, spontĂˇnnĂ­ vedenĂ­ porodu, KTG Ăˇ 3 hod, OP Ăˇ 30 min, TK Ăˇ 3 hod.</p></div>"""
* section[sectionAdmissionEvaluation].section[sectionPhysicalExamination].code = $sct#425044008 "Physical exam section (record artifact)"
* section[sectionAdmissionEvaluation].section[sectionPhysicalExamination].text.status = #additional
* section[sectionAdmissionEvaluation].section[sectionPhysicalExamination].text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><p>SouÄŤĂˇstĂ­ pĹ™Ă­jmovĂ©ho vyĹˇetĹ™enĂ­ bylo i UZ vyĹˇetĹ™enĂ­ na pĹ™Ă­stroji Samsung R7. Doplneno laboratorni vysetreni krevni skupiny: 0 RhD pozitivni.</p></div>"""
* section[sectionAdmissionEvaluation].section[sectionPhysicalExamination].entry[+] = Reference("urn:uuid:observation-story-uz")
* section[sectionAdmissionEvaluation].section[sectionPhysicalExamination].entry[+] = Reference("urn:uuid:observation-story-blood-group")
* section[sectionHospitalCourse].title = "Prubeh hospitalizace"
* section[sectionHospitalCourse].code = $loinc#8648-8 "PrÄąĹ»bĂ„â€şh hospitalizace"
* section[sectionHospitalCourse].text.status = #additional
* section[sectionHospitalCourse].text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><p>Hospitalizace od 03.03.2026 05:22 do 04.03.2026 18:41. Prijata pro pravidelne kontrakce a 5 minut. Pro stagnaci porodnickeho nalezu byla provedena indukce porodu Prostin E2. Poporodni prubeh bez komplikaci.</p></div>"""

* section[sectionHospitalCourse].section[sectionDelivery].title = "Porod"
* section[sectionHospitalCourse].section[sectionDelivery].code = $loinc#57074-7 "ZÄ‚Ë‡znam o porodu"
* section[sectionHospitalCourse].section[sectionDelivery].text.status = #additional
* section[sectionHospitalCourse].section[sectionDelivery].text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><p>PorodnickÄ‚Ëť prÄąĹ»bĂ„â€şh: pÄąâ„˘ijata pro pravidelnÄ‚Â© kontrakce Ä‚Ë‡ 5 minut v gestaĂ„Ĺ¤nÄ‚Â­m stÄ‚Ë‡Äąâ„˘Ä‚Â­ 40+2. Pro stagnaci porodnickÄ‚Â©ho nÄ‚Ë‡lezu byla zahÄ‚Ë‡jena indukce porodu Prostin E2.</p><p>Porod dne 03.03.2026 v 17:13, spontÄ‚Ë‡nnĂ„â€ş zÄ‚Ë‡hlavÄ‚Â­m. BĂ„â€şhem porodu pupeĂ„Ĺ¤nÄ‚Â­k 1x kolem krku s kompresÄ‚Â­.</p><p>PorodnÄ‚Â­ poranĂ„â€şnÄ‚Â­: ruptura perinea I. stupnĂ„â€ş, oÄąË‡etÄąâ„˘eno suturou. OdhadovanÄ‚Ë‡ krevnÄ‚Â­ ztrÄ‚Ë‡ta 250 ml.</p><p>Novorozenec: chlapec, ÄąÄľivĂ„â€ş narozenÄ‚Ëť, porodnÄ‚Â­ hmotnost 3200 g.</p><p>Souvislosti: GBS pozitivita, gestaĂ„Ĺ¤nÄ‚Â­ hypertenze (Dopegyt), gestaĂ„Ĺ¤nÄ‚Â­ diabetes na dietĂ„â€ş.</p></div>"""
* section[sectionHospitalCourse].section[sectionDelivery].entry[deliveryProcedure][+] = Reference("urn:uuid:procedure-story-delivery-method")
* section[sectionHospitalCourse].section[sectionDelivery].entry[inductionProcedure][+] = Reference("urn:uuid:procedure-story-induction")
* section[sectionHospitalCourse].section[sectionDelivery].entry[birthInjury][+] = Reference("urn:uuid:condition-story-o700")
* section[sectionHospitalCourse].section[sectionDelivery].entry[birthWeight][+] = Reference("urn:uuid:observation-story-birth-weight")
* section[sectionHospitalCourse].section[sectionDelivery].entry[birthLength][+] = Reference("urn:uuid:observation-story-birth-length")
* section[sectionHospitalCourse].section[sectionDelivery].entry[deliveryObservation][+] = Reference("urn:uuid:observation-story-gest-age")
* section[sectionHospitalCourse].section[sectionDelivery].entry[newborn][+] = Reference("urn:uuid:patient-story-newborn")
* section[sectionHospitalCourse].section[sectionDelivery].entry[+] = Reference("urn:uuid:condition-story-o691")
* section[sectionHospitalCourse].section[sectionDelivery].entry[+] = Reference("urn:uuid:condition-story-z370")

* section[sectionPatientHx].title = "Anamneza"
* section[sectionPatientHx].code = $loinc#35090-0 "AnamnestickÄ‚Ë‡ poznÄ‚Ë‡mka"
* section[sectionPatientHx].text.status = #additional
* section[sectionPatientHx].text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><p>AnamnÄ‚Â©za strukturovÄ‚Ë‡na: RA, OA, FA, AA, GA, FF, abÄ‚Ĺźzus, SA+PA. OA: bez trvalÄ‚Â© lÄ‚Â©Ă„Ĺ¤by mimo graviditu, nynÄ‚Â­ GDM dieta (takÄ‚Â© ve II. graviditĂ„â€ş), TEN 0, Ä‚Ĺźrazy 0, operace 0, transfuze 0, epidemiologickÄ‚Ë‡ anamnÄ‚Â©za bez oĂ„Ĺ¤kovÄ‚Ë‡nÄ‚Â­ proti RSV. FA: aktuÄ‚Ë‡lnĂ„â€ş dlouhodobĂ„â€ş Dopegyt. FF: moĂ„Ĺ¤enÄ‚Â­ i stolice v poÄąâ„˘Ä‚Ë‡dku.</p></div>"""
* section[sectionPatientHx].section[sectionFamilyHistory].title = "RodinnÄ‚Ë‡ anamnÄ‚Â©za"
* section[sectionPatientHx].section[sectionFamilyHistory].code = $loinc#10157-6 "RodinnÄ‚Ë‡ anamnÄ‚Â©za"
* section[sectionPatientHx].section[sectionFamilyHistory].text.status = #additional
* section[sectionPatientHx].section[sectionFamilyHistory].text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><p>RA: matka karcinom prsu v 57 letech, hypertenze a onemocnĂ„â€şnÄ‚Â­ ÄąË‡tÄ‚Â­tnÄ‚Â© ÄąÄľlÄ‚Ë‡zy; bratÄąâ„˘i hypertenze; sestra hypotyreÄ‚Ĺ‚za; prarodiĂ„Ĺ¤e diabetes mellitus; dĂ„â€şdeĂ„Ĺ¤ek leukemie.</p></div>"""
* section[sectionPatientHx].section[sectionPregnancyHx].title = "Tehotenska anamneza"
* section[sectionPatientHx].section[sectionPregnancyHx].code = $loinc#10162-6 "TĂ„â€şhotenskÄ‚Ë‡ anamnÄ‚Â©za"
* section[sectionPatientHx].section[sectionPregnancyHx].text.status = #additional
* section[sectionPatientHx].section[sectionPregnancyHx].text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><p>GA: gravidita spontÄ‚Ë‡nnÄ‚Â­. Gravidita/parita IV/II, gestaĂ„Ĺ¤nÄ‚Â­ stÄ‚Ë‡Äąâ„˘Ä‚Â­ pÄąâ„˘i porodu 40+2, singleton gravidita. PÄąâ„˘edchozÄ‚Â­ porody: 05/2016 spontÄ‚Ë‡nnÄ‚Â­ porod zÄ‚Ë‡hlavÄ‚Â­m, chlapec 3800 g, epiziotomie a infekce poranĂ„â€şnÄ‚Â­ v ÄąË‡estinedĂ„â€şlÄ‚Â­; 02/2019 spontÄ‚Ë‡nnÄ‚Â­ porod zÄ‚Ë‡hlavÄ‚Â­m 3740 g bez komplikacÄ‚Â­. Abortus: 01/2022 spontÄ‚Ë‡nnÄ‚Â­ abortus completus. UUT: 0. MenarchÄ‚Â© v 11 letech, cyklus nepravidelnÄ‚Ëť, gynekologickÄ‚Â© operace ne.</p></div>"""
* section[sectionPatientHx].section[sectionPregnancyHx].entry[+] = Reference("urn:uuid:condition-story-primary")
* section[sectionPatientHx].section[sectionPregnancyHx].entry[gestationalAge][+] = Reference("urn:uuid:observation-story-gest-age")
* section[sectionPatientHx].section[sectionPregnancyHx].entry[+] = Reference("urn:uuid:observation-story-gravidity")
* section[sectionPatientHx].section[sectionPregnancyHx].entry[+] = Reference("urn:uuid:observation-story-parity")
* section[sectionPatientHx].section[sectionPregnancyHx].entry[+] = Reference("urn:uuid:observation-story-multiple-pregnancy")
* section[sectionPatientHx].section[sectionSocialHistory].title = "SociÄ‚Ë‡lnÄ‚Â­ a pracovnÄ‚Â­ anamnÄ‚Â©za"
* section[sectionPatientHx].section[sectionSocialHistory].code = $loinc#29762-2 "SociÄ‚Ë‡lnÄ‚Â­ anamnÄ‚Â©za"
* section[sectionPatientHx].section[sectionSocialHistory].text.status = #additional
* section[sectionPatientHx].section[sectionSocialHistory].text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><p>SA+PA: bydlÄ‚Â­ s manÄąÄľelem, na mateÄąâ„˘skÄ‚Â© dovolenÄ‚Â©, povolÄ‚Ë‡nÄ‚Â­m lÄ‚Â©kÄ‚Ë‡rnice. AbÄ‚Ĺźzus: nekuÄąâ„˘aĂ„Ĺ¤ka, alkohol nepije.</p></div>"""
* section[sectionPatientHx].section[sectionInfectiousContacts].title = "EpidemiologickÄ‚Ë‡ anamnÄ‚Â©za"
* section[sectionPatientHx].section[sectionInfectiousContacts].code = TemporaryHDRSystem#infection-contact "InfekĂ„Ĺ¤nÄ‚Â­ kontakty"
* section[sectionPatientHx].section[sectionInfectiousContacts].text.status = #additional
* section[sectionPatientHx].section[sectionInfectiousContacts].text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><p>EpidemiologickÄ‚Ë‡ anamnÄ‚Â©za: bez vÄ‚ËťznamnÄ‚Ëťch rizikovÄ‚Ëťch kontaktÄąĹ», proti RSV neoĂ„Ĺ¤kovÄ‚Ë‡na.</p></div>"""
* section[sectionPatientHx].section[sectionSubstanceUse].title = "UÄąÄľÄ‚Â­vÄ‚Ë‡nÄ‚Â­ nÄ‚Ë‡vykovÄ‚Ëťch lÄ‚Ë‡tek"
* section[sectionPatientHx].section[sectionSubstanceUse].code = TemporaryHDRSystem#substance-use "UÄąÄľÄ‚Â­vÄ‚Ë‡nÄ‚Â­ nÄ‚Ë‡vykovÄ‚Ëťch lÄ‚Ë‡tek"
* section[sectionPatientHx].section[sectionSubstanceUse].text.status = #additional
* section[sectionPatientHx].section[sectionSubstanceUse].text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><p>NekouÄąâ„˘Ä‚Â­, alkohol nepije, drogy neudÄ‚Ë‡vÄ‚Ë‡.</p></div>"""

* section[sectionAllergies].title = "Alergie, intolerance a varovani"
* section[sectionAllergies].code = $loinc#48765-2 "Alergie a neÄąÄľÄ‚Ë‡doucÄ‚Â­ reakce"
* section[sectionAllergies].text.status = #additional
* section[sectionAllergies].text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><p>AA: alergie neovĂ„â€şÄąâ„˘eny - trÄ‚Ë‡vy, prach, pyl, Zinnat (vertigo).</p></div>"""
* section[sectionAllergies].entry[allergyIntolerance][+] = Reference("urn:uuid:allergy-story-environmental")
* section[sectionAllergies].entry[allergyIntolerance][+] = Reference("urn:uuid:allergy-story-zinnat")

* section[sectionPharmacotherapy].title = "Pharmacotherapy"
* section[sectionPharmacotherapy].code = $loinc#87232-5 "StruĂ„Ĺ¤nÄ‚Ëť pÄąâ„˘ehled podanÄ‚Ëťch lÄ‚Â©Ă„Ĺ¤iv"
* section[sectionPharmacotherapy].text.status = #additional
* section[sectionPharmacotherapy].text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><p>Behem hospitalizace podany Dopegyt, Fraxiparine, Lidocaine, OFOST, Prostin E2. Pri propusteni doporucen Dopegyt 1-0-1 a LMWH profylaxe do 10.03.2026 vcetne.</p></div>"""
* section[sectionPharmacotherapy].entry[+] = Reference("urn:uuid:medication-story-dopegyt")
* section[sectionPharmacotherapy].entry[+] = Reference("urn:uuid:medication-story-fraxiparine")
* section[sectionPharmacotherapy].entry[+] = Reference("urn:uuid:medication-story-lidocaine-egis")
* section[sectionPharmacotherapy].entry[+] = Reference("urn:uuid:medication-story-ofost")
* section[sectionPharmacotherapy].entry[+] = Reference("urn:uuid:medication-story-prostin-e2")

* section[sectionDischargeMedications].title = "Hospital discharge medications"
* section[sectionDischargeMedications].code = $loinc#75311-1 "Hospital discharge medications"
* section[sectionDischargeMedications].text.status = #additional
* section[sectionDischargeMedications].text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><p>Doporucena medikace pri propusteni: Dopegyt 1-0-1 a Fraxiparine 0,6 ml s.c. 1x denne do 10.03.2026 vcetne.</p></div>"""
* section[sectionDischargeMedications].entry[+] = Reference("urn:uuid:medicationrequest-story-dopegyt-discharge")
* section[sectionDischargeMedications].entry[+] = Reference("urn:uuid:medicationrequest-story-fraxiparine-discharge")

* section[sectionPayers].title = "Health insurance and payment information"
* section[sectionPayers].code = $loinc#48768-6 "Informace o plÄ‚Ë‡tci pÄ‚Â©Ă„Ĺ¤e"
* section[sectionPayers].text.status = #additional
* section[sectionPayers].text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><p>Payer: 111 (VZP).</p></div>"""
* section[sectionPayers].entry[+] = Reference("urn:uuid:coverage-story-mother")

* section[sectionPlanOfCare].title = "Plan of care"
* section[sectionPlanOfCare].code = $loinc#18776-5 "LÄ‚Â©Ă„Ĺ¤ebnÄ‚Ëť plÄ‚Ë‡n"
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


