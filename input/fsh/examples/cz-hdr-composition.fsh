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


*/

//-----------------------------------------------------------------

Instance: DischargeComposition-Novak-Petr
InstanceOf: CZ_CompositionHdr
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
* author[+] = Reference(Organization-1)         // document authored by practitioner role
* subject = Reference(Patient-Novak-Petr)            // document subject is patient
* encounter = Reference(HospitalEncounter-Novak-Petr)

//doplň mi tu sekci Stav při přijetí
* section[sectionAdmissionEvaluation].title = "Stav při přijetí"
* section[sectionAdmissionEvaluation].code.coding[0].system = $loinc
* section[sectionAdmissionEvaluation].code.coding[0].code = #67852-4 // Corrected code assignment
* section[sectionAdmissionEvaluation].code.coding[0].display = "Admission status"
* section[sectionAdmissionEvaluation].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pacient byl přijat na chirurgické oddělení s bolestivou pravostrannou tříselnou kýlou, která byla nevratná, bez známek strangulace. Při příjmu byl pacient v dobrém stavu, vitální funkce stabilní. Při fyzikálním vyšetření bylo zjištěno bolestivé zduření v oblasti pravého tříselného kanálu, bez známek zánětu nebo infekce. Laboratorní vyšetření ukázalo normální hodnoty krevního obrazu a biochemie, včetně TSH v normálním rozmezí. Pacient byl stabilní, bez známek dehydratace nebo hypovolemie. Byla zahájena předoperační příprava včetně interního vyšetření a laboratorních testů. Pacient byl informován o nutnosti chirurgického zákroku a souhlasil s ním. </div>" // Added required text for cardinality
* section[sectionAdmissionEvaluation].text.status = #additional
* section[sectionAdmissionEvaluation].entry[0] = Reference(ExampleChestCircumference)
* section[sectionAdmissionEvaluation].entry[1] = Reference(ExampleHeadCircumference)
* section[sectionAdmissionEvaluation].entry[2] = Reference(ExampleAbdominalCircumference)
* section[sectionAdmissionEvaluation].entry[3] = Reference(ExampleHeight)
* section[sectionAdmissionEvaluation].entry[4] = Reference(ExampleWeight) 
* section[sectionAdmissionEvaluation].entry[5] = Reference(ExampleBloodPressure) // Corrected Reference to include the resource type
* section[sectionAdmissionEvaluation].entry[6] = Reference(ExampleBMI) // Corrected Reference to include the resource type


