Instance: Medication-Euthyrox
InstanceOf: CZ_Medication
* id = "med-euthyrox"
//* meta.profile = https://hl7.cz/fhir/core/StructureDefinition/cz-Medication
* status = #active
* code.coding[0].system = $cz-medication-DLP
* code.coding[0].code = #0243131
* code.coding[0].display = "Euthyrox 75 mcg"
* code.coding[1].system = $atc
* code.coding[1].code = #H03AA01
* code.coding[1].display = "Levothyroxine"
* code.text = "Euthyrox 75 mcg"
* form.coding[0].system = $cz-medication-DLPForma
* form.coding[0].code = #"TBL NOB"
* form.coding[0].display = "Tableta"
* form.text = "Tableta"
* amount.numerator.value = 75
* amount.numerator.unit = "mcg"
* amount.numerator.system = $Jednotky
* amount.numerator.code = #/ug
* ingredient[0].itemCodeableConcept.coding[0].system = $cz-medicationDLPLecive-latky
* ingredient[0].itemCodeableConcept.coding[0].code = #828
* ingredient[0].itemCodeableConcept.coding[0].display = "LEVOTHYROXINE SODIUM"
* ingredient[0].itemCodeableConcept.text = "Levothyroxin"
* ingredient[0].strength.numerator.value = 75
* ingredient[0].strength.numerator.unit = "mcg"
* ingredient[0].strength.numerator.system = $Jednotky
* ingredient[0].strength.numerator.code = #"/ug"
* ingredient[0].strength.denominator.value = 1    
* ingredient[0].strength.denominator.unit = "tableta"
* ingredient[0].strength.denominator.system = $Jednotky    
* ingredient[0].strength.denominator.code = #"{tbl}"
* ingredient[0].strength.denominator.unit = "tableta"
* identifier[0].system = $cz-medication-DLP
* identifier[0].value = "0243131"

Instance: MedicationDispense-Euthyrox
InstanceOf: MedicationDispense
Usage: #example
Title: "Dispense – Euthyrox"
Description: "Výdej léčivého přípravku Euthyrox pacientovi Novákovi"
* status = #completed
* medicationReference = Reference(Medication-Euthyrox)
* subject = Reference(Patient-Novak-Petr)
* quantity.value = 30
* quantity.unit = "tableta"
* quantity.system = $Jednotky
* quantity.code = #"{tbl}"
* whenHandedOver = "2024-03-05"

Instance: Medication-Paracetamol
InstanceOf: CZ_Medication
* id = "med-paracetamol"
//* meta.profile = https://hl7.cz/fhir/core/StructureDefinition/cz-Medication
* status = #active
* code.coding[0].system = $cz-medication-DLP
* code.coding[0].code = #0243131
* code.coding[0].display = "PARACETAMOL ZENTIVA K.S."
* code.coding[1].system = $atc
* code.coding[1].code = #N02BE01    
* code.coding[1].display = "Paracetamol"
* code.text = "PARACETAMOL ZENTIVA K.S. 500 mg"
* form.coding[0].system = $cz-medication-DLPForma
* form.coding[0].code = #"TBL NOB"
* form.coding[0].display = "Tableta"
* form.text = "Tableta"
* amount.numerator.value = 500
* amount.numerator.unit = "mg"
* amount.numerator.system = $Jednotky
* amount.numerator.code = #/mg
* ingredient[0].itemCodeableConcept.coding[0].system = $cz-medicationDLPLecive-latky
* ingredient[0].itemCodeableConcept.coding[0].code = #1064
* ingredient[0].itemCodeableConcept.coding[0].display = "PARACETAMOL"
* ingredient[0].itemCodeableConcept.text = "PARACETAMOL"
* ingredient[0].strength.numerator.value = 500
* ingredient[0].strength.numerator.unit = "mg"
* ingredient[0].strength.numerator.system = $Jednotky
* ingredient[0].strength.numerator.code = #"/mg"
* ingredient[0].strength.denominator.value = 1    
* ingredient[0].strength.denominator.unit = "tableta"
* ingredient[0].strength.denominator.system = $Jednotky    
* ingredient[0].strength.denominator.code = #"{tbl}"
* ingredient[0].strength.denominator.unit = "tableta"
* identifier[0].system = $cz-medication-DLP
* identifier[0].value = "0243131"

