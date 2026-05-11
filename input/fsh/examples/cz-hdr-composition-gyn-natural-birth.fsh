Instance: DischargeComposition-Gyn-NaturalBirth
InstanceOf: CZ_CompositionHdr
Usage: #example
Description: "Příklad gynekologické propouštěcí zprávy po spontánním vaginálním porodu. / Example gynecology hospital discharge composition with spontaneous vaginal delivery."
* id = "6e9f3ec7-0a3c-4ee4-a2f2-a9c6ad91d001"
* status = #final
* type = $loinc#34105-7 "Hospital Discharge summary"
* title = "Gynekologická propouštěcí zpráva - spontánní vaginální porod"
* date = "2025-05-18T12:30:00+02:00"
* author[0] = Reference(urn:uuid:1ec5e355-648f-42b9-a316-3f056fbd04b5)
* subject = Reference(Mracena2)
* encounter = Reference(CZ-Encounter-HDR-Example)
* extension[presentedForm].valueAttachment = cz-pdfgynnatural-example

* section[sectionHospitalCourse].title = "Průběh hospitalizace"
* section[sectionHospitalCourse].code = $loinc#8648-8 "Hospital course note"
* section[sectionHospitalCourse].text.status = #additional
* section[sectionHospitalCourse].text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><p>Hospitalizace pro spontánně proběhlý porod v termínu, bez závažných komplikací.</p></div>"""

* section[sectionHospitalCourse].section[sectionDelivery].title = "Porod"
* section[sectionHospitalCourse].section[sectionDelivery].code = $loinc#57074-7 "Labor and delivery process Narrative"
* section[sectionHospitalCourse].section[sectionDelivery].text.status = #additional
* section[sectionHospitalCourse].section[sectionDelivery].text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><p>Porod dne 18.05.2025 v 10:46, spontánní vaginální, novorozenec mužského pohlaví, 3210 g, 49 cm, Apgar 10-10-10.</p></div>"""
* section[sectionHospitalCourse].section[sectionDelivery].entry[+] = Reference(GynNaturalBirth-DeliveryMethod)
* section[sectionHospitalCourse].section[sectionDelivery].entry[+] = Reference(GynNaturalBirth-FetalPresentation)
* section[sectionHospitalCourse].section[sectionDelivery].entry[+] = Reference(GynNaturalBirth-BirthWeight)
* section[sectionHospitalCourse].section[sectionDelivery].entry[+] = Reference(GynNaturalBirth-BirthLength)
* section[sectionHospitalCourse].section[sectionDelivery].entry[apgarScore][+] = Reference(GynNaturalBirth-Apgar1)
* section[sectionHospitalCourse].section[sectionDelivery].entry[apgarScore][+] = Reference(GynNaturalBirth-Apgar5)
* section[sectionHospitalCourse].section[sectionDelivery].entry[apgarScore][+] = Reference(GynNaturalBirth-Apgar10)
* section[sectionHospitalCourse].section[sectionDelivery].entry[+] = Reference(Patient-Novak-Petr)

* section[sectionPatientHx].title = "Anamnéza"
* section[sectionPatientHx].code = $loinc#35090-0 "Patient history"
* section[sectionPatientHx].text.status = #additional
* section[sectionPatientHx].text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><p>Gynekologická anamnéza: gravidita/parita 2/2, gestační stáří při porodu 39+6.</p></div>"""

* section[sectionPatientHx].section[sectionPregnancyHx].title = "Těhotenská anamnéza"
* section[sectionPatientHx].section[sectionPregnancyHx].code = $loinc#10162-6 "History of pregnancies Narrative"
* section[sectionPatientHx].section[sectionPregnancyHx].text.status = #additional
* section[sectionPatientHx].section[sectionPregnancyHx].text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><p>Gestační stáří 39+6, gravidita 2, parita 2, singleton gravidita.</p></div>"""
* section[sectionPatientHx].section[sectionPregnancyHx].entry[gestationalAge][+] = Reference(GynNaturalBirth-GestationalAgeAtDelivery)
* section[sectionPatientHx].section[sectionPregnancyHx].entry[+] = Reference(GynNaturalBirth-Gravidity)
* section[sectionPatientHx].section[sectionPregnancyHx].entry[+] = Reference(GynNaturalBirth-Parity)
* section[sectionPatientHx].section[sectionPregnancyHx].entry[+] = Reference(GynNaturalBirth-MultiplePregnancy)

Instance: GynNaturalBirth-DeliveryMethod
InstanceOf: CZ_ProcedureMethodOfDelivery
Usage: #example
Description: "Příklad způsobu vedení spontánního vaginálního porodu. / Example delivery method for spontaneous vaginal birth."
* status = #completed
* code = $sct#700000006 "Vaginal delivery of fetus"
* subject = Reference(Mracena2)
* performedDateTime = "2025-05-18T10:46:00+02:00"

