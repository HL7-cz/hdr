/*Instance: DischargeComposition
InstanceOf: CZ_CompositionHdr
* meta.profile[0] = "https://hl7.cz/fhir/hdr/StructureDefinition/cz-composition-hdr"
//* id = "discharge-composition"
* status = #final
* type.coding[0].system = "http://loinc.org"
* type.coding[0].code = #34105-7
* type.coding[0].display = "Hospital Discharge summary"
* category[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/document-classcodes"
* category[0].coding[0].code = #18842-5
* category[0].coding[0].display = "Discharge summary"
* title = "Propouštěcí zpráva"
* date = "2025-03-10T14:30:00+01:00"
* author[0] = Reference(Practitioner-2)            // document authored by practitioner role
* subject = Reference(Mracena2)
* encounter = Reference(CZ-Encounter-HDR-Example)
//* custodian = Reference(CZ_OrganizationCore)

// Composition Sections:
* section[sectionDiagnosticSummary].title = "Diagnostický souhrn"
* section[sectionDiagnosticSummary].code = $loinc#11450-4 "Problem list" // Corrected code assignment
* section[sectionDiagnosticSummary].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Diagnoses at discharge</div>" // Corrected to Narrative type
* section[sectionDiagnosticSummary].text.status = #generated
* section[sectionDiagnosticSummary].entry[0] = Reference(AngiodysplasiaCondition)
* section[sectionDiagnosticSummary].entry[1] = Reference(IronDeficiencyAnemiaCondition)
* section[sectionDiagnosticSummary].entry[2] = Reference(TIACondition)
* section[sectionDiagnosticSummary].entry[3] = Reference(AtrialFibrillationCondition)
* section[sectionDiagnosticSummary].entry[4] = Reference(HypothyroidismCondition)
* section[sectionDiagnosticSummary].entry[5] = Reference(VaricoseVeinsCondition)
* section[sectionDiagnosticSummary].entry[6] = Reference(OsteoporosisCondition)
* section[sectionDiagnosticSummary].entry[7] = Reference(HypercholesterolemiaCondition)
* section[sectionDiagnosticSummary].entry[8] = Reference(PresbycusisCondition)

* section[sectionAllergies].title = "Alergie, intolerance a varování"
* section[sectionAllergies].code.coding[0].system = "http://loinc.org"
* section[sectionAllergies].code.coding[0].code = #48765-2 // Corrected code assignment
* section[sectionAllergies].code.coding[0].display = "Allergies and adverse reactions"
* section[sectionAllergies].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Alergie at discharge</div>" // Corrected to Narrative type
* section[sectionAllergies].text.status = #generated
* section[sectionAllergies].entry[0] = Reference(PenicillinAllergy)
* section[sectionAllergies].entry[1] = Reference(StrawberryAllergy)
* section[sectionAllergies].entry[2] = Reference(MilkAllergy)

* section[sectionMedications].title = "Souhrn medikace"
* section[sectionMedications].code.coding[0].system = "http://loinc.org"
* section[sectionMedications].code.coding[0].code = #10160-0 // Corrected code assignment
* section[sectionMedications].code.coding[0].display = "History of medication use"
* section[sectionMedications].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Medication at discharge</div>" // Corrected to Narrative type
* section[sectionMedications].text.status = #generated
* section[sectionMedications].entry[0] = Reference(LevothyroxineMedication)
* section[sectionMedications].entry[1] = Reference(RivaroxabanMedication)
* section[sectionMedications].entry[2] = Reference(BisoprololMedication)
* section[sectionMedications].entry[3] = Reference(AtorvastatinMedication)
* section[sectionMedications].entry[4] = Reference(CalciumD3Medication)
* section[sectionMedications].entry[5] = Reference(IronSupplementMedication)
//* section[2].entry[6] = Reference(ColonoscopyProcedure) // Added reference to ColonoscopyProcedure

* section[sectionProceduresHx].title = "Provedené zákroky"
* section[sectionProceduresHx].code.coding[0].system = "http://loinc.org"
* section[sectionProceduresHx].code.coding[0].code = #47519-4 // Corrected code assignment
* section[sectionProceduresHx].code.coding[0].display = "Procedure Note"
* section[sectionProceduresHx].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Hospital course details go here.</div>" // Added required text for cardinality
* section[sectionProceduresHx].text.status = #generated
* section[sectionProceduresHx].entry[0] = Reference(ColonoscopyProcedure)

//Add section for laboratory results
* section[sectionSignificantResults].title = "Výsledky vyšetření"
* section[sectionSignificantResults].code.coding[0].system = "http://loinc.org"
* section[sectionSignificantResults].code.coding[0].code = #30954-2 // Corrected code assignment
* section[sectionSignificantResults].code.coding[0].display = "Laboratory results"
* section[sectionSignificantResults].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Laboratory results at discharge</div>" // Added required text for cardinality
* section[sectionSignificantResults].text.status = #generated
* section[sectionSignificantResults].entry[0] = Reference(bloodcount-panel) // Corrected Reference to include the resource type

//Add section for careplan
* section[sectionPlanOfCare].title = "Plán péče"
* section[sectionPlanOfCare].code.coding[0].system = "http://loinc.org"
* section[sectionPlanOfCare].code.coding[0].code = #18776-5 // Corrected code assignment
* section[sectionPlanOfCare].code.coding[0].display = "Care plan"
* section[sectionPlanOfCare].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Care plan at discharge</div>" // Added required text for cardinality
* section[sectionPlanOfCare].text.status = #generated
* section[sectionPlanOfCare].entry[0] = Reference(CZ-CarePlan-HDR-Example)

//Add section for advanced directives
* section[sectionAdvanceDirectives].title = "Dříve vyjádřená přání"
* section[sectionAdvanceDirectives].code.coding[0].system = "http://loinc.org"
* section[sectionAdvanceDirectives].code.coding[0].code = #42348-3 // Corrected code assignment
* section[sectionAdvanceDirectives].code.coding[0].display = "Advance directives"
* section[sectionAdvanceDirectives].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Known advance directives</div>" // Added required text for cardinality
* section[sectionAdvanceDirectives].text.status = #generated
* section[sectionAdvanceDirectives].entry[0] = Reference(CZ-AdvanceDirectives-HDR-DNR)

//Add section for imunizations
* section[sectionImmunizations].title = "Očkování"
* section[sectionImmunizations].code.coding[0].system = "http://loinc.org"
* section[sectionImmunizations].code.coding[0].code = #11369-6 // Corrected code assignment
* section[sectionImmunizations].code.coding[0].display = "History of Immunization Narrative"
* section[sectionImmunizations].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Immunizations at discharge</div>" // Added required text for cardinality
* section[sectionImmunizations].text.status = #generated
* section[sectionImmunizations].entry[0] = Reference(Immunization)

//Add section for social history
* section[sectionSocialHistory].title = "Sociální anamnéza"
* section[sectionSocialHistory].code.coding[0].system = "http://loinc.org"
* section[sectionSocialHistory].code.coding[0].code = #29762-2 // Corrected code assignment
* section[sectionSocialHistory].code.coding[0].display = "Social history Narrative"
* section[sectionSocialHistory].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Social history at discharge</div>" // Added required text for cardinality
* section[sectionSocialHistory].text.status = #generated
* section[sectionSocialHistory].entry[0] = Reference(ExampleSdohSmoking)
* section[sectionSocialHistory].entry[1] = Reference(ExampleSdohAlcohol)

* section[sectionHospitalCourse].title = "Klinické shrnutí"
* section[sectionHospitalCourse].code = $loinc#8648-8 "Průběh hospitalizace"
* section[sectionHospitalCourse].text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
  Pacient byl přijat ...
  </div>""" // TODO: Needs update !!!
* section[sectionHospitalCourse].text.status = #generated


* section[9].title = "P\u0159\u00edlohy"
* section[9].entry[0] = Reference(DischargeDocumenPDF)
* section[9].entry[1] = Reference(DischargeDocumentHTML)
* section[9].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Přílohy</div>" // Added required text for cardinality
* section[9].text.status = #generated*/

