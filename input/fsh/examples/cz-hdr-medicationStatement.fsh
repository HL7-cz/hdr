// 8. MedicationStatement: Levothyroxine (thyroid hormone replacement)
Instance: LevothyroxineMedication
InstanceOf: MedicationStatement
Usage: #example
Title: "CZ-MedicationStatement-HDR Example of Levothyroxine"
Description: "Czech HDR - example of Levothyroxine sodium"
//* id = "med-levothyroxine"
* status = #active
* statusReason.text = "Continued on discharge"
* medicationCodeableConcept.coding[0].system = "http://www.whocc.no/atc"
* medicationCodeableConcept.coding[0].code = #H03AA01 // Corrected code assignment
* medicationCodeableConcept.coding[0].display = "Levothyroxine sodium"
* medicationCodeableConcept.text = "Euthyrox 100 \u00b5g"
* subject = Reference(Mracena2)
* dosage[0].text = "1-0-0 (100 \u00b5g r\u00e1no)"

// MedicationStatement: Rivaroxaban (anticoagulation for AF)
Instance: RivaroxabanMedication
InstanceOf: MedicationStatement
Usage: #example
Title: "CZ-MedicationStatement-HDR Example of Rivaroxaban"
Description: "Czech HDR - example of Rivaroxaban"
//* id = "med-rivaroxaban"
* status = #active
* medicationCodeableConcept.coding[0].system = "http://www.whocc.no/atc"
* medicationCodeableConcept.coding[0].code = #B01AF01 // Corrected code assignment
* medicationCodeableConcept.coding[0].display = "Rivaroxaban"
* medicationCodeableConcept.text = "Rivaroxaban 20 mg"
* subject = Reference(Mracena2)
* dosage[0].text = "1-0-0 (20 mg denně)"

// MedicationStatement: Bisoprolol (beta-blocker for rate control)
Instance: BisoprololMedication
InstanceOf: MedicationStatement
Usage: #example
Title: "CZ-MedicationStatement-HDR Example of Bisoprolol"
Description: "Czech HDR - example of Bisoprolol"
//* id = "med-bisoprolol"
* status = #active
* medicationCodeableConcept.coding[0].system = "http://www.whocc.no/atc"
* medicationCodeableConcept.coding[0].code = #C07AB07 // Corrected code assignment
* medicationCodeableConcept.coding[0].display = "Bisoprolol"
* medicationCodeableConcept.text = "Bisoprolol 5 mg"
* subject = Reference(Mracena2)
* dosage[0].text = "1-0-0 (5 mg denně)"

// MedicationStatement: Atorvastatin (lipid-lowering therapy)
Instance: AtorvastatinMedication
InstanceOf: MedicationStatement
Usage: #example
Title: "CZ-MedicationStatement-HDR Example of Atorvastatin"
Description: "Czech HDR - example of Atorvastatin"
//* id = "med-atorvastatin"
* status = #active
* medicationCodeableConcept.coding[0].system = "http://www.whocc.no/atc"
* medicationCodeableConcept.coding[0].code = #C10AA05 // Corrected code assignment
* medicationCodeableConcept.coding[0].display = "Atorvastatin"
* medicationCodeableConcept.text = "Atorvastatin 20 mg"
* subject = Reference(Mracena2)
* dosage[0].text = "0-0-1 (20 mg večer)"

// MedicationStatement: Calcium + Vitamin D3 supplement (for osteoporosis)
Instance: CalciumD3Medication
InstanceOf: MedicationStatement
Usage: #example
Title: "CZ-MedicationStatement-HDR Example of Calcium D3"
Description: "Czech HDR - example of Calcium D3"
//* id = "med-calcium-d3"
* status = #active
* medicationCodeableConcept.text = "V\u00e1pn\u00edk + Vit D3"
* subject = Reference(Mracena2)
* dosage[0].text = "1-0-0 (denn\u011b)"

// MedicationStatement: Iron supplement (for anemia)
Instance: IronSupplementMedication
InstanceOf: MedicationStatement
Usage: #example
Title: "CZ-MedicationStatement-HDR Example of Iron Supplement"
Description: "Czech HDR - example of Iron Supplement"
//* id = "med-iron"
* status = #active
* medicationCodeableConcept.coding[0].system = "http://www.whocc.no/atc"
* medicationCodeableConcept.coding[0].code = #B03AA07 // Corrected code assignment
* medicationCodeableConcept.coding[0].display = "Ferrous sulfate"
* medicationCodeableConcept.text = "Sorbifer Durules (Fe++)"
* subject = Reference(Mracena2)
* dosage[0].text = "1-0-0"