Instance: GynNaturalBirth-FetalPresentation
InstanceOf: CZ_ObservationFetalPresentation
Usage: #example
Description: "Příklad observace naléhání plodu při porodu. / Example fetal presentation observation for the newborn."
* status = #final
* code = $loinc#57076-2 "Postpartum hospitalization treatment Narrative"
* subject = Reference(Mracena2)
* effectiveDateTime = "2025-05-18T10:46:00+02:00"
* valueCodeableConcept = $sct#70028003 "Vertex presentation"
* performer = Reference(urn:uuid:1ec5e355-648f-42b9-a316-3f056fbd04b5)

Instance: GynNaturalBirth-BirthWeight
InstanceOf: CZ_ObservationBirthWeight
Usage: #example
Description: "Příklad observace porodní hmotnosti novorozence. / Example newborn birth weight observation."
* subject = Reference(Patient-Novak-Petr)
* valueQuantity = 3210 'g' "g"
* effectiveDateTime = "2025-05-18T10:46:00+02:00"
* performer = Reference(urn:uuid:1ec5e355-648f-42b9-a316-3f056fbd04b5)

Instance: GynNaturalBirth-BirthLength
InstanceOf: CZ_ObservationBirthLength
Usage: #example
Description: "Příklad observace porodní délky novorozence. / Example newborn birth length observation."
* subject = Reference(Patient-Novak-Petr)
* valueQuantity = 49 'cm' "cm"
* effectiveDateTime = "2025-05-18T10:46:00+02:00"
* performer = Reference(urn:uuid:1ec5e355-648f-42b9-a316-3f056fbd04b5)

Instance: GynNaturalBirth-Gravidity
InstanceOf: CZ_ObservationGravidity
Usage: #example
Description: "Příklad observace gravidity matky. / Example maternal gravidity observation."
* status = #final
* subject = Reference(Mracena2)
* effectiveDateTime = "2025-05-18T10:46:00+02:00"
* valueInteger = 2
* performer = Reference(urn:uuid:1ec5e355-648f-42b9-a316-3f056fbd04b5)

Instance: GynNaturalBirth-Parity
InstanceOf: CZ_ObservationParity
Usage: #example
Description: "Příklad observace parity matky. / Example maternal parity observation."
* status = #final
* subject = Reference(Mracena2)
* effectiveDateTime = "2025-05-18T10:46:00+02:00"
* valueInteger = 2
* performer = Reference(urn:uuid:1ec5e355-648f-42b9-a316-3f056fbd04b5)

Instance: GynNaturalBirth-MultiplePregnancy
InstanceOf: CZ_ObservationMultiplePregnancy
Usage: #example
Description: "Příklad observace potvrzující jednoplodové těhotenství. / Example observation indicating singleton pregnancy."
* status = #final
* subject = Reference(Mracena2)
* effectiveDateTime = "2025-05-18T10:46:00+02:00"
* valueBoolean = false
* component.valueInteger = 1
* performer = Reference(urn:uuid:1ec5e355-648f-42b9-a316-3f056fbd04b5)

Instance: GynNaturalBirth-GestationalAgeAtDelivery
InstanceOf: CZ_ObservationGestationalAge
Usage: #example
Description: "Příklad observace gestačního stáří při porodu. / Example gestational age at delivery observation."
* status = #final
* subject = Reference(Mracena2)
* effectiveDateTime = "2025-05-18T10:46:00+02:00"
* valueString = "39+6"
* performer = Reference(urn:uuid:1ec5e355-648f-42b9-a316-3f056fbd04b5)

Instance: GynNaturalBirth-Apgar1
InstanceOf: CZ_ObservationApgarScore1Min
Usage: #example
Description: "Příklad APGAR skóre novorozence v 1. minutě. / Example APGAR score at 1 minute for the newborn."
* status = #final
* code = $loinc#9272-6 "1 minute Apgar Score"
* subject = Reference(Patient-Novak-Petr)
* effectiveDateTime = "2025-05-18T10:47:00+02:00"
* valueInteger = 10
* performer = Reference(urn:uuid:1ec5e355-648f-42b9-a316-3f056fbd04b5)

Instance: GynNaturalBirth-Apgar5
InstanceOf: CZ_ObservationApgarScore5Min
Usage: #example
Description: "Příklad APGAR skóre novorozence v 5. minutě. / Example APGAR score at 5 minutes for the newborn."
* status = #final
* subject = Reference(Patient-Novak-Petr)
* effectiveDateTime = "2025-05-18T10:51:00+02:00"
* valueInteger = 10
* performer = Reference(urn:uuid:1ec5e355-648f-42b9-a316-3f056fbd04b5)