//Sekce Průběh hospitalizace - klinické shrnutí
* section[sectionHospitalCourse].title = "Klinické shrnutí"
* section[sectionHospitalCourse].code = $loinc#8648-8 "Průběh hospitalizace"
* section[sectionHospitalCourse].text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
  Pacient byl přijat dne 1. 3. 2025 na chirurgické oddělení s bolestivou pravostrannou tříselnou kýlou, která byla nevratná, bez známek strangulace. Během hospitalizace byla provedena předoperační příprava včetně laboratorních vyšetření a interního předoperačního vyšetření.
  Dne 2. 3. 2025 byla v celkové anestezii provedena operace – plastika pravostranné tříselné kýly. Operační výkon proběhl bez komplikací. Pacient byl pooperačně stabilní, bez známek infekce rány.
  V rámci hospitalizace byla u pacienta sledována substituční léčba hypotyreózy (Euthyrox 75 µg denně), bez nutnosti úpravy dávkování. Hodnota TSH při přijetí v normě.
  Pacient byl v dobrém stavu propuštěn do domácího ošetření dne 10. 3. 2025. Doporučena klidová režimová opatření, kontrola v chirurgické ambulanci za 7 dní.
  </div>""" // Added required text for cardinality
* section[sectionHospitalCourse].text.status = #additional //Additional text status for generated narrative /HONza

// Sekce cestovatelská anamnéza
* section[sectionTravelHx].title = "Cestovatelská anamnéza"
* section[sectionTravelHx].code = $loinc#10182-4 "History of travel"
* section[sectionTravelHx].text.status = #additional
* section[sectionTravelHx].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Pacient nedávno cestoval na Madagaskar.</p></div>"
* section[sectionTravelHx].entry[0] = Reference(Observation-TravelHistory-Madagaskar)
* section[sectionTravelHx].author[0] = Reference(Practitioner-Author) // Example reference to a travel history observation


* section[sectionInfectiousContacts].title = "Infekční kontakty"
//* section[sectionInfectiousContacts].code = TemporaryHDRSystem#infection-contact "History of contact with infectious disease"
* section[sectionInfectiousContacts].text.status = #additional
* section[sectionInfectiousContacts].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Pacient byl v kontaktu s osobou nakaženou COVID-19.</p></div>"
* section[sectionInfectiousContacts].entry[0] = Reference(Observation-InfectiousContact)

//* section[sectionHospitalCourse].title = "Průběh hospitalizace - klinické shrnutí"
// Sekce Alergie
* section[sectionAllergies].title = "Alergie, intolerance a varování"
* section[sectionAllergies].code.coding[0].system = $loinc
* section[sectionAllergies].code.coding[0].code = #48765-2 // Allergies and adverse reactions
* section[sectionAllergies].code.coding[0].display = "Alergie, intolerance"
* section[sectionAllergies].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Alergie na jahody, od 01.01.2020, reakce: Svědění, otok jazyka</div>" // Corrected to Narrative type
* section[sectionAllergies].text.status = #additional
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
* section[sectionMedications].code.coding[+].system = $loinc
* section[sectionMedications].code.coding[=].code = #10160-0
* section[sectionMedications].code.coding[=].display = "Discharge medications Narrative"
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
* section[sectionMedications].text.status = #additional
* section[sectionMedications].entry[0] = Reference(MedicationStatement-Euthyrox-Novak)
* section[sectionMedications].entry[1] = Reference(MedicationStatement-Paracetamol-Novak)
* section[sectionMedications].entry[2] = Reference(MedicationStatement-Ibalgin400-Novak)
* section[sectionMedications].entry[3] = Reference(MedicationDispense-Euthyrox)
* section[sectionMedications].entry[4] = Reference(MedicationDispense-Paracetamol)
* section[sectionMedications].entry[5] = Reference(MedicationDispense-Ibalgin400)

//Doporučení další medikace jako MedicationRequest

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
* section[sectionSignificantResults].text.status = #additional
* section[sectionSignificantResults].entry[0] = Reference(Observation-UZV-Novak) // Corrected Reference to include the resource type
* section[sectionSignificantResults].entry[1] = Reference(Observation-CRP-Novak) // Corrected Reference to include the resource type

//Add section for social history
* section[sectionSocialHistory].title = "Sociální anamnéza"
* section[sectionSocialHistory].code.coding[0].system = "http://loinc.org"
* section[sectionSocialHistory].code.coding[0].code = #29762-2 // Corrected code assignment
* section[sectionSocialHistory].code.coding[0].display = "Social history"
/*
* section[sectionSocialHistory].text.div = """
   <div xmlns="http://www.w3.org/1999/xhtml">
    <p>Pacient je ženatý, žije s manželkou ve společné domácnosti. Má dvě dospělé děti, které žijí samostatně.</p>
    <p>Bývalý kuřák, přestal kouřit před 10 lety, předtím cca 20 cigaret denně. Alkohol konzumuje příležitostně, 1–2 piva týdně.</p>
    <p>Bydlí ve vlastním bytě ve 3. patře bez výtahu, pohybuje se samostatně. Je v důchodu, dříve pracoval jako automechanik. Dále udává dobrou sociální oporu a soběstačnost v denních aktivitách.</p>
  </div>"""
  */
* section[sectionSocialHistory].text.div = """
  <div xmlns="http://www.w3.org/1999/xhtml">
  <p><strong>Společenské uplatnění</strong></p>
    <p>Pracovní zapojení: Pacient pracuje jako programátor na plný úvazek v IT firmě.</p>
    <p>Koníčky: Pacient aktivně sportuje (jezdí na kole a běhá) a má zájem o fotografování.</p>
    <p>Sociální síť: Pacient má širokou sociální síť, pravidelně se setkává s přáteli a rodinou.</p>
  <p><strong>Vzdělání</strong></p>  
    <p>Dosažený stupeň vzdělání: Pacient má vysokoškolské vzdělání v oboru informatiky.</p>
  </div>"""
* section[sectionSocialHistory].text.status = #additional
* section[sectionSocialHistory].entry[0] = Reference(Observation-Participation-in-society)
* section[sectionSocialHistory].entry[0] = Reference(Observation-Education)
* section[sectionSocialHistory].entry[0] = Reference(ExampleSdohSmokingEnded)
* section[sectionSocialHistory].entry[1] = Reference(ExampleSdohAlcoholSporadic)

///Add section for Family History
* section[sectionFamilyHistory].title = "Rodinná anamnéza"
* section[sectionFamilyHistory].code.coding[0].system = "http://loinc.org"
* section[sectionFamilyHistory].code.coding[0].code = #10157-6 // Corrected code assignment
* section[sectionFamilyHistory].code.coding[0].display = "Family history"
* section[sectionFamilyHistory].text.div = """
  <div xmlns="http://www.w3.org/1999/xhtml">
    <p>Rodinná anamnéza: matka zemřela na infarkt ve věku 75 let, otec žije, má 80 let a trpí hypertenzí. Sourozenci zdraví.</p>
  </div>"""
* section[sectionFamilyHistory].text.status = #additional


//Add section for imunizations
* section[sectionImmunizations].title = "Očkování"
* section[sectionImmunizations].code.coding[0].system = "http://loinc.org"
* section[sectionImmunizations].code.coding[0].code = #11369-6
* section[sectionImmunizations].code.coding[0].display = "Immunizations"
* section[sectionImmunizations].text.div = """
  <div xmlns="http://www.w3.org/1999/xhtml">
    <p>Pacient byl očkován vakcínou proti onemocnění COVID-19 (SNOMED CT: 1119349007) dne 5. 5. 2021. Očkování bylo provedeno a zaznamenáno jako kompletní, bez komplikací.</p>
  </div>
  """
* section[sectionImmunizations].text.status = #generated
* section[sectionImmunizations].entry[0] = Reference(Immunization)

* section[sectionHospitalCourse].title = "Klinické shrnutí"
* section[sectionHospitalCourse].code = $loinc#8648-8 "Průběh hospitalizace"
* section[sectionHospitalCourse].text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
  Pacient byl přijat dne 1. 3. 2025 na chirurgické oddělení s bolestivou pravostrannou tříselnou kýlou, která byla nevratná, bez známek strangulace. Během hospitalizace byla provedena předoperační příprava včetně laboratorních vyšetření a interního předoperačního vyšetření.
  Dne 2. 3. 2025 byla v celkové anestezii provedena operace – plastika pravostranné tříselné kýly. Operační výkon proběhl bez komplikací. Pacient byl pooperačně stabilní, bez známek infekce rány.
  V rámci hospitalizace byla u pacienta sledována substituční léčba hypotyreózy (Euthyrox 75 µg denně), bez nutnosti úpravy dávkování. Hodnota TSH při přijetí v normě.
  Pacient byl v dobrém stavu propuštěn do domácího ošetření dne 10. 3. 2025. Doporučena klidová režimová opatření, kontrola v chirurgické ambulanci za 7 dní.
  </div>""" 
