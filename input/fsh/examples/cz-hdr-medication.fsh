Instance: Medication-Euthyrox
InstanceOf: CZ_Medication
Usage: #example
Title: "Dispense – Euthyrox"
Description: "Euthyrox v tabletách"
//* meta.profile = https://hl7.cz/fhir/core/StructureDefinition/cz-Medication
* status = #active
* code.coding[0].system = $cz-medication-DLP-cs
* code.coding[0].code = #0243131
* code.coding[0].display = "EUTHYROX"
* code.coding[1].system = $cz-medication-DLPATC-cs
* code.coding[1].code = #H03AA01
* code.coding[1].display = "LEVOTHYROXINE SODIUM"
* code.text = "Euthyrox 75 mcg"
* form.coding[0].system = $cz-medication-DLPForma-cs
* form.coding[0].code = #TBL_FLM
* form.coding[0].display = "Potahovaná tableta"
* form.text = "Tableta"
* amount.numerator.value = 75
* amount.numerator.unit = "mcg"
* amount.numerator.system = $ucum
* amount.numerator.code = #/ug
* amount.denominator.value = 1
* amount.denominator.unit = "Tableta"
* ingredient[0].itemCodeableConcept.coding[0].system = $cz-medicationDLPLecive-latky-cs
* ingredient[0].itemCodeableConcept.coding[0].code = #828
* ingredient[0].itemCodeableConcept.coding[0].display = "LEVOTHYROXINUM NATRICUM"
* ingredient[0].itemCodeableConcept.text = "Levothyroxin"
* ingredient[0].strength.numerator.value = 75
* ingredient[0].strength.numerator.unit = "mcg"
* ingredient[0].strength.numerator.system = $ucum
* ingredient[0].strength.numerator.code = #"/ug"
* ingredient[0].strength.denominator.value = 1
* ingredient[0].strength.denominator.unit = "tableta"
//* ingredient[0].strength.denominator.system = $ucum
//* ingredient[0].strength.denominator.code = #"{tbl}"
//* ingredient[0].strength.denominator.unit = "tableta"
* identifier[0].system = $cz-medication-DLP-cs
* identifier[0].value = "0243131"

Instance: MedicationDispense-Euthyrox
InstanceOf: MedicationDispense
Usage: #example
Title: "Dispense – Euthyrox"
Description: "Výdej léčivého přípravku Euthyrox pacientovi Novákovi"
* status = #completed
* medicationReference = Reference(Medication-Euthyrox)
* subject = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000)
* quantity.value = 30
* quantity.unit = "tableta"
//* quantity.system = $ucum
//* quantity.code = #"{tbl}"
* whenHandedOver = "2024-03-05"

Instance: Medication-Paracetamol
InstanceOf: CZ_Medication
Usage: #example
Title: "Medication – Paracetamol"
Description: "Lek Paracetamol v tabletách"
* id = "med-paracetamol"
//* meta.profile = https://hl7.cz/fhir/core/StructureDefinition/cz-Medication
* status = #active
* code.coding[0].system = $cz-medication-DLP-cs
* code.coding[0].code = #0253304
* code.coding[0].display = "PARACETAMOL ZENTIVA K.S."
* code.coding[1].system = $cz-medication-DLPATC-cs
* code.coding[1].code = #N02BE01
* code.coding[1].display = "Paracetamol"
* code.text = "PARACETAMOL ZENTIVA K.S. 500 mg"
* form.coding[0].system = $cz-medication-DLPForma-cs
* form.coding[0].code = #TBL_FLM
* form.coding[0].display = "Potahovaná tableta"
* form.text = "Tableta"
* amount.numerator.value = 500
* amount.numerator.unit = "mg"
* amount.numerator.system = $ucum
* amount.numerator.code = #/mg
* amount.denominator.value = 1
* amount.denominator.unit = "Tableta"
* ingredient[0].itemCodeableConcept.coding[0].system = $cz-medicationDLPLecive-latky-cs
* ingredient[0].itemCodeableConcept.coding[0].code = #1064
* ingredient[0].itemCodeableConcept.coding[0].display = "PARACETAMOLUM"
* ingredient[0].itemCodeableConcept.text = "PARACETAMOL"
* ingredient[0].strength.numerator.value = 500
* ingredient[0].strength.numerator.unit = "mg"
* ingredient[0].strength.numerator.system = $ucum
* ingredient[0].strength.numerator.code = #"/mg"
* ingredient[0].strength.denominator.value = 1
* ingredient[0].strength.denominator.unit = "tableta"
//* ingredient[0].strength.denominator.system = $ucum
//* ingredient[0].strength.denominator.code = #"{tbl}"
//* ingredient[0].strength.denominator.unit = "tableta"
* identifier[0].system = $cz-medication-DLP-cs
* identifier[0].value = "0243131"

Instance: MedicationDispense-Paracetamol
InstanceOf: MedicationDispense
Usage: #example
Title: "Dispense – Paracetamol"
Description: "Výdej léčivého přípravku Paracetamol pacientovi Novákovi"
* status = #completed
* medicationReference = Reference(Medication-Paracetamol)
* subject = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000)
* quantity.value = 20
* quantity.unit = "tableta"
//* quantity.system = $ucum
//* quantity.code = #"{tbl}"
* whenHandedOver = "2024-03-06"