Instance: GynNaturalBirth-Apgar10
InstanceOf: CZ_ObservationApgarScore10Min
Usage: #example
Description: "Příklad APGAR skóre novorozence v 10. minutě. / Example APGAR score at 10 minutes for the newborn."
* status = #final
* subject = Reference(Patient-Novak-Petr)
* effectiveDateTime = "2025-05-18T10:56:00+02:00"
* valueInteger = 10
* performer = Reference(urn:uuid:1ec5e355-648f-42b9-a316-3f056fbd04b5)

Instance: DischargeComposition-Novakova-Jana-NaturalBirth
InstanceOf: CZ_CompositionHdr
Usage: #example
Description: "Příklad gynekologické propouštěcí zprávy pro Janu Novákovou po spontánním vaginálním porodu. / Example gynecology hospital discharge composition for Jana Novakova with spontaneous vaginal delivery."
* id = "5e848ec9-b5bf-4c90-9d7e-6b0894208bfe"
* status = #final
* type = $loinc#34105-7 "Hospital Discharge summary"
* title = "Gynekologická propouštěcí zpráva - spontánní vaginální porod (Jana Nováková)"
* date = "2025-05-20T11:30:00+02:00"
* author[0] = Reference(urn:uuid:1ec5e355-648f-42b9-a316-3f056fbd04b5)
* subject = Reference(urn:uuid:6c4f4d2c-5f24-4a91-a75e-1b0e2a1f7731)
* encounter = Reference(urn:uuid:7d7a6f19-5dfb-45ee-8bcf-0f63d9fe49f2)
* extension[presentedForm].valueAttachment = cz-pdfgynnatural-example

* extension[information-recipient][+].valueReference = Reference(urn:uuid:b1e65698-2b43-481d-b8f4-7ff6d8e81ada)
* extension[information-recipient][+].valueReference = Reference(urn:uuid:7f2542b8-afe3-4a30-8f4f-c2f6fd2c2f85)

* section[sectionHospitalCourse].title = "Průběh hospitalizace"
* section[sectionHospitalCourse].code = $loinc#8648-8 "Hospital course note"
* section[sectionHospitalCourse].text.status = #additional
* section[sectionHospitalCourse].text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><p>Hospitalizace pro spontánní porod v termínu, bez závažných komplikací.</p></div>"""

* section[sectionHospitalCourse].section[sectionDelivery].title = "Porod"
* section[sectionHospitalCourse].section[sectionDelivery].code = $loinc#57074-7 "Labor and delivery process Narrative"
* section[sectionHospitalCourse].section[sectionDelivery].text.status = #additional
* section[sectionHospitalCourse].section[sectionDelivery].text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><p>Porod dne 18.05.2025 v 10:46, spontánní vaginální, bez indukce, analgezie EDA (ropivakain + fentanyl), novorozenec mužského pohlaví, 3210 g, 49 cm, Apgar 10-10-10. Mateřské poranění: epiziotomie mediolaterální.</p></div>"""
* section[sectionHospitalCourse].section[sectionDelivery].entry[+] = Reference(urn:uuid:9ac1fd24-6d6a-4d55-b6c0-5f8a6f2f5f31)
* section[sectionHospitalCourse].section[sectionDelivery].entry[+] = Reference(urn:uuid:4c00d8d9-2b0e-4f8f-82b5-9692eec6d3c1)
* section[sectionHospitalCourse].section[sectionDelivery].entry[+] = Reference(urn:uuid:3c2dd8f5-58b4-4cc2-a4d7-72ca2f1fbc18)
* section[sectionHospitalCourse].section[sectionDelivery].entry[+] = Reference(urn:uuid:cf6608f4-7e10-4c50-9a2a-78511d95b5be)
* section[sectionHospitalCourse].section[sectionDelivery].entry[+] = Reference(urn:uuid:8a6aa5a5-0f66-4c09-b4d0-e2ca7ab6450c)
* section[sectionHospitalCourse].section[sectionDelivery].entry[+] = Reference(urn:uuid:49f3de6d-5b80-47fe-84c0-560037fd14a7)
* section[sectionHospitalCourse].section[sectionDelivery].entry[apgarScore][+] = Reference(urn:uuid:8d0af4d9-f653-49db-a940-83af87f1da8f)
* section[sectionHospitalCourse].section[sectionDelivery].entry[apgarScore][+] = Reference(urn:uuid:24e6d365-6456-4916-81f6-4258e9cd3f5a)
* section[sectionHospitalCourse].section[sectionDelivery].entry[apgarScore][+] = Reference(urn:uuid:4ae1602e-6dff-4879-ad22-1ea0ef8cc58d)
* section[sectionHospitalCourse].section[sectionDelivery].entry[+] = Reference(urn:uuid:b7e6c8a1-4a8d-4d9f-8f69-df4f210cb2d7)