* section[sectionHospitalCourse].text.status = #additional


// Sekce Implantáty a zdravotní pomůcky
* section[sectionMedicalDevices].title = "Zdravotní pomůcky a implantáty"
* section[sectionMedicalDevices].code.coding[0].system = $loinc
* section[sectionMedicalDevices].code.coding[0].code = #46264-8 // Historie implantátů
* section[sectionMedicalDevices].code.coding[0].display = "Medical devices and implants"
* section[sectionMedicalDevices].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Pacientovi byl implantován kardiostimulátor Medtronic model W1DR01.</p></div>" // Added required text for cardinality
* section[sectionMedicalDevices].text.status = #generated
* section[sectionMedicalDevices].entry[0] = Reference(DeviceUseStatement-Pacemaker) // Example reference to a medical device
* section[sectionMedicalDevices].entry[1] = Reference(Procedure-Insert-Pacemaker2) // Example reference to another medical device

// Sekce pro stav při propuštění sectionDischargeFindings
* section[sectionDischargeFindings].title = "Objektivní nález při propuštění"
* section[sectionDischargeFindings].code.coding[0].system = $loinc
* section[sectionDischargeFindings].code.coding[0].code = #10184-0 // Discharge findings
* section[sectionDischargeFindings].code.coding[0].display = "Discharge findings"
* section[sectionDischargeFindings].text.div = """
  <div xmlns="http://www.w3.org/1999/xhtml">
    <p>Objektivní nález při propuštění z nemocnice:</p>
    <ul>
      <li>Vědomí: plně orientovaný, spolupracující.</li>
      <li>Vital signs: TK 120/80 mmHg, P 75/min, T 36.5 °C.</li>
      <li>Hlava a krk: bez patologických nálezů, sliznice normálně prokrvené.</li>
      <li>Plíce: čisté, bez šelestů, dýchání pravidelné.</li>
      <li>Srdce: pravidelný rytmus, bez šelestů, frekvence 75/min.</li>
      <li>Bricho: měkké, nebolestivé, bez patologických nálezů, jaterní hranice normální, slezina nepalpovatelná.</li>
      <li>Končetiny: bez otoků, normální prokrvení a citlivost, pohyblivost zachována.</li>
      <li>Rána po operaci: suchá, bez známek infekce, steh odstraněn, jizva dobře zhojená.</li>
    </ul>
    <p>Pacient je v dobrém stavu, bez známek komplikací po operaci. Byla doporučena klidová režimová opatření, kontrola v chirurgické ambulanci za 7 dní.</p>
  </div>""" // Added required text for cardinality
