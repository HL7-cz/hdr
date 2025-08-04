RuleSet: MedicationEssentials(
    dlpCode, dlpDisplay, atcCode, atcDisplay, formCode, formDisplay, 
    amountValue, amountUnit, amountCode, 
    substanceCode, substanceDisplay, strengthValue, strengthUnit, 
    strengthCode, denominatorUnit, tbl, dlpId)
* status = #active
* code.coding[0].system = $cz-medication-DLP
* code.coding[0].code = #{dlpCode}
* code.coding[0].display = "{dlpDisplay}"
* code.coding[1].system = $atc
* code.coding[1].code = #{atcCode}
* code.coding[1].display = "{atcDisplay}"
* code.text = "{dlpDisplay}"
* form.coding[0].system = $cz-medication-DLPForma
* form.coding[0].code = #"{formCode}"
* form.coding[0].display = "{formDisplay}"
* form.text = "{formDisplay}"
* amount.numerator.value = {amountValue}
* amount.numerator.unit = "{amountUnit}"
* amount.numerator.system = $Jednotky
* amount.numerator.code = #{amountCode}
* ingredient[0].itemCodeableConcept.coding[0].system = $cz-medicationDLPLecive-latky
* ingredient[0].itemCodeableConcept.coding[0].code = #{substanceCode}
* ingredient[0].itemCodeableConcept.coding[0].display = "{substanceDisplay}"
* ingredient[0].itemCodeableConcept.text = "{substanceDisplay}"
* ingredient[0].strength.numerator.value = {strengthValue}
* ingredient[0].strength.numerator.unit = "{strengthUnit}"
* ingredient[0].strength.numerator.system = $Jednotky
* ingredient[0].strength.numerator.code = #"{strengthCode}"
* ingredient[0].strength.denominator.value = 1
* ingredient[0].strength.denominator.unit = "{denominatorUnit}"
* ingredient[0].strength.denominator.system = $Jednotky
* ingredient[0].strength.denominator.code = #"{tbl}"
* identifier[0].system = $cz-medication-DLP
* identifier[0].value = "{dlpId}"

RuleSet: MedicationDispenseEssentials(
    medicationRef, patientRef, unit, quantity, quantityCode, handedOver)
* status = #completed
* medicationReference = Reference({medicationRef})
* subject = Reference({patientRef})
* quantity.value = {quantity}
* quantity.unit = "{unit}"
* quantity.system = $Jednotky
* quantity.code = #"{quantityCode}"
* whenHandedOver = "{handedOver}"

//Použití:
Instance: Medication-Ibalgin400RSu
InstanceOf: CZ_Medication
* id = "med-Ibalgin400-RSu"
* insert MedicationEssentials(
    0207893, Ibalgin 400 mg, M01AE01, IBUPROFEN, TBL NOB, Tableta, 
    400, mg, /mg, 
    81593, IBUPROFEN, 400, mg, 
    /mg, tableta, 81593, 0207893)

Instance: MedicationDispense-Ibalgin400RSu
InstanceOf: MedicationDispense
* insert MedicationDispenseEssentials(Medication-Ibalgin400, Patient-Novak-Petr, 15, 2024-03-07)