* section[sectionPatientHx].title = "Anamnéza"
* section[sectionPatientHx].code = $loinc#35090-0 "Patient history"
* section[sectionPatientHx].text.status = #additional
* section[sectionPatientHx].text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><p>Gynekologická anamnéza: prvorodička, gravidita/parita 1/1, gestační stáří při porodu 39+6.</p></div>"""
* section[sectionPatientHx].section[sectionPregnancyHx].title = "Těhotenská anamnéza"
* section[sectionPatientHx].section[sectionPregnancyHx].code = $loinc#10162-6 "History of pregnancies Narrative"
* section[sectionPatientHx].section[sectionPregnancyHx].text.status = #additional
* section[sectionPatientHx].section[sectionPregnancyHx].text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><p>Gestační stáří 39+6, prvorodička, gravidita 1, parita 1, singleton gravidita.</p></div>"""
* section[sectionPatientHx].section[sectionPregnancyHx].entry[gestationalAge][+] = Reference(urn:uuid:810c3a4f-c29d-4ce4-8ba0-a7cbbf37ef89)
* section[sectionPatientHx].section[sectionPregnancyHx].entry[+] = Reference(urn:uuid:9d0b2e3f-6e66-4dcb-a457-6d6108b1fb89)
* section[sectionPatientHx].section[sectionPregnancyHx].entry[+] = Reference(urn:uuid:11ab1738-4c81-4d40-8b7e-f0cda2c83ec3)
* section[sectionPatientHx].section[sectionPregnancyHx].entry[+] = Reference(urn:uuid:5b9a67e0-d8ed-4dd8-b690-3f61a804c6a4)

* section[sectionPayers].title = "Health insurance and payment information"
* section[sectionPayers].code = $loinc#48768-6 "Payment sources Document"
* section[sectionPayers].text.status = #additional
* section[sectionPayers].text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><p>Payer: 111 (VZP), insurance number: 9355181234.</p></div>"""
* section[sectionPayers].entry[+] = Reference(urn:uuid:8f9c2f14-1f69-4f2b-b4a8-8b7ca4db9f31)

* section[sectionPharmacotherapy].title = "Pharmacotherapy"
* section[sectionPharmacotherapy].code = $loinc#87232-5 "Medication administration.brief"
* section[sectionPharmacotherapy].text.status = #additional
* section[sectionPharmacotherapy].text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><p>Porodní analgezie: epidurální podání ropivakainu s malou dávkou fentanylu během porodu.</p></div>"""
* section[sectionPharmacotherapy].entry[+] = Reference(urn:uuid:6f97d842-5ce8-4631-b52e-0b79723c7e31)
* section[sectionPharmacotherapy].entry[+] = Reference(urn:uuid:0a98bc34-677a-4867-b903-461ac06939d5)

Instance: Medication-Ropivacaine-Epidural
InstanceOf: CZ_Medication
Usage: #example
Description: "Ropivakain použitý pro epidurální porodnickou analgezii. / Ropivacaine used for epidural labor analgesia."
* id = "65dff8dd-87a7-41cb-8a5a-d2b900098fb8"
* status = #active
* identifier[0].system = $dlp_lec_pripravky
* identifier[0].value = "0299001"
* code.coding[0].system = $dlp_lec_pripravky
* code.coding[0].code = #0242456
* code.coding[0].display = "Ropivacaine"
* code.text = "Ropivakain epiduralni roztok"

Instance: Medication-Fentanyl-Epidural
InstanceOf: CZ_Medication
Usage: #example
Description: "Fentanyl použitý jako adjuvans při epidurální porodnické analgezii. / Fentanyl used as adjuvant in epidural labor analgesia."
* id = "d9cdb566-b6f7-4c3a-96e1-9748c93a738b"
* status = #active
* identifier[0].system = $dlp_lec_pripravky
* identifier[0].value = "0299002"
* code.coding[0].system = $dlp_lec_pripravky
* code.coding[0].code = #0024845
* code.coding[0].display = "Fentanyl"
* code.text = "Fentanyl pro epiduralni analgezii"