* section[sectionDischargeFindings].text.status = #additional //additional text status for generated narrative
* section[sectionDischargeFindings].author[0] = Reference(Practitioner-Author)  // Example reference to a physical exam observation
* section[sectionDischargeFindings].entry[0] = Reference(ExampleChestCircumference)
* section[sectionDischargeFindings].entry[1] = Reference(ExampleHeadCircumference)
* section[sectionDischargeFindings].entry[2] = Reference(ExampleAbdominalCircumference)
* section[sectionDischargeFindings].entry[3] = Reference(ExampleHeight)
* section[sectionDischargeFindings].entry[4] = Reference(ExampleWeight) 
* section[sectionDischargeFindings].entry[5] = Reference(ExampleBloodPressure)

// Sekce pro discharge detail sectionFunctionalStatus
// Jak rozdělit funkční stav při propuštění a přijetí?
* section[sectionFunctionalStatus].title = "Funkční stav při propuštění"
* section[sectionFunctionalStatus].code.coding[0].system = $loinc
* section[sectionFunctionalStatus].code.coding[0].code = #47420-5 // Discharge findings
* section[sectionFunctionalStatus].code.coding[0].display = "Functional status at discharge"
* section[sectionFunctionalStatus].text.div = """
  <div xmlns="http://www.w3.org/1999/xhtml">
    <p>Funkční stav pacienta při propuštění z nemocnice:</p>
    <ul>
      <li>Schopnost samostatné chůze: ano, bez pomoci.</li>
      <li>Schopnost samostatného pohybu: ano, bez omezení.</li>
      <li>Schopnost vykonávat běžné denní aktivity: ano, bez omezení.</li>
      <li>Schopnost samostatné péče o sebe: ano, bez pomoci.</li>
      <li>Schopnost komunikace: ano, plně orientovaný, schopný verbální komunikace.</li>
      <li>Schopnost orientace v čase a prostoru: ano, plně orientovaný, schopný se orientovat v čase a prostoru.</li>
      <li>Schopnost vykonávat domácí práce: ano, bez omezení.</li>
      <li>Schopnost vykonávat pracovní činnosti: ano, bez omezení.</li>
      <li>Schopnost řídit motorové vozidlo: ano, bez omezení.</li>
      <li>Schopnost vykonávat sportovní aktivity: ano, bez omezení.</li>
    </ul>
    <p>Pacient je v dobrém funkčním stavu, bez omezení v běžných denních aktivitách. Byla doporučena klidová režimová opatření, kontrola v chirurgické ambulanci za 7 dní.</p>
  </div>""" // Added required text for cardinality