Instance: MedicationDispense-Paracetamol
InstanceOf: MedicationDispense
Usage: #example
Title: "Dispense – Paracetamol"
Description: "Výdej léčivého přípravku Paracetamol pacientovi Novákovi"
* status = #completed
* medicationReference = Reference(Medication-Paracetamol)
* subject = Reference(Patient-Novak-Petr)
* quantity.value = 20
* quantity.unit = "tableta"
* quantity.system = $Jednotky
* quantity.code = #"{tbl}"
* whenHandedOver = "2024-03-06"

Instance: Medication-Ibalgin400
InstanceOf: CZ_Medication
* id = "med-Ibalgin400"
//* meta.profile = https://hl7.cz/fhir/core/StructureDefinition/cz-Medication
* status = #active
* code.coding[0].system = $cz-medication-DLP
* code.coding[0].code = #0207893
* code.coding[0].display = "Ibalgin 400 mg"
* code.coding[1].system = $atc
* code.coding[1].code = #M01AE01
* code.coding[1].display = "IBUPROFEN"
* code.text = "Ibalgin 400 mg"
* form.coding[0].system = $cz-medication-DLPForma
* form.coding[0].code = #"TBL NOB"
* form.coding[0].display = "Tableta"
* form.text = "Tableta"
* amount.numerator.value = 400
* amount.numerator.unit = "mg"
* amount.numerator.system = $Jednotky
* amount.numerator.code = #/mg
* ingredient[0].itemCodeableConcept.coding[0].system = $cz-medicationDLPLecive-latky
* ingredient[0].itemCodeableConcept.coding[0].code = #81593
* ingredient[0].itemCodeableConcept.coding[0].display = "IBUPROFEN"
* ingredient[0].itemCodeableConcept.text = "IBUPROFEN"
* ingredient[0].strength.numerator.value = 400
* ingredient[0].strength.numerator.unit = "mg"
* ingredient[0].strength.numerator.system = $Jednotky
* ingredient[0].strength.numerator.code = #"/mg"
* ingredient[0].strength.denominator.value = 1    
* ingredient[0].strength.denominator.unit = "tableta"
* ingredient[0].strength.denominator.system = $Jednotky    
* ingredient[0].strength.denominator.code = #"{tbl}"
* ingredient[0].strength.denominator.unit = "tableta"
* identifier[0].system = $cz-medication-DLP
* identifier[0].value = "0207893"

Instance: MedicationDispense-Ibalgin400
InstanceOf: MedicationDispense
Usage: #example
Title: "Dispense – Ibalgin 400"
Description: "Výdej léčivého přípravku Ibalgin 400 mg pacientovi Novákovi"
* status = #completed
* medicationReference = Reference(Medication-Ibalgin400)
* subject = Reference(Patient-Novak-Petr)
* quantity.value = 15
* quantity.unit = "tableta"
* quantity.system = $Jednotky
* quantity.code = #"{tbl}"
* whenHandedOver = "2024-03-07"

Instance: Medication-CovidVaccineComirnaty
InstanceOf: CZ_Medication
* id = "med-CovidVaccineComirnaty"
//* meta.profile = https://hl7.cz/fhir/core/StructureDefinition/cz-Medication
* status = #active

* code.coding[0].system = $cz-medication-DLP
* code.coding[0].code = #0246599
* code.coding[0].display = "Comirnaty 30mcg/dávka injekční disperze"
* code.coding[1].system = $atc
* code.coding[1].code = #J07BX03
* code.coding[1].display = "COVID-19 vaccines"
* code.text = "Comirnaty"

* form.coding[0].system = $cz-medication-DLPForma
* form.coding[0].code = #"INJ SOL"
* form.coding[0].display = "Injekční roztok"
* form.text = "Injekční roztok"

* amount.numerator.value = 0.3
* amount.numerator.unit = "ml"
* amount.numerator.system = $Jednotky
* amount.numerator.code = #/ml

* ingredient[0].itemCodeableConcept.coding[0].system = $cz-medicationDLPLecive-latky
* ingredient[0].itemCodeableConcept.coding[0].code = #88213
* ingredient[0].itemCodeableConcept.coding[0].display = "BNT162b2 mRNA"
* ingredient[0].itemCodeableConcept.text = "BNT162b2 mRNA"
* ingredient[0].strength.numerator.value = 30
* ingredient[0].strength.numerator.unit = "mikrogramů"
* ingredient[0].strength.numerator.system = $Jednotky
* ingredient[0].strength.numerator.code = #μg
* ingredient[0].strength.denominator.value = 0.3
* ingredient[0].strength.denominator.unit = "ml"
* ingredient[0].strength.denominator.system = $Jednotky
* ingredient[0].strength.denominator.code = #/ml

* identifier[0].system = $cz-medication-DLP
* identifier[0].value = "0246599"



   