Instance: MedicationStatement-Ropivacaine-Epidural-Jana
InstanceOf: CZ_MedicationStatement
Usage: #example
Description: "Epidurální podání ropivakainu během porodu. / Epidural administration of ropivacaine during labor."
* id = "6f97d842-5ce8-4631-b52e-0b79723c7e31"
* status = #completed
* identifier[0].system = $dlp_lec_pripravky
* identifier[0].value = "0299001"
* subject = Reference(urn:uuid:6c4f4d2c-5f24-4a91-a75e-1b0e2a1f7731)
* medicationReference = Reference(urn:uuid:65dff8dd-87a7-41cb-8a5a-d2b900098fb8)
* effectivePeriod.start = "2025-05-18T09:35:00+02:00"
* effectivePeriod.end = "2025-05-18T11:10:00+02:00"
* dosage[0].text = "Epidurální podání ropivakainu během porodu"
* dosage[0].route.coding[0].system = $sct
* dosage[0].route.coding[0].code = #47625008
* dosage[0].route.coding[0].display = "Intravenous route"
* category[0].coding[0].system = $medication-statement
* category[0].coding[0].code = #inpatient
* category[0].coding[0].display = "Inpatient"

Instance: MedicationStatement-Fentanyl-Epidural-Jana
InstanceOf: CZ_MedicationStatement
Usage: #example
Description: "Epidurální podání fentanylu jako adjuvans během porodnické analgezie. / Epidural fentanyl adjuvant during labor analgesia."
* id = "0a98bc34-677a-4867-b903-461ac06939d5"
* status = #completed
* identifier[0].system = $dlp_lec_pripravky
* identifier[0].value = "0299002"
* subject = Reference(urn:uuid:6c4f4d2c-5f24-4a91-a75e-1b0e2a1f7731)
* medicationReference = Reference(urn:uuid:d9cdb566-b6f7-4c3a-96e1-9748c93a738b)
* effectivePeriod.start = "2025-05-18T09:40:00+02:00"
* effectivePeriod.end = "2025-05-18T10:50:00+02:00"
* dosage[0].text = "Epidurální podání malé dávky fentanylu jako součást EDA"
* dosage[0].route.coding[0].system = $sct
* dosage[0].route.coding[0].code = #47625008
* dosage[0].route.coding[0].display = "Intravenous route"
* category[0].coding[0].system = $medication-statement
* category[0].coding[0].code = #inpatient
* category[0].coding[0].display = "Inpatient"

//Instance: MedicationAdministration-Ropivacaine-Epidural-Jana
//InstanceOf: MedicationAdministration
//Usage: #example
//Description: "Intrapartální epidurální podání ropivakainu. / Intrapartum epidural administration of ropivacaine."
//* id = "medadmin-ropivacaine-epidural-jana"
//* status = #completed
//* subject = Reference(urn:uuid:6c4f4d2c-5f24-4a91-a75e-1b0e2a1f7731)
//* context = Reference(HospitalEncounter-Novakova-Jana)
//* medicationReference = Reference(urn:uuid:65dff8dd-87a7-41cb-8a5a-d2b900098fb8)
//* effectivePeriod.start = "2025-05-18T09:35:00+02:00"
//* effectivePeriod.end = "2025-05-18T11:10:00+02:00"
//* dosage.route.coding[0].system = $sct
//* dosage.route.coding[0].code = #47625008
//* dosage.route.coding[0].display = "Intravenous route"
//* dosage.dose = 10 'mg' "mg"

//Instance: MedicationAdministration-Fentanyl-Epidural-Jana
//InstanceOf: MedicationAdministration
//Usage: #example
//Description: "Intrapartální epidurální podání fentanylu. / Intrapartum epidural administration of fentanyl."
//* id = "medadmin-fentanyl-epidural-jana"
//* status = #completed
//* subject = Reference(urn:uuid:6c4f4d2c-5f24-4a91-a75e-1b0e2a1f7731)
//* context = Reference(HospitalEncounter-Novakova-Jana)
//* medicationReference = Reference(urn:uuid:d9cdb566-b6f7-4c3a-96e1-9748c93a738b)
//* effectivePeriod.start = "2025-05-18T09:40:00+02:00"
//* effectivePeriod.end = "2025-05-18T10:50:00+02:00"
//* dosage.route.coding[0].system = $sct
//* dosage.route.coding[0].code = #47625008
//* dosage.route.coding[0].display = "Intravenous route"
//* dosage.dose = 0.05 'mg' "mg"

Instance: GynNaturalBirthJana-DeliveryMethod
InstanceOf: CZ_ProcedureMethodOfDelivery
Usage: #example
Description: "Příklad způsobu vedení spontánního vaginálního porodu u Jany Novákové. / Example delivery method for Jana Novakova spontaneous vaginal birth."
* id = "9ac1fd24-6d6a-4d55-b6c0-5f8a6f2f5f31"
* status = #completed
* code = $sct#700000006 "Vaginal delivery of fetus"
* subject = Reference(urn:uuid:6c4f4d2c-5f24-4a91-a75e-1b0e2a1f7731)
* performedDateTime = "2025-05-18T10:46:00+02:00"
* performer.actor = Reference(urn:uuid:1ec5e355-648f-42b9-a316-3f056fbd04b5)

