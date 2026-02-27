Instance: DischargeComposition-Gyn-NaturalBirth
InstanceOf: CZ_CompositionHdr
Usage: #example
Description: "Example gynecology hospital discharge composition with spontaneous vaginal delivery."
* id = "6e9f3ec7-0a3c-4ee4-a2f2-a9c6ad91d001"
* status = #final
* type = $loinc#34105-7 "Hospital Discharge summary"
* title = "Gynekologická propouštěcí zpráva - spontánní vaginální porod"
* date = "2025-05-18T12:30:00+02:00"
* author[0] = Reference(Practitioner-Author)
* subject = Reference(Mracena2)
* encounter = Reference(CZ-Encounter-HDR-Example)

* section[sectionHospitalCourse].title = "Průběh hospitalizace"
* section[sectionHospitalCourse].code = $loinc#8648-8 "Hospital course note"
* section[sectionHospitalCourse].text.status = #additional
* section[sectionHospitalCourse].text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><p>Hospitalizace pro spontánně proběhlý porod v termínu, bez závažných komplikací.</p></div>"""

* section[sectionHospitalCourse].section[sectionDelivery].title = "Porod"
* section[sectionHospitalCourse].section[sectionDelivery].code = $loinc#57074-7 "Delivery note"
* section[sectionHospitalCourse].section[sectionDelivery].text.status = #additional
* section[sectionHospitalCourse].section[sectionDelivery].text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><p>Porod dne 18.05.2025 v 10:46, spontánní vaginální, novorozenec mužského pohlaví, 3210 g, 49 cm, Apgar 10-10-10.</p></div>"""
* section[sectionHospitalCourse].section[sectionDelivery].entry[+] = Reference(GynNaturalBirth-DeliveryMethod)
* section[sectionHospitalCourse].section[sectionDelivery].entry[+] = Reference(GynNaturalBirth-FetalPresentation)
* section[sectionHospitalCourse].section[sectionDelivery].entry[+] = Reference(GynNaturalBirth-BirthWeight)
* section[sectionHospitalCourse].section[sectionDelivery].entry[+] = Reference(GynNaturalBirth-BirthLength)
* section[sectionHospitalCourse].section[sectionDelivery].entry[+] = Reference(GynNaturalBirth-Apgar1)
* section[sectionHospitalCourse].section[sectionDelivery].entry[+] = Reference(GynNaturalBirth-Apgar5)
* section[sectionHospitalCourse].section[sectionDelivery].entry[+] = Reference(GynNaturalBirth-Apgar10)
* section[sectionHospitalCourse].section[sectionDelivery].entry[+] = Reference(Patient-Novak-Petr)

* section[sectionPatientHx].title = "Anamnéza"
* section[sectionPatientHx].code = $loinc#35090-0 "Patient history note"
* section[sectionPatientHx].text.status = #additional
* section[sectionPatientHx].text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><p>Gynekologická anamnéza: gravidita/parita 2/2, gestační stáří při porodu 39+6.</p></div>"""

* section[sectionPatientHx].section[sectionGynecologyHistory].title = "Gynekologická anamnéza"
* section[sectionPatientHx].section[sectionGynecologyHistory].code = $loinc#10162-6 "History of pregnancies"
* section[sectionPatientHx].section[sectionGynecologyHistory].text.status = #additional
* section[sectionPatientHx].section[sectionGynecologyHistory].text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><p>Gestační stáří 39+6, gravidita 2, parita 2, singleton gravidita.</p></div>"""
* section[sectionPatientHx].section[sectionGynecologyHistory].entry[+] = Reference(GynNaturalBirth-GestationalAgeAtDelivery)
* section[sectionPatientHx].section[sectionGynecologyHistory].entry[+] = Reference(GynNaturalBirth-Gravidity)
* section[sectionPatientHx].section[sectionGynecologyHistory].entry[+] = Reference(GynNaturalBirth-Parity)
* section[sectionPatientHx].section[sectionGynecologyHistory].entry[+] = Reference(GynNaturalBirth-MultiplePregnancy)

Instance: GynNaturalBirth-DeliveryMethod
InstanceOf: CZ_ProcedureMethodOfDelivery
Usage: #example
* status = #completed
* code = $sct#22640007 "Vaginal delivery"
* subject = Reference(Mracena2)
* performedDateTime = "2025-05-18T10:46:00+02:00"

Instance: GynNaturalBirth-FetalPresentation
InstanceOf: CZ_ObservationFetalPresentation
Usage: #example
* status = #final
* code = $loinc#57076-2 "Fetal presentation at birth"
* subject = Reference(Mracena2)
* effectiveDateTime = "2025-05-18T10:46:00+02:00"
* valueCodeableConcept = $sct#70028003 "Vertex presentation"

Instance: GynNaturalBirth-BirthWeight
InstanceOf: CZ_ObservationBirthWeight
Usage: #example
* subject = Reference(Patient-Novak-Petr)
* valueQuantity = 3210 'g' "g"

Instance: GynNaturalBirth-BirthLength
InstanceOf: CZ_ObservationBirthLength
Usage: #example
* subject = Reference(Patient-Novak-Petr)
* valueQuantity = 49 'cm' "cm"

Instance: GynNaturalBirth-Gravidity
InstanceOf: CZ_ObservationGravidity
Usage: #example
* status = #final
* subject = Reference(Mracena2)
* effectiveDateTime = "2025-05-18T10:46:00+02:00"
* valueInteger = 2

Instance: GynNaturalBirth-Parity
InstanceOf: CZ_ObservationParity
Usage: #example
* status = #final
* subject = Reference(Mracena2)
* effectiveDateTime = "2025-05-18T10:46:00+02:00"
* valueInteger = 2

Instance: GynNaturalBirth-MultiplePregnancy
InstanceOf: CZ_ObservationMultiplePregnancy
Usage: #example
* status = #final
* subject = Reference(Mracena2)
* effectiveDateTime = "2025-05-18T10:46:00+02:00"
* valueBoolean = false
* component.valueInteger = 1

Instance: GynNaturalBirth-GestationalAgeAtDelivery
InstanceOf: Observation
Usage: #example
* status = #final
* code = $loinc#76516-4 "Gestational age--at birth"
* subject = Reference(Mracena2)
* effectiveDateTime = "2025-05-18T10:46:00+02:00"
* valueString = "39+6"

Instance: GynNaturalBirth-Apgar1
InstanceOf: Observation
Usage: #example
* status = #final
* code = $loinc#9272-6 "Apgar score 1 minute"
* subject = Reference(Patient-Novak-Petr)
* effectiveDateTime = "2025-05-18T10:47:00+02:00"
* valueInteger = 10

Instance: GynNaturalBirth-Apgar5
InstanceOf: Observation
Usage: #example
* status = #final
* code = $loinc#9274-2 "Apgar score 5 minute"
* subject = Reference(Patient-Novak-Petr)
* effectiveDateTime = "2025-05-18T10:51:00+02:00"
* valueInteger = 10

Instance: GynNaturalBirth-Apgar10
InstanceOf: Observation
Usage: #example
* status = #final
* code = $loinc#9271-8 "Apgar score 10 minute"
* subject = Reference(Patient-Novak-Petr)
* effectiveDateTime = "2025-05-18T10:56:00+02:00"
* valueInteger = 10
