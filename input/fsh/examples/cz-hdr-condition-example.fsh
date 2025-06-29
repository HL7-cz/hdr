Instance: CZ-Condition-HDR-Example
InstanceOf: CZ_ConditionHdr
Usage: #example
Title: "CZ-Condition-HDR Example"
Description: "Czech HDR - example of a condition (Heart Failure)"

* clinicalStatus = #active
* verificationStatus = #confirmed
* category[0] = $condition-category#encounter-diagnosis "Encounter Diagnosis"
* category[1] = $sct#278307001 "On admission"
* category[2] = $sct#25265005 "Not received therapy or drug for"
* severity = $sct#24484000 "Severe"
* code = $icd10#I50 "Heart failure"
* subject = Reference(Mracena2)
* onsetDateTime = "2025-01-01T08:00:00+01:00"
* note.text = "Patient diagnosed with heart failure during hospital stay."


// Condition note
* note[0].text = "Patient diagnosed with heart failure during hospital stay."

Instance: CZ-Condition-HDR-Example-2
InstanceOf: CZ_ConditionHdr
Usage: #example
Title: "CZ-Condition-HDR Example 2"
Description: "Czech HDR - example of a condition (Cardiac arrhythmia - Brugada Syndrome)"

* clinicalStatus = #active
* verificationStatus = #confirmed
* category[0] = $sct#64572001 "Disease"
* category[1] = $sct#278307001 "On admission"
* category[2] = $sct#25265005 "Not received therapy or drug for"
* severity = $sct#6736007 "Moderate"
* code = urn:oid:1.2.203.24341.11.2.1#I498 "Jiné určené srdeční arytmie"
* subject = Reference(Mracena2)
* onsetDateTime = "2013-01-09T00:00:00+01:00"
* note.text = "Brugada Syndrom diagnostikován v roce 2013."

Instance: CZ-Condition-HDR-Example-3
InstanceOf: CZ_ConditionHdr
Usage: #example
Title: "CZ-Condition-HDR Example 3"
Description: "Czech HDR - example of a condition (Postoperative Hypothyroidism)"

* clinicalStatus = #active
* verificationStatus = #confirmed
* category[0] = $sct#64572001 "Disease"
* category[1] = $sct#278307001 "On admission"
* category[2] = $sct#25265005 "Not received therapy or drug for"
* code = urn:oid:1.2.203.24341.11.2.1#E890 "Hypotyreóza po operačních a jiných výkonech"
* subject = Reference(Mracena2)
* onsetDateTime = "1997-10-06T00:00:00+02:00"
* note.text = "Hypotyreóza po operaci karcinomu štítné žlázy. Zadáno všeobecným lékařem."