Instance: GynNaturalBirthJana-FetalPresentation
InstanceOf: CZ_ObservationFetalPresentation
Usage: #example
Description: "Příklad observace naléhání plodu u novorozence Jany Novákové. / Example fetal presentation observation for Jana Novakova newborn."
* id = "4c00d8d9-2b0e-4f8f-82b5-9692eec6d3c1"
* status = #final
* code = $loinc#57076-2 "Postpartum hospitalization treatment Narrative"
* subject = Reference(urn:uuid:6c4f4d2c-5f24-4a91-a75e-1b0e2a1f7731)
* effectiveDateTime = "2025-05-18T10:46:00+02:00"
* valueCodeableConcept = $sct#70028003 "Vertex presentation"
* performer = Reference(urn:uuid:1ec5e355-648f-42b9-a316-3f056fbd04b5)

Instance: GynNaturalBirthJana-BirthWeight
InstanceOf: CZ_ObservationBirthWeight
Usage: #example
Description: "Příklad observace porodní hmotnosti novorozence v případě Jany Novákové. / Example newborn birth weight observation for Jana Novakova case."
* id = "3c2dd8f5-58b4-4cc2-a4d7-72ca2f1fbc18"
* subject = Reference(urn:uuid:b7e6c8a1-4a8d-4d9f-8f69-df4f210cb2d7)
* valueQuantity = 3210 'g' "g"
* effectiveDateTime = "2025-05-18T10:46:00+02:00"
* performer = Reference(urn:uuid:1ec5e355-648f-42b9-a316-3f056fbd04b5)

Instance: GynNaturalBirthJana-BirthLength
InstanceOf: CZ_ObservationBirthLength
Usage: #example
Description: "Příklad observace porodní délky novorozence v případě Jany Novákové. / Example newborn birth length observation for Jana Novakova case."
* id = "cf6608f4-7e10-4c50-9a2a-78511d95b5be"
* subject = Reference(urn:uuid:b7e6c8a1-4a8d-4d9f-8f69-df4f210cb2d7)
* valueQuantity = 49 'cm' "cm"
* effectiveDateTime = "2025-05-18T10:46:00+02:00"
* performer = Reference(urn:uuid:1ec5e355-648f-42b9-a316-3f056fbd04b5)

Instance: GynNaturalBirthJana-BirthInjury
InstanceOf: CZ_ConditionHdr
Usage: #example
Description: "Příklad záznamu porodního poranění matky v případě Jany Novákové. / Example maternal birth injury condition for Jana Novakova case."
* id = "8a6aa5a5-0f66-4c09-b4d0-e2ca7ab6450c"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* code = $icd10#O70.0 "First degree perineal laceration during delivery"
* subject = Reference(urn:uuid:6c4f4d2c-5f24-4a91-a75e-1b0e2a1f7731)
* onsetDateTime = "2025-05-18T10:46:00+02:00"
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Epiziotomie mediolaterální během porodu.</div>"

Instance: Allergy-Penicillin-Novakova-Jana
InstanceOf: CZ_AllergyIntoleranceHdr
Usage: #example
Description: "Alergie pacientky na penicilin s kožní vyrážkou a otokem rtů. / Patient allergy to penicillin with skin rash and lip swelling."
* id = "b63654b0-7876-4074-986b-24dd2fed4f1b"
* identifier[+].system = "http://example.org/hospital/allergy-intolerances"
* identifier[=].value = "allergy-2"
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Alergie na penicilin - kožní vyrážka, otok rtů.</p></div>"
* clinicalStatus = $allergyintolerance-clinical#active
* verificationStatus = $allergyintolerance-verification#confirmed
* type = #allergy
* criticality = #low
* code.coding[0].system = $sct
* code.coding[0].code = #764146007
* code.coding[0].display = "Penicillin"
* patient = Reference(urn:uuid:6c4f4d2c-5f24-4a91-a75e-1b0e2a1f7731)
* reaction[0].manifestation[0].coding[0].system = $sct
* reaction[0].manifestation[0].coding[0].code = #271807003
* reaction[0].manifestation[1].coding[0].system = $sct
* reaction[0].manifestation[1].coding[0].code = #267038008
* reaction[0].description = "Kožní vyrážka, otok rtů."

