// 8. MedicationStatement: Levothyroxine (thyroid hormone replacement)
Instance: LevothyroxineMedication
InstanceOf: MedicationStatement
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
//* id = "med-calcium-d3"
* status = #active
* medicationCodeableConcept.text = "V\u00e1pn\u00edk + Vit D3"
* subject = Reference(Mracena2)
* dosage[0].text = "1-0-0 (denn\u011b)"

// MedicationStatement: Iron supplement (for anemia)
Instance: IronSupplementMedication
InstanceOf: MedicationStatement
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
* id = "MedicationStatement-Euthyrox-Novak"
* status = #active   // http://hl7.org/fhir/CodeSystem/medication-statement-status nebo https://hl7.org/fhir/R4/valueset-medication-statement-status.html
//stav
* statusReason.coding[0].system = $cz-medicationStatement-reason-status 
* statusReason.coding[0].code = #continued
* statusReason.coding[0].display = "Pokračuje"
* statusReason.text = "Pokračuje"
//indikace
* reasonCode.coding[0].system = $MKN10
* reasonCode.coding[0].code = #E039
* reasonCode.coding[0].display = "Hypotyreóza"
* reasonCode.text = "Hypotyreóza"
//dávkování
* dosage[0].text = "1 tableta denně"
* dosage[0].timing.repeat.frequency = 1
* dosage[0].timing.repeat.period = 1 
* dosage[0].timing.repeat.periodUnit = #d
* dosage[0].doseAndRate.doseQuantity.value = 1
* dosage[0].doseAndRate.doseQuantity.unit = "tableta"
//cesta podání
* dosage[0].route.coding[0].system = $cz-medicationStatement-route
* dosage[0].route.coding[0].code = #PO
* dosage[0].route.coding[0].display = "Per os"  
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
* subject = Reference(Patient-Novak-Petr)
* identifier[0].system = $cz-medication-DLP     //tady má být External identifier
* identifier[0].value = "0243131"       //tady má být External identifier
* category[0].coding[0].system = $cz-medicationStatement-category 
* category[0].coding[0].code = #Inpatient
* category[0].coding[0].display = "Inpatient"
* category[0].text = "Inpatient"

//---------------------------------------------------------------------
Instance: MedicationStatement-Paracetamol-Novak
InstanceOf: CZ_MedicationStatement
* id = "MedicationStatement-Paracetamol-Novak"
* status = #active   
//stav
* statusReason.coding[0].system = $cz-medicationStatement-reason-status 
* statusReason.coding[0].code = #continued
* statusReason.coding[0].display = "Pokračuje"
* statusReason.text = "Pokračuje"
//indikace
* reasonCode.coding[0].system = $MKN10
* reasonCode.coding[0].code = #E039
* reasonCode.coding[0].display = "Hypotyreóza"
* reasonCode.text = "Hypotyreóza"
//dávkování
* dosage[0].text = "Dle potřeby, max 4 tablety denně"
* dosage[0].asNeededBoolean = true
* dosage[0].doseAndRate.doseQuantity.value = 500
* dosage[0].doseAndRate.doseQuantity.unit = "mg"
//cesta podání
* dosage[0].route.coding[0].system = $cz-medicationStatement-route
* dosage[0].route.coding[0].code = #PO
* dosage[0].route.coding[0].display = "Per os"  
// období podávání
* effectivePeriod.start = "2025-03-01T10:15:00+01:00"
* effectivePeriod.end = "2025-03-10T09:30:00+01:00"
//dělka vybavení
//------- chybí 
// reference a další údaje
* medicationReference = Reference(Medication-Paracetamol)
* subject = Reference(Patient-Novak-Petr)
* identifier[0].system = $cz-medication-DLP //tady má být External identifier
* identifier[0].value = "0243131"   //tady má být External identifier
* category[0].coding[0].system = $cz-medicationStatement-category 
* category[0].coding[0].code = #Inpatient
* category[0].coding[0].display = "Inpatient"
* category[0].text = "Inpatient"

//---------------------------------------------------------------------
Instance: MedicationStatement-Ibalgin400-Novak
InstanceOf: CZ_MedicationStatement
* id = "MedicationStatement-Ibalgin400-Novak"
* status = #active   
//stav
* statusReason.coding[0].system = $cz-medicationStatement-reason-status 
* statusReason.coding[0].code = #continued
* statusReason.coding[0].display = "Pokračuje"
* statusReason.text = "Pokračuje"
//indikace
* reasonCode.coding[0].system = $MKN10
* reasonCode.coding[0].code = #E039
* reasonCode.coding[0].display = "Hypotyreóza"
* reasonCode.text = "Hypotyreóza"
//dávkování
* dosage[0].text = "Dle potřeby, při bolesti max 3 tablety denně"
* dosage[0].asNeededBoolean = true
* dosage[0].doseAndRate.doseQuantity.value = 400
* dosage[0].doseAndRate.doseQuantity.unit = "mg"
//cesta podání
* dosage[0].route.coding[0].system = $cz-medicationStatement-route
* dosage[0].route.coding[0].code = #PO
* dosage[0].route.coding[0].display = "Per os"  
// období podávání
* effectivePeriod.start = "2025-03-01T10:15:00+01:00"
* effectivePeriod.end = "2025-03-10T09:30:00+01:00"
//dělka vybavení
//------- chybí 
// reference a další údaje
* medicationReference = Reference(Medication-Ibalgin400)
* subject = Reference(Patient-Novak-Petr)
* identifier[0].system = $cz-medication-DLP //tady má být External identifier
* identifier[0].value = "0207893"   //tady má být External identifier
* category[0].coding[0].system = $cz-medicationStatement-category 
* category[0].coding[0].code = #Inpatient
* category[0].coding[0].display = "Inpatient"
* category[0].text = "Inpatient"