//---------------------------------------------------------------------
Instance: MedicationStatement-Euthyrox-Novak
InstanceOf: CZ_MedicationStatement
Usage: #example
Title: "CZ-MedicationStatement-HDR Example of Euthyrox"
Description: "Czech HDR - example of Euthyrox"
* id = "47472c99-09bf-4007-bfaa-16c9665ae090"
* status = #active   // http://hl7.org/fhir/CodeSystem/medication-statement-status nebo https://hl7.org/fhir/R4/valueset-medication-statement-status.html
//stav neni adekvatni status ve slovniku, navic treba pouzit kod. system snomed
//* statusReason.coding[0].system = $cz-medicationStatement-reason-status 
//* statusReason.coding[0].code = #continued
//* statusReason.coding[0].display = "Pokračuje"
* statusReason.text = "Pokračuje"
//indikace
* reasonCode.coding[0].system = $MKN10
* reasonCode.coding[0].code = #E03.9
* reasonCode.coding[0].display = "Hypothyroidism, unspecified"
* reasonCode.text = "Hypotyreóza"
//dávkování
* dosage[0].text = "1 tableta denně"
* dosage[0].timing.repeat.frequency = 1 
* dosage[0].timing.repeat.period = 1 
* dosage[0].timing.repeat.periodUnit = #d
* dosage[0].doseAndRate.doseQuantity.value = 1
* dosage[0].doseAndRate.doseQuantity.unit = "tableta"
//cesta podání
* dosage[0].route.coding[0].system = $sct
* dosage[0].route.coding[0].code = #26643006
* dosage[0].route.coding[0].display = "Oral use"  
// období podávání
* effectivePeriod.start = "2025-03-01T10:15:00+01:00"
* effectivePeriod.end = "2025-03-10T09:30:00+01:00"
//dělka vybavení
//------- chybí 
// reference a další údaje
/* 
* medicationCodeableConcept.coding[0].system = $cz-medication-DLP
* medicationCodeableConcept.coding[0].code = #0243131
* medicationCodeableConcept.coding[0].display = "Euthyrox 75 mcg"
* medicationCodeableConcept.text = "Euthyrox 75MCG TBL NOB 100 II"
*/
* medicationReference = Reference(Medication-Euthyrox)
* subject = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000)
* identifier[0].system = $cz-medication-DLP     //tady má být External identifier
* identifier[0].value = "0243131"       //tady má být External identifier
* category[0].coding[0].system = $medication-statement 
* category[0].coding[0].code = #inpatient
* category[0].coding[0].display = "Inpatient"
* category[0].text = "Inpatient"

//---------------------------------------------------------------------
Instance: MedicationStatement-Paracetamol-Novak
InstanceOf: CZ_MedicationStatement
Usage: #example
Title: "CZ-MedicationStatement-HDR Example of Paracetamol"
Description: "Czech HDR - example of Paracetamol"
* id = "f34114fc-138f-4bd8-8e1a-804d14ec9986"
* status = #active   
//stav neni adekvatni status ve slovniku, navic treba pouzit kod. system snomed
//* statusReason.coding[0].system = $cz-medicationStatement-reason-status 
//* statusReason.coding[0].code = #continued
//* statusReason.coding[0].display = "Pokračuje"
* statusReason.text = "Pokračuje"
//indikace
* reasonCode.coding[0].system = $MKN10
* reasonCode.coding[0].code = #E03.9
* reasonCode.coding[0].display = "Hypothyroidism, unspecified"
* reasonCode.text = "Hypotyreóza"
//dávkování
* dosage[0].text = "Dle potřeby, max 4 tablety denně"
* dosage[0].asNeededBoolean = true
* dosage[0].doseAndRate.doseQuantity.value = 500
* dosage[0].doseAndRate.doseQuantity.unit = "mg"
//cesta podání
* dosage[0].route.coding[0].system = $sct
* dosage[0].route.coding[0].code = #26643006
* dosage[0].route.coding[0].display = "Oral use"  
// období podávání
* effectivePeriod.start = "2025-03-01T10:15:00+01:00"
* effectivePeriod.end = "2025-03-10T09:30:00+01:00"
//dělka vybavení
//------- chybí 
// reference a další údaje
* medicationReference = Reference(Medication-Paracetamol)
* subject = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000)
* identifier[0].system = $cz-medication-DLP //tady má být External identifier
* identifier[0].value = "0243131"   //tady má být External identifier
* category[0].coding[0].system = $medication-statement 
* category[0].coding[0].code = #inpatient
* category[0].coding[0].display = "Inpatient"
* category[0].text = "Inpatient"

//---------------------------------------------------------------------
Instance: MedicationStatement-Ibalgin400-Novak
InstanceOf: CZ_MedicationStatement
Usage: #example
Title: "CZ-MedicationStatement-HDR Example of Ibalgin"
Description: "Czech HDR - example of Ibalgin 400"
* id = "bf08b62b-0abd-4e88-9092-ce0228382e51"
* status = #active   
//stav neni adekvatni status ve slovniku, navic treba pouzit kod. system snomed
//* statusReason.coding[0].system = $cz-medicationStatement-reason-status 
//* statusReason.coding[0].code = #continued
//* statusReason.coding[0].display = "Pokračuje"
* statusReason.text = "Pokračuje"
//indikace
* reasonCode.coding[0].system = $MKN10
* reasonCode.coding[0].code = #E03.9
* reasonCode.coding[0].display = "Hypothyroidism, unspecified"
* reasonCode.text = "Hypotyreóza"
//dávkování
* dosage[0].text = "Dle potřeby, při bolesti max 3 tablety denně"
* dosage[0].asNeededBoolean = true
* dosage[0].doseAndRate.doseQuantity.value = 400
* dosage[0].doseAndRate.doseQuantity.unit = "mg"
//cesta podání
* dosage[0].route.coding[0].system = $sct
* dosage[0].route.coding[0].code = #26643006
* dosage[0].route.coding[0].display = "Oral use"  
// období podávání
* effectivePeriod.start = "2025-03-01T10:15:00+01:00"
* effectivePeriod.end = "2025-03-10T09:30:00+01:00"
//dělka vybavení
//------- chybí 
// reference a další údaje
* medicationReference = Reference(Medication-Ibalgin400)
* subject = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000)
* identifier[0].system = $cz-medication-DLP-cs //tady má být External identifier
* identifier[0].value = "0207893"   //tady má být External identifier
* category[0].coding[0].system = $medication-statement 
* category[0].coding[0].code = #inpatient
* category[0].coding[0].display = "Inpatient"
* category[0].text = "Inpatient"