Instance: GynNaturalBirthJana-BirthOutcome
InstanceOf: Observation
Usage: #example
Description: "Příklad observace výsledku porodu v případě Jany Novákové. / Example birth outcome observation for Jana Novakova case."
* id = "49f3de6d-5b80-47fe-84c0-560037fd14a7"
* status = #final
* code = $sct#364587008 "Birth outcome"
* subject = Reference(urn:uuid:6c4f4d2c-5f24-4a91-a75e-1b0e2a1f7731)
* effectiveDateTime = "2025-05-18T10:46:00+02:00"
* valueCodeableConcept = $sct#169826009 "Single live birth from singleton pregnancy"
* performer = Reference(urn:uuid:1ec5e355-648f-42b9-a316-3f056fbd04b5)

Instance: GynNaturalBirthJana-Gravidity
InstanceOf: CZ_ObservationGravidity
Usage: #example
Description: "Příklad observace gravidity matky v případě Jany Novákové. / Example maternal gravidity observation for Jana Novakova case."
* id = "9d0b2e3f-6e66-4dcb-a457-6d6108b1fb89"
* status = #final
* subject = Reference(urn:uuid:6c4f4d2c-5f24-4a91-a75e-1b0e2a1f7731)
* effectiveDateTime = "2025-05-18T10:46:00+02:00"
* valueInteger = 1
* performer = Reference(urn:uuid:1ec5e355-648f-42b9-a316-3f056fbd04b5)

Instance: GynNaturalBirthJana-Parity
InstanceOf: CZ_ObservationParity
Usage: #example
Description: "Příklad observace parity matky v případě Jany Novákové. / Example maternal parity observation for Jana Novakova case."
* id = "11ab1738-4c81-4d40-8b7e-f0cda2c83ec3"
* status = #final
* subject = Reference(urn:uuid:6c4f4d2c-5f24-4a91-a75e-1b0e2a1f7731)
* effectiveDateTime = "2025-05-18T10:46:00+02:00"
* valueInteger = 1
* performer = Reference(urn:uuid:1ec5e355-648f-42b9-a316-3f056fbd04b5)

Instance: GynNaturalBirthJana-MultiplePregnancy
InstanceOf: CZ_ObservationMultiplePregnancy
Usage: #example
Description: "Příklad observace potvrzující jednoplodové těhotenství v případě Jany Novákové. / Example observation indicating singleton pregnancy for Jana Novakova case."
* id = "5b9a67e0-d8ed-4dd8-b690-3f61a804c6a4"
* status = #final
* subject = Reference(urn:uuid:6c4f4d2c-5f24-4a91-a75e-1b0e2a1f7731)
* effectiveDateTime = "2025-05-18T10:46:00+02:00"
* valueBoolean = false
* component.valueInteger = 1
* performer = Reference(urn:uuid:1ec5e355-648f-42b9-a316-3f056fbd04b5)

Instance: GynNaturalBirthJana-GestationalAgeAtDelivery
InstanceOf: CZ_ObservationGestationalAge
Usage: #example
Description: "Příklad observace gestačního stáří při porodu v případě Jany Novákové. / Example gestational age at delivery observation for Jana Novakova case."
* id = "810c3a4f-c29d-4ce4-8ba0-a7cbbf37ef89"
* status = #final
* subject = Reference(urn:uuid:6c4f4d2c-5f24-4a91-a75e-1b0e2a1f7731)
* effectiveDateTime = "2025-05-18T10:46:00+02:00"
* valueString = "39+6"
* performer = Reference(urn:uuid:1ec5e355-648f-42b9-a316-3f056fbd04b5)

Instance: GynNaturalBirthJana-Apgar1
InstanceOf: CZ_ObservationApgarScore1Min
Usage: #example
Description: "Příklad APGAR skóre novorozence Jany Novákové v 1. minutě. / Example APGAR score at 1 minute for Jana Novakova newborn."
* id = "8d0af4d9-f653-49db-a940-83af87f1da8f"
* status = #final
* code = $loinc#9272-6 "1 minute Apgar Score"
* subject = Reference(urn:uuid:b7e6c8a1-4a8d-4d9f-8f69-df4f210cb2d7)
* effectiveDateTime = "2025-05-18T10:47:00+02:00"
* valueInteger = 10
* performer = Reference(urn:uuid:1ec5e355-648f-42b9-a316-3f056fbd04b5)

Instance: GynNaturalBirthJana-Apgar5
InstanceOf: CZ_ObservationApgarScore5Min
Usage: #example
Description: "Příklad APGAR skóre novorozence Jany Novákové v 5. minutě. / Example APGAR score at 5 minutes for Jana Novakova newborn."
* id = "24e6d365-6456-4916-81f6-4258e9cd3f5a"
* status = #final
* subject = Reference(urn:uuid:b7e6c8a1-4a8d-4d9f-8f69-df4f210cb2d7)
* effectiveDateTime = "2025-05-18T10:51:00+02:00"
* valueInteger = 10
* performer = Reference(urn:uuid:1ec5e355-648f-42b9-a316-3f056fbd04b5)