//--------------------------------------------
Instance: Condition-K409 
InstanceOf: CZ_ConditionHdr
Usage: #example
Title: "CZ-Condition-HDR Example K409"
Description: "Example of a condition K409 with details on admission"
// Condition details
* clinicalStatus = #active
* verificationStatus = #confirmed
* severity.coding[0].system = $sct
* severity.coding[0].code = #24484000
* severity.coding[0].display = "Závažná"
// Condition code
* code.coding[0].system = $icd10
* code.coding[0].code = #K409
* code.coding[0].display = "Tříselná kýla, neurčená, bez obstrukce a gangrény"
// Condition subject and onset
* subject = Reference(Patient-Novak-Petr)
// Condition text
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  Pacient byl přijat s diagnózou tříselné kýly bez obstrukce a gangrény. Doporučena elektivní operace.
</div>
"""
//Condition category
* category[0] = $sct#278307001 "On admission"
* category[1] = $sct#69845001 "Léčeno"
//condition onset
* onsetDateTime = "2023-10-01T10:00:00Z"
//condition stage
* stage[+].summary.coding[0].system = $sct
* stage[=].summary.coding[0].code = #255604002
* stage[=].summary.coding[0].display = "Mírný"

//---------------------------------------------
// 5. Condition: Angiodysplasia of colon (CZ_ConditionHdr)
Instance: AngiodysplasiaCondition
InstanceOf: CZ_ConditionHdr
* meta.profile[0] = "https://hl7.cz/fhir/hdr/StructureDefinition/cz-condition-hdr"
//* id = "condition-k55-2"
* clinicalStatus.coding[0].system = "http://terminology.hl7.org/CodeSystem/condition-clinical"
* clinicalStatus.coding[0].code = #active // Corrected code assignment
* verificationStatus.coding[0].system = "http://terminology.hl7.org/CodeSystem/condition-ver-status"
* verificationStatus.coding[0].code = #confirmed // Corrected code assignment
* category[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/condition-category"
* category[0].coding[0].code = #diagnosis // Corrected code assignment
* code.coding[0].system = "http://hl7.org/fhir/sid/icd-10"
* code.coding[0].code = #K55.2 // Corrected code assignment
* code.coding[0].display = "Angiodysplasia of colon"
* code.text = "Angiodyspl\u00e1zie tra\u010dn\u00edku"
* subject = Reference(Mracena2)
* category[1] = $sct#278307001 "On admission"
* category[2] = $sct#25265005 "Not received therapy or drug for"

// Condition: Iron deficiency anemia due to chronic blood loss
Instance: IronDeficiencyAnemiaCondition
InstanceOf: CZ_ConditionHdr
* meta.profile[0] = "https://hl7.cz/fhir/hdr/StructureDefinition/cz-condition-hdr"
//* id = "condition-d50-0"
* clinicalStatus.coding[0].system = "http://terminology.hl7.org/CodeSystem/condition-clinical"
* clinicalStatus.coding[0].code = #active // Corrected code assignment
* verificationStatus.coding[0].system = "http://terminology.hl7.org/CodeSystem/condition-ver-status"
* verificationStatus.coding[0].code = #confirmed // Corrected code assignment
* category[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/condition-category"
* category[0].coding[0].code = #diagnosis // Corrected code assignment
* code.coding[0].system = "http://hl7.org/fhir/sid/icd-10"
* code.coding[0].code = #D50.0 // Corrected code assignment
* code.coding[0].display = "Iron deficiency anemia secondary to blood loss (chronic)"
* code.text = "An\u00e9mie z nedostatku \u017eeleza p\u0159i chronick\u00e9 krevn\u00ed ztr\u00e1t\u011b"
* subject = Reference(Mracena2)
* category[1] = $sct#278307001 "On admission"
* category[2] = $sct#25265005 "Not received therapy or drug for"

// Condition: Transient ischemic attack (TIA)
Instance: TIACondition
InstanceOf: CZ_ConditionHdr
* meta.profile[0] = "https://hl7.cz/fhir/hdr/StructureDefinition/cz-condition-hdr"
//* id = "condition-g45-9"
* clinicalStatus.coding[0].system = "http://terminology.hl7.org/CodeSystem/condition-clinical"
* clinicalStatus.coding[0].code = #active // Corrected code assignment
* verificationStatus.coding[0].system = "http://terminology.hl7.org/CodeSystem/condition-ver-status"
* verificationStatus.coding[0].code = #confirmed // Corrected code assignment
* category[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/condition-category"
* category[0].coding[0].code = #diagnosis // Corrected code assignment
* code.coding[0].system = "http://hl7.org/fhir/sid/icd-10"
* code.coding[0].code = #G45.9 // Corrected code assignment
* code.coding[0].display = "Transient cerebral ischemic attack, unspecified"
* code.text = "Tranzitorn\u00ed ischemick\u00e1 ataka"
* subject = Reference(Mracena2)
* category[1] = $sct#278307001 "On admission"
* category[2] = $sct#25265005 "Not received therapy or drug for"

// Condition: Persistent atrial fibrillation
Instance: AtrialFibrillationCondition
InstanceOf: CZ_ConditionHdr
* meta.profile[0] = "https://hl7.cz/fhir/hdr/StructureDefinition/cz-condition-hdr"
//* id = "condition-i48-1"
* clinicalStatus.coding[0].system = "http://terminology.hl7.org/CodeSystem/condition-clinical"
* clinicalStatus.coding[0].code = #active // Corrected code assignment
* verificationStatus.coding[0].system = "http://terminology.hl7.org/CodeSystem/condition-ver-status"
* verificationStatus.coding[0].code = #confirmed // Corrected code assignment
* category[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/condition-category"
* category[0].coding[0].code = #diagnosis // Corrected code assignment
* code.coding[0].system = "http://hl7.org/fhir/sid/icd-10"
* code.coding[0].code = #I48.1 // Corrected code assignment
* code.coding[0].display = "Persistent atrial fibrillation"
* code.text = "Perzistuj\u00edc\u00ed fibrilace s\u00edn\u00ed"
* subject = Reference(Mracena2)
* category[1] = $sct#278307001 "On admission"
* category[2] = $sct#25265005 "Not received therapy or drug for"

// Condition: Hypothyroidism due to therapy
Instance: HypothyroidismCondition
InstanceOf: CZ_ConditionHdr
* meta.profile[0] = "https://hl7.cz/fhir/hdr/StructureDefinition/cz-condition-hdr"
//* id = "condition-e03-2"
* clinicalStatus.coding[0].system = "http://terminology.hl7.org/CodeSystem/condition-clinical"
* clinicalStatus.coding[0].code = #active // Corrected code assignment
* verificationStatus.coding[0].system = "http://terminology.hl7.org/CodeSystem/condition-ver-status"
* verificationStatus.coding[0].code = #confirmed // Corrected code assignment
* category[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/condition-category"
* category[0].coding[0].code = #diagnosis // Corrected code assignment
* code.coding[0].system = "http://hl7.org/fhir/sid/icd-10"
* code.coding[0].code = #E03.2 // Corrected code assignment
* code.coding[0].display = "Hypothyroidism due to medicaments and other exogenous substances"
* code.text = "Hypotyre\u00f3za v d\u016fsledku l\u00e9\u010dby"
* subject = Reference(Mracena2)
* category[1] = $sct#278307001 "On admission"
* category[2] = $sct#25265005 "Not received therapy or drug for"

// Condition: Varicose veins of lower extremities
Instance: VaricoseVeinsCondition
InstanceOf: CZ_ConditionHdr
* meta.profile[0] = "https://hl7.cz/fhir/hdr/StructureDefinition/cz-condition-hdr"
//* id = "condition-i83-9"
* clinicalStatus.coding[0].system = "http://terminology.hl7.org/CodeSystem/condition-clinical"
* clinicalStatus.coding[0].code = #active // Corrected code assignment
* verificationStatus.coding[0].system = "http://terminology.hl7.org/CodeSystem/condition-ver-status"
* verificationStatus.coding[0].code = #confirmed // Corrected code assignment
* category[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/condition-category"
* category[0].coding[0].code = #diagnosis // Corrected code assignment
* code.coding[0].system = "http://hl7.org/fhir/sid/icd-10"
* code.coding[0].code = #I83.9 // Corrected code assignment
* code.coding[0].display = "Varicose veins of lower extremities, unspecified"
* code.text = "K\u0159e\u010dov\u00e9 \u017e\u00edly doln\u00edch kon\u010detin"
* subject = Reference(Mracena2)
* category[1] = $sct#278307001 "On admission"
* category[2] = $sct#25265005 "Not received therapy or drug for"

// Condition: Osteoporosis without pathological fracture
Instance: OsteoporosisCondition
InstanceOf: CZ_ConditionHdr
* meta.profile[0] = "https://hl7.cz/fhir/hdr/StructureDefinition/cz-condition-hdr"
//* id = "condition-m81-0"
* clinicalStatus.coding[0].system = "http://terminology.hl7.org/CodeSystem/condition-clinical"
* clinicalStatus.coding[0].code = #active // Corrected code assignment
* verificationStatus.coding[0].system = "http://terminology.hl7.org/CodeSystem/condition-ver-status"
* verificationStatus.coding[0].code = #confirmed // Corrected code assignment
* category[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/condition-category"
* category[0].coding[0].code = #diagnosis // Corrected code assignment
* code.coding[0].system = "http://hl7.org/fhir/sid/icd-10"
* code.coding[0].code = #M81.0 // Corrected code assignment
* code.coding[0].display = "Age-related osteoporosis without current pathological fracture"
* code.text = "Osteopor\u00f3za bez patologick\u00e9 fraktury"
* subject = Reference(Mracena2)
* category[1] = $sct#278307001 "On admission"
* category[2] = $sct#25265005 "Not received therapy or drug for"

// Condition: Pure hypercholesterolemia
Instance: HypercholesterolemiaCondition
InstanceOf: CZ_ConditionHdr
* meta.profile[0] = "https://hl7.cz/fhir/hdr/StructureDefinition/cz-condition-hdr"
//* id = "condition-e78-0"
* clinicalStatus.coding[0].system = "http://terminology.hl7.org/CodeSystem/condition-clinical"
* clinicalStatus.coding[0].code = #active // Corrected code assignment
* verificationStatus.coding[0].system = "http://terminology.hl7.org/CodeSystem/condition-ver-status"
* verificationStatus.coding[0].code = #confirmed // Corrected code assignment
* category[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/condition-category"
* category[0].coding[0].code = #diagnosis // Corrected code assignment
* code.coding[0].system = "http://hl7.org/fhir/sid/icd-10"
* code.coding[0].code = #E78.0 // Corrected code assignment
* code.coding[0].display = "Pure hypercholesterolemia"
* code.text = "Hypercholesterol\u00e9mie"
* subject = Reference(Mracena2)
* category[1] = $sct#278307001 "On admission"
* category[2] = $sct#25265005 "Not received therapy or drug for"

// Condition: Presbycusis (age-related hearing loss)
Instance: PresbycusisCondition
InstanceOf: CZ_ConditionHdr
* meta.profile[0] = "https://hl7.cz/fhir/hdr/StructureDefinition/cz-condition-hdr"
//* id = "condition-h91-1"
* clinicalStatus.coding[0].system = "http://terminology.hl7.org/CodeSystem/condition-clinical"
* clinicalStatus.coding[0].code = #active // Corrected code assignment
* verificationStatus.coding[0].system = "http://terminology.hl7.org/CodeSystem/condition-ver-status"
* verificationStatus.coding[0].code = #confirmed // Corrected code assignment
* category[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/condition-category"
* category[0].coding[0].code = #diagnosis // Corrected code assignment
* code.coding[0].system = "http://hl7.org/fhir/sid/icd-10"
* code.coding[0].code = #H91.1 // Corrected code assignment
* code.coding[0].display = "Presbycusis"
* code.text = "Presbyakuze (sta\u0159eck\u00e1 nedosl\u00fdchavost)"
* subject = Reference(Mracena2)
* category[1] = $sct#278307001 "On admission"
* category[2] = $sct#25265005 "Not received therapy or drug for"

//---------------------------------------------
Instance: Condition-E890-Novak
InstanceOf: CZ_ConditionHdr
Usage: #example
Title: "CZ-Condition-HDR Example 3"
Description: "Czech HDR - example of a condition (Postoperative Hypothyroidism)"

* clinicalStatus = #active
* verificationStatus = #confirmed
* category[0] = $sct#64572001 "Disease"
* category[1] = $sct#278307001 "On admission"
* category[2] = $sct#25265005 "Not received therapy or drug for"
* code = $icd10#E890 "Hypotyreóza po operačních a jiných výkonech"
* subject = Reference(Patient-Novak-Petr)
* onsetDateTime = "1997-10-06T00:00:00+02:00"
* note.text = "Hypotyreóza po operaci karcinomu štítné žlázy. Zadáno všeobecným lékařem."