Instance: Medication-Ibalgin400
InstanceOf: CZ_Medication
Usage: #example
Title: "Medication – Ibalgin 400"
Description: "Lek Ibalgin 400 v tabletách"
* id = "med-Ibalgin400"
//* meta.profile = https://hl7.cz/fhir/core/StructureDefinition/cz-Medication
* status = #active
* code.coding[0].system = $cz-medication-DLP-cs
* code.coding[0].code = #0254294
* code.coding[0].display = "IBALGIN"
* code.coding[1].system = $cz-medication-DLPATC-cs
* code.coding[1].code = #M01AE01
* code.coding[1].display = "IBUPROFEN"
* code.text = "Ibalgin 400 mg"
* form.coding[0].system = $cz-medication-DLPForma-cs
* form.coding[0].code = #TBL_FLM
* form.coding[0].display = "Potahovaná tableta"
* form.text = "Tableta"
* amount.numerator.value = 400
* amount.numerator.unit = "mg"
* amount.numerator.system = $ucum
* amount.numerator.code = #/mg
* amount.denominator.value = 1
* amount.denominator.unit = "Tableta"
* ingredient[0].itemCodeableConcept.coding[0].system = $cz-medicationDLPLecive-latky-cs
* ingredient[0].itemCodeableConcept.coding[0].code = #1593
* ingredient[0].itemCodeableConcept.coding[0].display = "IBUPROFENUM"
* ingredient[0].itemCodeableConcept.text = "IBUPROFEN"
* ingredient[0].strength.numerator.value = 400
* ingredient[0].strength.numerator.unit = "mg"
* ingredient[0].strength.numerator.system = $ucum
* ingredient[0].strength.numerator.code = #"/mg"
* ingredient[0].strength.denominator.value = 1
* ingredient[0].strength.denominator.unit = "tableta"
//* ingredient[0].strength.denominator.system = $ucum
//* ingredient[0].strength.denominator.code = #"{tbl}"
//* ingredient[0].strength.denominator.unit = "tableta"
* identifier[0].system = $cz-medication-DLP-cs
* identifier[0].value = "0207893"

Instance: MedicationDispense-Ibalgin400
InstanceOf: MedicationDispense
Usage: #example
Title: "Dispense – Ibalgin 400"
Description: "Výdej léčivého přípravku Ibalgin 400 mg pacientovi Novákovi"
* status = #completed
* medicationReference = Reference(Medication-Ibalgin400)
* subject = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000)
* quantity.value = 15
* quantity.unit = "tableta"
//* quantity.system = $ucum
//* quantity.code = #"{tbl}"
* whenHandedOver = "2024-03-07"

Instance: Medication-CovidVaccineComirnaty
InstanceOf: CZ_Medication
Usage: #example
Title: "Medication – Covid vaccine"
Description: "Lek Covid vakcína"
* id = "med-CovidVaccineComirnaty"
//* meta.profile = https://hl7.cz/fhir/core/StructureDefinition/cz-Medication
* status = #active

* code.coding[0].system = $cz-medication-DLP-cs
* code.coding[0].code = #0271911
* code.coding[0].display = "COMIRNATY OMICRON XBB.1.5"
* code.coding[1].system = $cz-medication-DLPATC-cs
* code.coding[1].code = #J07BN01
* code.coding[1].display = "COVID-19, RNA VAKCÍNA"
* code.text = "Comirnaty"

* form.coding[0].system = $cz-medication-DLPForma-cs
* form.coding[0].code = #INJSOL
* form.coding[0].display = "Injekční roztok"
* form.text = "Injekční roztok"

* amount.numerator.value = 0.3
* amount.numerator.unit = "ml"
* amount.numerator.system = $ucum
* amount.numerator.code = #/ml
* amount.denominator.value = 0.3
* amount.denominator.unit = "ml"

* ingredient[0].itemCodeableConcept.coding[0].system = $cz-medicationDLPLecive-latky-cs
* ingredient[0].itemCodeableConcept.coding[0].code = #23463
* ingredient[0].itemCodeableConcept.coding[0].display = "SARS-COV-2 (OMICRON JN.1) SPIKE PROTEIN"
* ingredient[0].itemCodeableConcept.text = "SARS-COV-2 (OMICRON JN.1) SPIKE PROTEIN"
* ingredient[0].strength.numerator.value = 30
* ingredient[0].strength.numerator.unit = "mikrogramů"
* ingredient[0].strength.numerator.system = $ucum
* ingredient[0].strength.numerator.code = #ug
* ingredient[0].strength.denominator.value = 0.3
* ingredient[0].strength.denominator.unit = "ml"
* ingredient[0].strength.denominator.system = $ucum
* ingredient[0].strength.denominator.code = #/ml

* identifier[0].system = $cz-medication-DLP
* identifier[0].value = "0246599"