* section[sectionFunctionalStatus].text.status = #additional
* section[sectionFunctionalStatus].author[0] = Reference(Practitioner-Author)  // Example reference to a functional status observation
* section[sectionFunctionalStatus].entry[0] = Reference(Observation-DischargeCondition)

// Sekce pro poznámku k propuštění sectionDischargeDetails
* section[sectionDischargeDetails].title = "Poznámka k propuštění"
* section[sectionDischargeDetails].code.coding[0].system = $loinc
* section[sectionDischargeDetails].code.coding[0].code = #8650-4 // Discharge details
* section[sectionDischargeDetails].code.coding[0].display = "Discharge details"
* section[sectionDischargeDetails].text.div = """
  <div xmlns="http://www.w3.org/1999/xhtml">
    <p>Pacient byl propuštěn z nemocnice dne 10. 3. 2025 po úspěšné operaci pravostranné tříselné kýly. Při propuštění byl pacient v dobrém stavu, bez známek komplikací. Byla doporučena klidová režimová opatření, kontrola v chirurgické ambulanci za 7 dní. Pacient byl informován o nutnosti dodržování pooperačního režimu a o možných komplikacích, které by měly být hlášeny lékaři. Pacient byl propuštěn do domácího ošetření s doporučením k dalšímu sledování a péči.</p>
    <p>Kontakty pro další informace:</p>
    <ul>
      <li>Chirurgická ambulance: +420 123 456 789</li>
      <li>Praktický lékař: +420 987 654 321</li>
      <li>Nemocnice: +420 111 222 333</li>
    </ul>
    <p>Pacient byl propuštěn s doporučením k dalšímu sledování a péči. V případě jakýchkoli potíží nebo nejasností je doporučeno kontaktovat lékaře nebo navštívit nejbližší pohotovost.</p>
  </div>""" // Added required text for cardinality
* section[sectionDischargeDetails].text.status = #additional
* section[sectionDischargeDetails].author[0] = Reference(Practitioner-Author)

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
* section[sectionPlanOfCare].text.status = #additional
* section[sectionPlanOfCare].entry[0] = Reference(CarePlan-Novak)

* section[sectionAttachments].title = "Přílohy"
* section[sectionAttachments].entry[0] = Reference(DischargeDocumenPDF)
* section[sectionAttachments].entry[1] = Reference(DischargeDocumentHTML)
* section[sectionAttachments].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Přílohy</div>" // Added required text for cardinality
* section[sectionAttachments].text.status = #generated

/*
//Sekce Údaje o hospitalizaci
* section[sectionEncounters].title = "Údaje o hospitalizaci"
* section[sectionEncounters].code.coding[0].system = $loinc
* section[sectionEncounters].code.coding[0].code = #10164-2 // Hospitalization summary Narrative
* section[sectionEncounters].code.coding[0].display = "Údaje o hospitalizaci"
* section[sectionEncounters].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"Pacient byl přijat pro bolestivý útvar v pravém třísle, suspektní tříselná kýla."
* section[sectionEncounters].entry[0] = Reference(HospitalEncounter-Novak-Petr)
* section[sectionEncounters].entry[1] = Reference(Condition-K409)


// Add section for attachments
* section[9].title = "P\u0159\u00edlohy"
* section[9].entry[0] = Reference(DischargeDocumenPDF)
* section[9].entry[1] = Reference(DischargeDocumentHTML)
* section[9].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Přílohy</div>" // Added required text for cardinality
* section[9].text.status = #generated
*/