Instance: GynNaturalBirthJana-Apgar10
InstanceOf: CZ_ObservationApgarScore10Min
Usage: #example
Description: "Příklad APGAR skóre novorozence Jany Novákové v 10. minutě. / Example APGAR score at 10 minutes for Jana Novakova newborn."
* id = "4ae1602e-6dff-4879-ad22-1ea0ef8cc58d"
* status = #final
* subject = Reference(urn:uuid:b7e6c8a1-4a8d-4d9f-8f69-df4f210cb2d7)
* effectiveDateTime = "2025-05-18T10:56:00+02:00"
* valueInteger = 10
* performer = Reference(urn:uuid:1ec5e355-648f-42b9-a316-3f056fbd04b5)

Instance: cz-pdfgynnatural-example
InstanceOf: Attachment
Usage: #inline
Description: "Attachment for Natural Birth"
* contentType = #application/pdf
* language = #cs
* data = "JVBERi0xLjQKJebkw7zUHzExIDAgb2JqCjw8L1R5cGUvQ2F0YWxvZy9QYWdlcyAyIDAgUj4+CmVuZG9iagoyIDAgb2JqCjw8L1R5cGUvUGFnZXMvQ291bnQgMS9LaWRzWzMgMCBSXT4+CmVuZG9iagozIDAgb2JqCjw8L1R5cGUvUGFnZS9QYXJlbnQgMiAwIFIvTWVkaWFCb3hbMCAwIDU5NSA4NDJdL0NvbnRlbnRzIDQgMCBSL1Jlc291cmNlcyA1IDAgUj4+CmVuZG9iago0IDAgb2JqCjw8L0xlbmd0aCAzOTM+PnN0cmVhbQpCVAovRjEgMTggVGYKNTAgODAwIFRkCihHcm91cHVkbyBtZWRpY2FsIHpwcmF2YSAtIFByb3BvdXN0ZWNpIHpwcmF2YSkgVGoKMCAtMjAgVGQKKEYyIDEyIFRmCihQYWNpZW50a2E6IEphbmEgTm92YWtvdmEsIG5hci4gMTguMDUuMTk5MykgVGoKMCAtMjAgVGQKKERpYWdub3phOiBPODAuMCAtIFNwb250YW5uaSB2YWdpbmFsbGkgcG9yb2QpIFRqCjAgLTIwIFRkCihQcnViZWNoOiBCZXoga29tcGxpa2FjaSwgcG9kYW5hIEVEQSAoUm9waXZha2FpbiwgRmVudGFueWwpLikgVGoKMCAtMjAgVGQKKE5vdm9yb3plbmVjOiBKYW4gTm92YWssIG5hci4gMTguMDUuMjAyNSwgMzIxMCBnKSBUbwowIC00MCBUZAooRG9wb3J1Y2VuaSkgVGoKMCAtMTUgVGQKKC0gS29udHJvbGEgdSBvYnZvZG5paG8gZ3luZWtvbG9nYSBwbyBzZXN0aW5lZGVsaSkgVGoKMCAtMTUgVGQKKC0gSHpnaWVuaWNreSByZXppbSBhIHBlY2UgcG8gZXBpemlvdG9taWkpIFRqCkVUCmVuZHN0cmVhbQplbmRvYmoKNSAwIG9iago8PC9Gb250PDwvRjEgNiAwIFIvRjIgNyAwIFI+Pj4+CmVuZG9iago2IDAgb2JqCjw8L1R5cGUvRm9udC9TdWJ0eXBlL1R5cGUxL0Jhc2VGb250L0hlbHZldGljYS1Cb2xkPj4KZW5kb2JqCjcgIDAgb2JqCjw8L1R5cGUvRm9udC9TdWJ0eXBlL1R5cGUxL0Jhc2VGb250L0hlbHZldGljYT4+CmVuZG9iagp4cmVmCjAgOAowMDAwMDAwMDAwIDY1NTM1IGYgCjAwMDAwMDAwMDkgMDAwMDAgbiAKMDAwMDAwMDA1OCAwMDAwMCBuIAowMDAwMDAwMTE1IDA0MDAwIG4gCjAwMDAwMDAyMTkgMDAwMDAgbiAKMDAwMDAwMDY2MiAwMDAwMCBuIAowMDAwMDAwNzE0IDAwMDAwIG4gCjAwMDAwMDA3OTAgMDAwMDAgbiAKdHJhaWxlcgo8PC9TaXplIDgvUm9vdCAxIDAgUj4+CnN0YXJ0eHJlZgo4NjMKJSVFT0YK"
* title = "Natural Birth - Jana Nováková"
* creation = "2025-05-20T12:02:00+01:00"