//-----------------------------------------------------------------

Instance: DischargeComposition-Novak-Petr
InstanceOf: CZ_CompositionHdr
Title: "Propouštěcí zpráva - Novák Petr"
Description: "Example of Hospital Discharge report (Composition)"
Usage: #example
* id = "cdae7735-f7ee-4bc7-9cf3-3dc806a4eaaf"
* status = #final
* type.coding[0].system = $loinc
* type.coding[0].code = #34105-7
* type.coding[0].display = "Hospital Discharge summary"
* category[0].coding[0].system = $composition-category
* category[0].coding[0].code = #18842-5
* category[0].coding[0].display = "Discharge summary"
* title = "Propouštěcí zpráva"
* date = "2025-03-10T14:30:00+01:00"
* author[+] = Reference(Practitioner-Author)
* author[+] = Reference(Practitioner-Author-detail)
* author[+] = Reference(CZ_OrganizationCore/Organization-1)         // document authored by practitioner role
* subject = Reference(Patient-Novak-Petr)            // document subject is patient
* encounter = Reference(HospitalEncounter-Novak-Petr)
//Sekce Průběh hospitalizace - klinické shrnutí
* section[sectionHospitalCourse].title = "Klinické shrnutí"
* section[sectionHospitalCourse].code = $loinc#8648-8 "Průběh hospitalizace"
* section[sectionHospitalCourse].text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
  Pacient byl přijat dne 1. 3. 2025 na chirurgické oddělení s bolestivou pravostrannou tříselnou kýlou, která byla nevratná, bez známek strangulace. Během hospitalizace byla provedena předoperační příprava včetně laboratorních vyšetření a interního předoperačního vyšetření.
  Dne 2. 3. 2025 byla v celkové anestezii provedena operace – plastika pravostranné tříselné kýly. Operační výkon proběhl bez komplikací. Pacient byl pooperačně stabilní, bez známek infekce rány.
  V rámci hospitalizace byla u pacienta sledována substituční léčba hypotyreózy (Euthyrox 75 µg denně), bez nutnosti úpravy dávkování. Hodnota TSH při přijetí v normě.
  Pacient byl v dobrém stavu propuštěn do domácího ošetření dne 10. 3. 2025. Doporučena klidová režimová opatření, kontrola v chirurgické ambulanci za 7 dní.
  </div>""" // Added required text for cardinality
* section[sectionHospitalCourse].text.status = #generated
//* section[sectionHospitalCourse].title = "Průběh hospitalizace - klinické shrnutí"
// Sekce Alergie
* section[sectionAllergies].title = "Alergie, intolerance a varování"
* section[sectionAllergies].code.coding[0].system = $loinc
* section[sectionAllergies].code.coding[0].code = #48765-2 // Allergies and adverse reactions
* section[sectionAllergies].code.coding[0].display = "Alergie, intolerance"
* section[sectionAllergies].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Alergie na jahody, od 01.01.2020, reakce: Svědění, otok jazyka</div>" // Corrected to Narrative type
* section[sectionAllergies].text.status = #generated
* section[sectionAllergies].entry = Reference(Allergy-Strawberry-Novak)
//Sekce Předem vyslovená přání
* section[sectionAdvanceDirectives].title = "Dříve vyjádřená přání"
* section[sectionAdvanceDirectives].code.coding[0].display = "Advance directives"
* section[sectionAdvanceDirectives].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Neresuscitovat</div>"
* section[sectionAdvanceDirectives].text.status = #generated
* section[sectionAdvanceDirectives].entry[0] = Reference(CZ-AdvanceDirectives-HDR-DNR)
// Sekce Diagnostický souhrn
* section[sectionDiagnosticSummary].title = "Diagnostický souhrn"
* section[sectionDiagnosticSummary].code.coding[0].system = $loinc
* section[sectionDiagnosticSummary].code.coding[0].code = #11450-4 // Problem list
* section[sectionDiagnosticSummary].code.coding[0].display = "Diagnostický souhrn"
* section[sectionDiagnosticSummary].text.div = """
  <div xmlns="http://www.w3.org/1999/xhtml">
    <p>K40.9 – Inguinální kýla, nespecifikovaná </p>
    <p>E89.0 – Hypotyreóza po léčbě (v anamnéze) </p>
  </div>
  """
* section[sectionDiagnosticSummary].text.status = #generated
* section[sectionDiagnosticSummary].entry[0] = Reference(Condition-K409)
* section[sectionDiagnosticSummary].entry[1] = Reference(Condition-E890-Novak)
// Sekce Významné procedury
* section[sectionSignificantProcedures].title = "Významné procedury"
* section[sectionSignificantProcedures].code.coding[0].system = $loinc
* section[sectionSignificantProcedures].code.coding[0].code = #10185-7
* section[sectionSignificantProcedures].code.coding[0].display = "Hospital discharge procedures"
* section[sectionSignificantProcedures].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Plastika pravostranné tříselné kýly dne 2. 3. 2025.</div>"
* section[sectionSignificantProcedures].text.status = #generated
* section[sectionSignificantProcedures].entry[0] = Reference(Procedure-inguinal-hernia)
//Sekce Souhrn Medikace
* section[sectionMedications].title = "Medikace"
* section[sectionMedications].code.coding[0].system = $loinc
* section[sectionMedications].code.coding[0].code = #10160-0
* section[sectionMedications].code.coding[0].display = "Discharge medications Narrative"
* section[sectionMedications].text.div = """
  <div xmlns="http://www.w3.org/1999/xhtml">
    <p>Medikace při propuštění</p>
    <ul>
      <li>Euthyrox 75 µg denně – substituce hypotyreózy</li>
      <li>Paracetamol 500 mg – při bolesti</li>
      <li>Ibalgin 400 mg – při bolesti</li>
    </ul>
  </div>
  """
* section[sectionMedications].text.status = #generated
* section[sectionMedications].entry[0] = Reference(MedicationStatement-Euthyrox-Novak)
* section[sectionMedications].entry[1] = Reference(MedicationStatement-Paracetamol-Novak)
* section[sectionMedications].entry[2] = Reference(MedicationStatement-Ibalgin400-Novak)

///sekce Výsledky vyšetření
* section[sectionSignificantResults].title = "Výsledky vyšetření"
* section[sectionSignificantResults].code.coding[0].system = $loinc
* section[sectionSignificantResults].code.coding[0].code = #30954-2  //Relevant diagnostic tests/laboratory data
* section[sectionSignificantResults].code.coding[0].display = "Výsledky vyšetření"
* section[sectionSignificantResults].text.div = """
  <div xmlns="http://www.w3.org/1999/xhtml">
    <p>Významné výsledky vyšetření v průběhu hospitalizace</p>
    <ul>
      <li>UZ vyšetření pravého třísla: v oblasti tříselného kanálu patrný hypoechogenní vak komunikující s peritoneální dutinou, obsahující střevní kličku. Obsah je mobilní, bez známek ischemie. Závěr: vpravo tříselná kýla bez známek komplikace.</li>
      <li>CRP: 6 mg/L (norma: 0–10 mg/L)</li>
    </ul>
  </div>"""
* section[sectionSignificantResults].text.status = #generated
* section[sectionSignificantResults].entry[0] = Reference(Observation-UZV-Novak) // Corrected Reference to include the resource type
* section[sectionSignificantResults].entry[1] = Reference(Observation-CRP-Novak) // Corrected Reference to include the resource type

/* // Sekce Historie Implantátů
* section[sectionMedicalDevices].title = "Zdravotní pomůcky a implantáty"
* section[sectionMedicalDevices].code.coding[0].system = $loinc
* section[sectionMedicalDevices].code.coding[0].code = #46264-8 // Historie implantátů
* section[sectionMedicalDevices].code.coding[0].display = "Medical devices and implants"
* section[sectionMedicalDevices].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pacient nemá žádné zdravotní pomůcky ani implantáty.</div>" // Added required text for cardinality
* section[sectionMedicalDevices].text.status = #generated
*/

//sekce Doporučení - Plán péče
* section[sectionPlanOfCare].title = "Plán péče"
* section[sectionPlanOfCare].code.coding[0].system = "http://loinc.org"
* section[sectionPlanOfCare].code.coding[0].code = #18776-5   //Plan of care note  (58222-1 .. Discharge plan)
* section[sectionPlanOfCare].code.coding[0].display = "Plán péče"
* section[sectionPlanOfCare].text.div = """
  <div xmlns="http://www.w3.org/1999/xhtml">
  <p>Plán péče – tříselná kýla </p>
     <ul>
      <li>Pooperační sledování, převazy, kontrola rány.</li>
      <li>Edukace pacienta o režimu po operaci.</li>
      <li>Ambulantní kontrola za 14 dní.</li>
    </ul>
  </div>"""
* section[sectionPlanOfCare].text.status = #generated
* section[sectionPlanOfCare].entry[0] = Reference(CarePlan-Novak)
/*
//Sekce Údaje o hospitalizaci
* section[sectionEncounters].title = "Údaje o hospitalizaci"
* section[sectionEncounters].code.coding[0].system = $loinc
* section[sectionEncounters].code.coding[0].code = #10164-2 // Hospitalization summary Narrative
* section[sectionEncounters].code.coding[0].display = "Údaje o hospitalizaci"
* section[sectionEncounters].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"Pacient byl přijat pro bolestivý útvar v pravém třísle, suspektní tříselná kýla."
* section[sectionEncounters].entry[0] = Reference(HospitalEncounter-Novak-Petr)
* section[sectionEncounters].entry[1] = Reference(Condition-K409)

//Add section for imunizations
* section[7].title = "Očkování"
* section[7].code.coding[0].system = "http://loinc.org"
* section[7].code.coding[0].code = #11369-6 // Corrected code assignment
* section[7].code.coding[0].display = "Immunizations"
* section[7].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Immunizations at discharge</div>" // Added required text for cardinality
* section[7].text.status = #generated
* section[7].entry[0] = Reference(Immunization)

//Add section for social history
* section[8].title = "Anamnéza"
* section[8].code.coding[0].system = "http://loinc.org"
* section[8].code.coding[0].code = #72270-4 // Corrected code assignment
* section[8].code.coding[0].display = "Social history"
* section[8].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Social history at discharge</div>" // Added required text for cardinality
* section[8].text.status = #generated
* section[8].entry[0] = Reference(ExampleSdohSmoking)
* section[8].entry[1] = Reference(ExampleSdohAlcohol)

// Add section for attachments
* section[9].title = "P\u0159\u00edlohy"
* section[9].entry[0] = Reference(DischargeDocumenPDF)
* section[9].entry[1] = Reference(DischargeDocumentHTML)
* section[9].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Přílohy</div>" // Added required text for cardinality
* section[9].text.status = #generated
*/