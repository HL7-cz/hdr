//-----------------------------------------------------------------

Instance: DischargeComposition-Novak-Petr
InstanceOf: CZ_CompositionHdr
Description: "Example Composition for Hospital Discharge Report for patient Novák Petr"
Usage: #example
* id = "cdae7735-f7ee-4bc7-9cf3-3dc806a4eaaf"
* status = #final
* type.coding[0].system = $loinc
* type.coding[0].code = #34105-7
* type.coding[0].display = "Hospital Discharge summary"
* category[0].coding[0].system = $loinc
* category[0].coding[0].code = #18842-5
* category[0].coding[0].display = "Discharge summary"
* title = "Propouštěcí zpráva"
* date = "2025-03-10T14:30:00+01:00"
* author[+] = Reference(urn:uuid:a81e74c9-fe94-4eb1-9233-4c8f0b2d4e3a)
* author[+] = Reference(urn:uuid:2b7e9637-5018-4542-9faf-d5abdee7b849)
* author[+] = Reference(urn:uuid:ace081ba-e0a8-4b89-a4a7-c5b7cd3c8169)         // document authored by practitioner role
* subject = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000)            // document subject is patient
//Důvod přijetí je obsažen v Encouteru ReasonReference
* encounter = Reference(urn:uuid:10f5c49e-086d-4016-8dd1-b555306bf620)
// * extension[presentedForm].valueAttachment.type  = http://hl7.org/fhir/related-artifact-type#documentation
// * extension[presentedForm].valueAttachment.label = "Presented form"
* extension[presentedForm].valueAttachment = cz-pdfhdr-example
* confidentiality = #N

//doplnit část pro custodian pod attester
* custodian = Reference(urn:uuid:ace081ba-e0a8-4b89-a4a7-c5b7cd3c8169) // Example Organization as custodian
* attester[0].mode = #legal
* attester[0].time = "2025-03-10T14:30:00+01:00"
* attester[0].party = Reference(urn:uuid:a81e74c9-fe94-4eb1-9233-4c8f0b2d4e3a) // Attester is the same as one of the authors

//Urgentní informace
/// Sekce Alergie
* section[sectionAllergies].title = "Alergie, intolerance a varování"
* section[sectionAllergies].code.coding[0].system = $loinc
* section[sectionAllergies].code.coding[0].code = #48765-2 // Allergies and adverse reactions
* section[sectionAllergies].code.coding[0].display = "Allergies and adverse reactions Document"
* section[sectionAllergies].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Alergie na jahody, od 01.01.2020, reakce: Svědění, otok jazyka</div>" 
* section[sectionAllergies].entry[allergyIntolerance][0] = Reference(urn:uuid:6cf80cb1-9766-470f-ac36-b1d3d8950f1b)
* section[sectionAllergies].text.status = #generated

///TODO Doplnit Alerts
// Sekce Varování
* section[sectionAlert].title = "Varování"
* section[sectionAlert].code.coding[0].system = $loinc
* section[sectionAlert].code.coding[0].code = #75310-3 // Alerts LOINC=104605-1 
* section[sectionAlert].code.coding[0].display = "Health concerns Document"
* section[sectionAlert].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pacient trpí mírnou podvýživou – doporučená nutriční terapie</div>" 
* section[sectionAlert].text.status = #generated
* section[sectionAlert].entry[0] = Reference(urn:uuid:5a17a710-193e-4490-a627-7202925aa56e) 

// Diagnostický souhrn:
// Sekce Diagnostický souhrn
* section[sectionDiagnosticSummary].title = "Diagnostický souhrn"
* section[sectionDiagnosticSummary].code.coding[0].system = $loinc
* section[sectionDiagnosticSummary].code.coding[0].code = #11450-4 // Problem list
* section[sectionDiagnosticSummary].code.coding[0].display = "Problem list - Reported"
* section[sectionDiagnosticSummary].text.div = """
  <div xmlns="http://www.w3.org/1999/xhtml">
    <p>K40.9 – Inguinální kýla, nespecifikovaná </p>
    <p>E89.0 – Hypotyreóza po léčbě (v anamnéze) </p>
  </div>
  """
* section[sectionDiagnosticSummary].text.status = #generated
* section[sectionDiagnosticSummary].entry[0] = Reference(urn:uuid:35717696-8a99-4f99-a938-ec0ec88a65a2)
* section[sectionDiagnosticSummary].entry[1] = Reference(urn:uuid:fdf9e92d-ac48-4706-b15b-d2eaca85f45f)

// Významné výkony
// Sekce Významné procedury
* section[sectionSignificantProcedures].title = "Významné procedury"
* section[sectionSignificantProcedures].code.coding[0].system = $loinc
* section[sectionSignificantProcedures].code.coding[0].code = #10185-7
* section[sectionSignificantProcedures].code.coding[0].display = "Hospital discharge procedure note"
* section[sectionSignificantProcedures].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Plastika pravostranné tříselné kýly dne 2. 3. 2025.</div>"
* section[sectionSignificantProcedures].text.status = #generated
* section[sectionSignificantProcedures].entry[0] = Reference(urn:uuid:ffb1a62f-9050-4e33-af4b-4cdb8203c9e5)

//Léčba vybraná není v EU můžeme vypustit? 2.7.4
// TODO doplnit terapeutickou intervenci


//Výsledky vše na jednom místě, očekávané (nemají valsní sekci) a již připravené:
///sekce Výsledky vyšetření
* section[sectionSignificantResults].title = "Výsledky vyšetření"
* section[sectionSignificantResults].code.coding[0].system = $loinc
* section[sectionSignificantResults].code.coding[0].code = #30954-2  //Relevant diagnostic tests/laboratory data
* section[sectionSignificantResults].code.coding[0].display = "Relevant diagnostic tests/laboratory data note"
* section[sectionSignificantResults].text.div = """
  <div xmlns="http://www.w3.org/1999/xhtml">
    <p>Významné výsledky vyšetření v průběhu hospitalizace</p>
    <ul>
      <li>UZ vyšetření pravého třísla: v oblasti tříselného kanálu patrný hypoechogenní vak komunikující s peritoneální dutinou, obsahující střevní kličku. Obsah je mobilní, bez známek ischemie. Závěr: vpravo tříselná kýla bez známek komplikace.</li>
      <li>CRP: 6 mg/L (norma: 0–10 mg/L)</li>
    </ul>
  </div>"""
* section[sectionSignificantResults].text.status = #additional
* section[sectionSignificantResults].entry[radResult] = Reference(urn:uuid:e15aeeaf-e288-404c-9704-9c8f0b2d4e3a) // Corrected Reference to include the resource type
* section[sectionSignificantResults].entry[labResult] = Reference(urn:uuid:10f5c49e-086d-4016-8dd1-10000000001b) // Corrected Reference to include the resource type

// Sekce Implantáty a zdravotní pomůcky
* section[sectionMedicalDevices].title = "Zdravotní pomůcky a implantáty"
* section[sectionMedicalDevices].code.coding[0].system = $loinc
* section[sectionMedicalDevices].code.coding[0].code = #46264-8 // Historie implantátů
* section[sectionMedicalDevices].code.coding[0].display = "History of medical device use"
* section[sectionMedicalDevices].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Pacientovi byl implantován kardiostimulátor Medtronic model W1DR01.</p></div>" // Added required text for cardinality
* section[sectionMedicalDevices].text.status = #generated
* section[sectionMedicalDevices].entry[0] = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-10000000001f) // Example reference to a medical device
* section[sectionMedicalDevices].entry[1] = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000020) // Example reference to another medical device

//Sekce Průběh hospitalizace - klinické shrnutí
* section[sectionHospitalCourse].title = "Klinické shrnutí"
* section[sectionHospitalCourse].code = $loinc#8648-8 "Hospital course note"
* section[sectionHospitalCourse].text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
  Pacient byl přijat dne 1. 3. 2025 na chirurgické oddělení s bolestivou pravostrannou tříselnou kýlou, která byla nevratná, bez známek strangulace. Během hospitalizace byla provedena předoperační příprava včetně laboratorních vyšetření a interního předoperačního vyšetření.
  Dne 2. 3. 2025 byla v celkové anestezii provedena operace – plastika pravostranné tříselné kýly. Operační výkon proběhl bez komplikací. Pacient byl pooperačně stabilní, bez známek infekce rány.
  V rámci hospitalizace byla u pacienta sledována substituční léčba hypotyreózy (Euthyrox 75 µg denně), bez nutnosti úpravy dávkování. Hodnota TSH při přijetí v normě.
  Pacient byl v dobrém stavu propuštěn do domácího ošetření dne 10. 3. 2025. Doporučena klidová režimová opatření, kontrola v chirurgické ambulanci za 7 dní.
  </div>""" // Added required text for cardinality
* section[sectionHospitalCourse].text.status = #additional //Additional text status for generated narrative /HONza
* section[sectionHospitalCourse].entry[0] = Reference(urn:uuid:10f5c49e-086d-4016-8dd1-b555306bf620) // encounter

// Sekce pro stav při propuštění sectionPhysicalExamination
* section[sectionPhysicalExamination].title = "Objektivní nález při propuštění"
* section[sectionPhysicalExamination].code.coding[0].system = $loinc
* section[sectionPhysicalExamination].code.coding[0].code = #55286-9 // Discharge findings
* section[sectionPhysicalExamination].code.coding[0].display = "Physical exam by body areas"
* section[sectionPhysicalExamination].text.div = """
  <div xmlns="http://www.w3.org/1999/xhtml">
    <p>Objektivní nález při přijetí:</p>
    <ul>
      <li>Vědomí: plně orientovaný, spolupracující.</li>
      <li>Vital signs: TK 125/80 mmHg, P 78/min, T 36,7 °C, dechová frekvence 16/min.</li>
      <li>Břicho: měkké, nebolestivé, peristaltika slyšitelná.</li>
      <li>Pravé tříslo: hmatné měkké vyklenutí v oblasti tříselného kanálu, zvětšující se při kašli, bez zarudnutí či známek strangulace.</li>
      <li>Kůže: bez patologických změn.</li>
    </ul>
    <p>Významné výsledky vyšetření v průběhu hospitalizace:</p>
    <ul>
      <li>UZ vyšetření pravého třísla: v oblasti tříselného kanálu patrný hypoechogenní vak komunikující s peritoneální dutinou, obsahující střevní kličku. Obsah mobilní, bez známek ischemie. Závěr: vpravo tříselná kýla bez známek komplikace.</li>
      <li>CRP: 6 mg/L (norma: 0–10 mg/L)</li>
    </ul>
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
* section[sectionPhysicalExamination].text.status = #additional //additional text status for generated narrative
* section[sectionPhysicalExamination].author[0] = Reference(urn:uuid:a81e74c9-fe94-4eb1-9233-4c8f0b2d4e3a)  // Example reference to a physical exam observation
* section[sectionPhysicalExamination].entry[0] = Reference(urn:uuid:6bec5d97-a17e-4015-8fce-7b1c0c3a2f4b)
* section[sectionPhysicalExamination].entry[1] = Reference(urn:uuid:5c2ddf62-9785-493f-80c6-8b0d1e3a4b2c)
* section[sectionPhysicalExamination].entry[2] = Reference(urn:uuid:7cf304de-5ae3-4621-8531-9c8f0b2d4e3a)
* section[sectionPhysicalExamination].entry[3] = Reference(urn:uuid:5c363e2d-c4e1-436d-bad7-0b3f8c6a9f1d)
* section[sectionPhysicalExamination].entry[4] = Reference(urn:uuid:4ba395b7-be9e-4bed-bef7-1c8f0b2d4e3a) 
* section[sectionPhysicalExamination].entry[5] = Reference(urn:uuid:6c626338-82ba-46a1-bcb8-2c8f0b2d4e3a)

// Sekce pro stav přo propuštění funkční status sectionFunctionalStatus
// Jak rozdělit funkční stav při propuštění a přijetí? Odpověď budou sekce pod AdmissionEvaluation
* section[sectionFunctionalStatus].title = "Funkční stav"
* section[sectionFunctionalStatus].code.coding[0].system = $loinc
* section[sectionFunctionalStatus].code.coding[0].code = #47420-5 // Discharge findings
* section[sectionFunctionalStatus].code.coding[0].display = "Functional status assessment note"
* section[sectionFunctionalStatus].text.div = """
  <div xmlns="http://www.w3.org/1999/xhtml">
    <p>Funkční stav pacienta při přijetí:</p>
    <ul>
      <li>Chůze: samostatná, bez pomůcek.</li>
      <li>ADL: soběstačný, bez potřeby asistence.</li>
      <li>Kognice a komunikace: plně orientovaný, adekvátní komunikace.</li>
      <li>Bolest: lokalizovaná v pravém třísle při námaze, jinak bez omezení.</li>
    </ul>
    <p>Při přijetí pacient soběstačný, bez významného omezení v běžných denních činnostech, limitace pouze bolestí v pravém třísle.</p>
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
* section[sectionFunctionalStatus].author[0] = Reference(urn:uuid:a81e74c9-fe94-4eb1-9233-4c8f0b2d4e3a)  // Example reference to a functional status observation
* section[sectionFunctionalStatus].entry[0] = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000022)

// Sekce pro poznámku k propuštění sectionDischargeDetails
* section[sectionDischargeDetails].title = "Poznámka k propuštění"
* section[sectionDischargeDetails].code.coding[0].system = $loinc
* section[sectionDischargeDetails].code.coding[0].code = #8650-4 // Discharge details
* section[sectionDischargeDetails].code.coding[0].display = "Hospital discharge disposition note"
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
* section[sectionDischargeDetails].author[0] = Reference(urn:uuid:a81e74c9-fe94-4eb1-9233-4c8f0b2d4e3a)


//Sekce Souhrn Medikace
* section[sectionMedications].title = "Medikace"
* section[sectionMedications].code.coding[+].system = $loinc
* section[sectionMedications].code.coding[=].code = #10160-0
* section[sectionMedications].code.coding[=].display = "History of Medication use Narrative"
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
* section[sectionMedications].entry[0] = Reference(urn:uuid:47472c99-09bf-4007-bfaa-16c9665ae090)
* section[sectionMedications].entry[1] = Reference(urn:uuid:f34114fc-138f-4bd8-8e1a-804d14ec9986)
* section[sectionMedications].entry[2] = Reference(urn:uuid:bf08b62b-0abd-4e88-9092-ce0228382e51)
* section[sectionMedications].entry[3] = Reference(urn:uuid:133cea11-09c6-4147-80af-6c8f0b2d4e3a)
* section[sectionMedications].entry[4] = Reference(urn:uuid:65c49e6d-0951-4e83-8e2c-7c8f0b2d4e3a)
* section[sectionMedications].entry[5] = Reference(urn:uuid:b0001bf8-976a-4d7d-b192-8c8f0b2d4e3a)
//Rozdělit co bylo v průběhu hospitalizace a co bylo při propuštění


//sekce Doporučení - Plán péče
* section[sectionPlanOfCare].title = "Plán péče"
* section[sectionPlanOfCare].code.coding[0].system = "http://loinc.org"
* section[sectionPlanOfCare].code.coding[0].code = #18776-5   //Plan of care note  (58222-1 .. Discharge plan)
* section[sectionPlanOfCare].code.coding[0].display = "Plan of care note"
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
* section[sectionPlanOfCare].entry[0] = Reference(urn:uuid:9c913d06-84fe-4d35-b35b-8b0c7965f535)


//Volitelné části


//Anamnéza
///Add section for Family History
* section[sectionFamilyHistory].title = "Rodinná anamnéza"
* section[sectionFamilyHistory].code.coding[0].system = "http://loinc.org"
* section[sectionFamilyHistory].code.coding[0].code = #10157-6 // Corrected code assignment
* section[sectionFamilyHistory].code.coding[0].display = "History of family member diseases note"
* section[sectionFamilyHistory].text.div = """
  <div xmlns="http://www.w3.org/1999/xhtml">
    <p>Rodinná anamnéza: matka zemřela na infarkt ve věku 75 let, otec žije, má 80 let a trpí hypertenzí. Sourozenci zdraví.</p>
  </div>"""
* section[sectionFamilyHistory].text.status = #additional


//Add section for social history
* section[sectionSocialHistory].title = "Sociální anamnéza"
* section[sectionSocialHistory].code.coding[0].system = "http://loinc.org"
* section[sectionSocialHistory].code.coding[0].code = #29762-2 // Corrected code assignment
* section[sectionSocialHistory].code.coding[0].display = "Social history note"
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
* section[sectionSocialHistory].entry[+] = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000022)
* section[sectionSocialHistory].entry[+] = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000027)
* section[sectionSocialHistory].entry[+] = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-10000000001c)
* section[sectionSocialHistory].entry[+] = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-10000000001d)

//Add section for imunizations
* section[sectionImmunizations].title = "Očkování"
* section[sectionImmunizations].code.coding[0].system = "http://loinc.org"
* section[sectionImmunizations].code.coding[0].code = #11369-6
* section[sectionImmunizations].code.coding[0].display = "History of Immunization note"
* section[sectionImmunizations].text.div = """
  <div xmlns="http://www.w3.org/1999/xhtml">
    <p>Pacient byl očkován vakcínou proti onemocnění COVID-19 (SNOMED CT: 1119349007) dne 5. 5. 2021. Očkování bylo provedeno a zaznamenáno jako kompletní, bez komplikací.</p>
  </div>
  """
* section[sectionImmunizations].text.status = #generated
* section[sectionImmunizations].entry[0] = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-10000000001e)

// Sekce Infekční kontakty
* section[sectionInfectiousContacts].title = "Infekční kontakty"
* section[sectionInfectiousContacts].code = TemporaryHDRSystem#infection-contact "Infectious contacts"
* section[sectionInfectiousContacts].text.status = #additional
* section[sectionInfectiousContacts].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Pacient byl v kontaktu s osobou nakaženou COVID-19.</p></div>"
* section[sectionInfectiousContacts].entry[0] = Reference(urn:uuid:af4dcfeb-2cb3-4fc8-98e2-5c8f0b2d4e3a)


// Sekce cestovatelská anamnéza
* section[sectionTravelHx].title = "Cestovatelská anamnéza"
* section[sectionTravelHx].code = $loinc#10182-4 "History of Travel note"
* section[sectionTravelHx].text.status = #additional
* section[sectionTravelHx].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Pacient nedávno cestoval na Madagaskar.</p></div>"
* section[sectionTravelHx].entry[0] = Reference(urn:uuid:f95f843e-701f-434a-94c9-3c8f0b2d4e3a)
* section[sectionTravelHx].author[0] = Reference(urn:uuid:a81e74c9-fe94-4eb1-9233-4c8f0b2d4e3a) // Example reference to a travel history observation


//* section[sectionHospitalCourse].title = "Průběh hospitalizace - klinické shrnutí"
//Sekce Předem vyslovená přání
* section[sectionAdvanceDirectives].title = "Dříve vyjádřená přání"
* section[sectionAdvanceDirectives].code.coding[0].display = "Advance healthcare directives"
* section[sectionAdvanceDirectives].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Neresuscitovat</div>"
* section[sectionAdvanceDirectives].text.status = #generated
* section[sectionAdvanceDirectives].entry[0] = Reference(urn:uuid:b3f0f517-9c64-4b8f-99d9-72183cfd9ef0)

//Stav při přijetí
* section[sectionAdmissionEvaluation].title = "Stav při přijetí"
* section[sectionAdmissionEvaluation].code.coding[0].system = $loinc
* section[sectionAdmissionEvaluation].code.coding[0].code = #67852-4 // Corrected code assignment
* section[sectionAdmissionEvaluation].code.coding[0].display = "Hospital Admission evaluation note"
* section[sectionAdmissionEvaluation].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pacient byl přijat na chirurgické oddělení s bolestivou pravostrannou tříselnou kýlou, která byla nevratná, bez známek strangulace. Při příjmu byl pacient v dobrém stavu, vitální funkce stabilní. Při fyzikálním vyšetření bylo zjištěno bolestivé zduření v oblasti pravého tříselného kanálu, bez známek zánětu nebo infekce. Laboratorní vyšetření ukázalo normální hodnoty krevního obrazu a biochemie, včetně TSH v normálním rozmezí. Pacient byl stabilní, bez známek dehydratace nebo hypovolemie. Byla zahájena předoperační příprava včetně interního vyšetření a laboratorních testů. Pacient byl informován o nutnosti chirurgického zákroku a souhlasil s ním. </div>" // Added required text for cardinality
* section[sectionAdmissionEvaluation].text.status = #additional
* section[sectionAdmissionEvaluation].section[0].title = "Vital sings"
* section[sectionAdmissionEvaluation].section[=].code = $loinc#8716-3 "Vital signs note"
* section[sectionAdmissionEvaluation].section[=].text.status = #generated
* section[sectionAdmissionEvaluation].section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Vital signs</div>"
* section[sectionAdmissionEvaluation].section[=].entry[0] = Reference(urn:uuid:6bec5d97-a17e-4015-8fce-7b1c0c3a2f4b)
* section[sectionAdmissionEvaluation].section[=].entry[1] = Reference(urn:uuid:5c2ddf62-9785-493f-80c6-8b0d1e3a4b2c)
* section[sectionAdmissionEvaluation].section[=].entry[2] = Reference(urn:uuid:7cf304de-5ae3-4621-8531-9c8f0b2d4e3a)
* section[sectionAdmissionEvaluation].section[=].entry[3] = Reference(urn:uuid:5c363e2d-c4e1-436d-bad7-0b3f8c6a9f1d)
* section[sectionAdmissionEvaluation].section[=].entry[4] = Reference(urn:uuid:4ba395b7-be9e-4bed-bef7-1c8f0b2d4e3a) 
* section[sectionAdmissionEvaluation].section[=].entry[5] = Reference(urn:uuid:6c626338-82ba-46a1-bcb8-2c8f0b2d4e3a) // Corrected Reference to include the resource type
* section[sectionAdmissionEvaluation].section[=].entry[6] = Reference(urn:uuid:f0b20060-c4a8-4a74-b12a-6c8f0b2d4e3a) // Corrected Reference to include the resource type

* section[sectionAttachments].title = "Přílohy"
* section[sectionAttachments].code.coding[0].system = "http://loinc.org"
* section[sectionAttachments].code.coding[0].code = #77599-9   
* section[sectionAttachments].code.coding[0].display = "Additional documentation"
* section[sectionAttachments].entry[0] = Reference(urn:uuid:66678621-df93-47ca-a36c-2a39a92472e7)
* section[sectionAttachments].entry[1] = Reference(urn:uuid:d9ad8a22-a12b-48db-938c-4066a3a0617a)
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

Instance: DischargeComposition-Novak-Petr_L1
InstanceOf: CZ_CompositionHdr
Description: "Example Composition for Hospital Discharge Report for patient Novák Petr"
Usage: #example
* id = "6891fd68-dc3c-4c91-a8d3-cb5ec990c03b"
* status = #final
* type.coding[0].system = $loinc
* type.coding[0].code = #34105-7
* type.coding[0].display = "Hospital Discharge summary"
* category[0].coding[0].system = $loinc
* category[0].coding[0].code = #18842-5
* category[0].coding[0].display = "Discharge summary"
* title = "Propouštěcí zpráva"
* date = "2025-03-10T14:30:00+01:00"
* author[+] = Reference(urn:uuid:a81e74c9-fe94-4eb1-9233-4c8f0b2d4e3a)
* author[+] = Reference(urn:uuid:2b7e9637-5018-4542-9faf-d5abdee7b849)
* author[+] = Reference(urn:uuid:ace081ba-e0a8-4b89-a4a7-c5b7cd3c8169)         // document authored by practitioner role
* subject = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000)
* encounter = Reference(urn:uuid:10f5c49e-086d-4016-8dd1-b555306bf620)
// * extension[presentedForm].valueAttachment.type  = http://hl7.org/fhir/related-artifact-type#documentation
// * extension[presentedForm].valueAttachment.label = "Presented form"
* extension[presentedForm].valueAttachment = cz-pdfhdr-example
* confidentiality = #N

//doplnit část pro custodian pod attester
* custodian = Reference(urn:uuid:ace081ba-e0a8-4b89-a4a7-c5b7cd3c8169) // Example Organization as custodian
* attester[0].mode = #legal
* attester[0].time = "2025-03-10T14:30:00+01:00"
* attester[0].party = Reference(urn:uuid:a81e74c9-fe94-4eb1-9233-4c8f0b2d4e3a) // Attester is the same as one of the authors

* section[sectionHospitalCourse].title = "Klinické shrnutí"
* section[sectionHospitalCourse].code = $loinc#8648-8 "Hospital course note"
* section[sectionHospitalCourse].text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
  Pacient byl přijat dne 1. 3. 2025 na chirurgické oddělení s bolestivou pravostrannou tříselnou kýlou, která byla nevratná, bez známek strangulace. Během hospitalizace byla provedena předoperační příprava včetně laboratorních vyšetření a interního předoperačního vyšetření.
  Dne 2. 3. 2025 byla v celkové anestezii provedena operace – plastika pravostranné tříselné kýly. Operační výkon proběhl bez komplikací. Pacient byl pooperačně stabilní, bez známek infekce rány.
  V rámci hospitalizace byla u pacienta sledována substituční léčba hypotyreózy (Euthyrox 75 µg denně), bez nutnosti úpravy dávkování. Hodnota TSH při přijetí v normě.
  Pacient byl v dobrém stavu propuštěn do domácího ošetření dne 10. 3. 2025. Doporučena klidová režimová opatření, kontrola v chirurgické ambulanci za 7 dní.
  </div>""" // Added required text for cardinality
* section[sectionHospitalCourse].text.status = #additional //Additional text status for generated narrative /HONza
* section[sectionHospitalCourse].entry[0] = Reference(urn:uuid:10f5c49e-086d-4016-8dd1-b555306bf620) // encounter

//TODO popsat že to je něco jiného než presented form
* section[sectionAttachments].title = "Přílohy"
* section[sectionAttachments].code.coding[0].system = "http://loinc.org"
* section[sectionAttachments].code.coding[0].code = #77599-9   
* section[sectionAttachments].code.coding[0].display = "Additional documentation"
* section[sectionAttachments].entry[0] = Reference(urn:uuid:66678621-df93-47ca-a36c-2a39a92472e7)
* section[sectionAttachments].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Přílohy</div>" // Added required text for cardinality
* section[sectionAttachments].text.status = #generated



Instance: DischargeComposition-Novak-Petr_L1_core
InstanceOf: CZ_CompositionHdr
Description: "Example Composition for Hospital Discharge Report for patient Novák Petr"
Usage: #example
* id = "6891fd68-dc3c-4c91-a8d3-cb5ec990c035" // nenní uvedena v obligations kardinalita 0..1
//chybí * meta
* status = #final
* type.coding[0].system = $loinc
* type.coding[0].code = #34105-7
* category[0].coding[0].system = $loinc
* category[0].coding[0].code = #18842-5
* category[0].coding[0].display = "Discharge summary"
* title = "Propouštěcí zpráva"
* date = "2025-03-10T14:30:00+01:00"
* author[+] = Reference(urn:uuid:a81e74c9-fe94-4eb1-9233-4c8f0b2d4e3a)
* author[+] = Reference(urn:uuid:2b7e9637-5018-4542-9faf-d5abdee7b849)
* author[+] = Reference(urn:uuid:9f7c3d74-2c71-4b92-9a59-2b6f37ecb3d1)         // document authored by practitioner role
* subject = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000)
* encounter = Reference(urn:uuid:10f5c49e-086d-4016-8dd1-b555306bf620)
// * extension[presentedForm].valueAttachment.type  = http://hl7.org/fhir/related-artifact-type#documentation
// * extension[presentedForm].valueAttachment.label = "Presented form"
* extension[presentedForm].valueAttachment = cz-pdfhdr-example
* confidentiality = #N

//doplnit část pro custodian pod attester
* custodian = Reference(urn:uuid:9f7c3d74-2c71-4b92-9a59-2b6f37ecb3d1) // Example Organization as custodian
* attester[0].mode = #legal
* attester[0].time = "2025-03-10T14:30:00+01:00"
* attester[0].party = Reference(urn:uuid:a81e74c9-fe94-4eb1-9233-4c8f0b2d4e3a) // Attester is the same as one of the authors

* section[sectionHospitalCourse].title = "Klinické shrnutí"
* section[sectionHospitalCourse].code = $loinc#8648-8 "Hospital course note"
* section[sectionHospitalCourse].text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
  Pacient byl přijat dne 1. 3. 2025 na chirurgické oddělení s bolestivou pravostrannou tříselnou kýlou, která byla nevratná, bez známek strangulace. Během hospitalizace byla provedena předoperační příprava včetně laboratorních vyšetření a interního předoperačního vyšetření.
  Dne 2. 3. 2025 byla v celkové anestezii provedena operace – plastika pravostranné tříselné kýly. Operační výkon proběhl bez komplikací. Pacient byl pooperačně stabilní, bez známek infekce rány.
  V rámci hospitalizace byla u pacienta sledována substituční léčba hypotyreózy (Euthyrox 75 µg denně), bez nutnosti úpravy dávkování. Hodnota TSH při přijetí v normě.
  Pacient byl v dobrém stavu propuštěn do domácího ošetření dne 10. 3. 2025. Doporučena klidová režimová opatření, kontrola v chirurgické ambulanci za 7 dní.
  </div>""" // Added required text for cardinality
* section[sectionHospitalCourse].text.status = #additional //Additional text status for generated narrative /HONza
* section[sectionHospitalCourse].entry[0] = Reference(urn:uuid:10f5c49e-086d-4016-8dd1-b555306bf620) // encounter

//TODO popsat že to je něco jiného než presented form
* section[sectionAttachments].title = "Přílohy"
* section[sectionAttachments].code.coding[0].system = "http://loinc.org"
* section[sectionAttachments].code.coding[0].code = #77599-9   
* section[sectionAttachments].code.coding[0].display = "Additional documentation"
* section[sectionAttachments].entry[0] = Reference(urn:uuid:66678621-df93-47ca-a36c-2a39a92472e7)
* section[sectionAttachments].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Přílohy</div>" // Added required text for cardinality
* section[sectionAttachments].text.status = #generated

Instance: DischargeComposition-Novak-Petr-Subsections
InstanceOf: CZ_CompositionHdr
Description: "Example Composition for Hospital Discharge Report for patient Novák Petr"
Usage: #example
* id = "701f51d5-78bf-428e-a6b5-349c2614ce07"
* status = #final
* type.coding[0].system = $loinc
* type.coding[0].code = #34105-7
* type.coding[0].display = "Hospital Discharge summary"
* category[0].coding[0].system = $loinc
* category[0].coding[0].code = #18842-5
* category[0].coding[0].display = "Discharge summary"
* title = "Propouštěcí zpráva"
* date = "2025-03-10T14:30:00+01:00"
* author[+] = Reference(urn:uuid:a81e74c9-fe94-4eb1-9233-4c8f0b2d4e3a)
* author[+] = Reference(urn:uuid:2b7e9637-5018-4542-9faf-d5abdee7b849)
* author[+] = Reference(urn:uuid:ace081ba-e0a8-4b89-a4a7-c5b7cd3c8169)         // document authored by practitioner role
* subject = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000)            // document subject is patient
//Důvod přijetí je obsažen v Encouteru ReasonReference
* encounter = Reference(urn:uuid:10f5c49e-086d-4016-8dd1-b555306bf620)
// * extension[presentedForm].valueAttachment.type  = http://hl7.org/fhir/related-artifact-type#documentation
// * extension[presentedForm].valueAttachment.label = "Presented form"
* extension[presentedForm].valueAttachment = cz-pdfhdr-example
* confidentiality = #N

//doplnit část pro custodian pod attester
* custodian = Reference(urn:uuid:ace081ba-e0a8-4b89-a4a7-c5b7cd3c8169) // Example Organization as custodian
* attester[0].mode = #legal
* attester[0].time = "2025-03-10T14:30:00+01:00"
* attester[0].party = Reference(urn:uuid:a81e74c9-fe94-4eb1-9233-4c8f0b2d4e3a) // Attester is the same as one of the authors

//Urgentní informace
/// Sekce Alergie
* section[sectionAllergies].title = "Alergie, intolerance a varování"
* section[sectionAllergies].code.coding[0].system = $loinc
* section[sectionAllergies].code.coding[0].code = #48765-2 // Allergies and adverse reactions
* section[sectionAllergies].code.coding[0].display = "Allergies and adverse reactions Document"
* section[sectionAllergies].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Alergie na jahody, od 01.01.2020, reakce: Svědění, otok jazyka</div>" 
* section[sectionAllergies].entry[allergyIntolerance][0] = Reference(urn:uuid:6cf80cb1-9766-470f-ac36-b1d3d8950f1b)
* section[sectionAllergies].text.status = #generated

///TODO Doplnit Alerts
// Sekce Varování
* section[sectionAlert].title = "Varování"
* section[sectionAlert].code.coding[0].system = $loinc
* section[sectionAlert].code.coding[0].code = #75310-3 // Alerts LOINC=104605-1 
* section[sectionAlert].code.coding[0].display = "Health concerns Document"
* section[sectionAlert].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pacient trpí mírnou podvýživou – doporučená nutriční terapie</div>" 
* section[sectionAlert].text.status = #generated
* section[sectionAlert].entry[0] = Reference(urn:uuid:5a17a710-193e-4490-a627-7202925aa56e) 

// Diagnostický souhrn:
// Sekce Diagnostický souhrn
* section[sectionDiagnosticSummary].title = "Diagnostický souhrn"
* section[sectionDiagnosticSummary].code.coding[0].system = $loinc
* section[sectionDiagnosticSummary].code.coding[0].code = #11450-4 // Problem list
* section[sectionDiagnosticSummary].code.coding[0].display = "Problem list - Reported"
* section[sectionDiagnosticSummary].text.div = """
  <div xmlns="http://www.w3.org/1999/xhtml">
    <p>K40.9 – Inguinální kýla, nespecifikovaná </p>
    <p>E89.0 – Hypotyreóza po léčbě (v anamnéze) </p>
  </div>
  """
* section[sectionDiagnosticSummary].text.status = #generated
* section[sectionDiagnosticSummary].entry[0] = Reference(urn:uuid:35717696-8a99-4f99-a938-ec0ec88a65a2)
* section[sectionDiagnosticSummary].entry[1] = Reference(urn:uuid:fdf9e92d-ac48-4706-b15b-d2eaca85f45f)

// Významné výkony
// Sekce Významné procedury
* section[sectionSignificantProcedures].title = "Významné procedury"
* section[sectionSignificantProcedures].code.coding[0].system = $loinc
* section[sectionSignificantProcedures].code.coding[0].code = #10185-7
* section[sectionSignificantProcedures].code.coding[0].display = "Hospital discharge procedure note"
* section[sectionSignificantProcedures].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Plastika pravostranné tříselné kýly dne 2. 3. 2025.</div>"
* section[sectionSignificantProcedures].text.status = #generated
* section[sectionSignificantProcedures].entry[0] = Reference(urn:uuid:ffb1a62f-9050-4e33-af4b-4cdb8203c9e5)

//Léčba vybraná není v EU můžeme vypustit? 2.7.4
// TODO doplnit terapeutickou intervenci


//Výsledky vše na jednom místě, očekávané (nemají valsní sekci) a již připravené:
///sekce Výsledky vyšetření
* section[sectionSignificantResults].title = "Výsledky vyšetření"
* section[sectionSignificantResults].code.coding[0].system = $loinc
* section[sectionSignificantResults].code.coding[0].code = #30954-2  //Relevant diagnostic tests/laboratory data
* section[sectionSignificantResults].code.coding[0].display = "Relevant diagnostic tests/laboratory data note"
* section[sectionSignificantResults].text.div = """
  <div xmlns="http://www.w3.org/1999/xhtml">
    <p>Významné výsledky vyšetření v průběhu hospitalizace</p>
    <ul>
      <li>UZ vyšetření pravého třísla: v oblasti tříselného kanálu patrný hypoechogenní vak komunikující s peritoneální dutinou, obsahující střevní kličku. Obsah je mobilní, bez známek ischemie. Závěr: vpravo tříselná kýla bez známek komplikace.</li>
      <li>CRP: 6 mg/L (norma: 0–10 mg/L)</li>
    </ul>
  </div>"""
* section[sectionSignificantResults].text.status = #additional
* section[sectionSignificantResults].entry[0] = Reference(urn:uuid:e15aeeaf-e288-404c-9704-9c8f0b2d4e3a) // Corrected Reference to include the resource type
* section[sectionSignificantResults].entry[1] = Reference(urn:uuid:10f5c49e-086d-4016-8dd1-10000000001b) // Corrected Reference to include the resource type

// Sekce Implantáty a zdravotní pomůcky
* section[sectionMedicalDevices].title = "Zdravotní pomůcky a implantáty"
* section[sectionMedicalDevices].code.coding[0].system = $loinc
* section[sectionMedicalDevices].code.coding[0].code = #46264-8 // Historie implantátů
* section[sectionMedicalDevices].code.coding[0].display = "History of medical device use"
* section[sectionMedicalDevices].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Pacientovi byl implantován kardiostimulátor Medtronic model W1DR01.</p></div>" // Added required text for cardinality
* section[sectionMedicalDevices].text.status = #generated
* section[sectionMedicalDevices].entry[0] = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-10000000001f) // Example reference to a medical device
* section[sectionMedicalDevices].entry[1] = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000020) // Example reference to another medical device

//Sekce Průběh hospitalizace - klinické shrnutí
* section[sectionHospitalCourse].title = "Klinické shrnutí"
* section[sectionHospitalCourse].code = $loinc#8648-8 "Hospital course note"
* section[sectionHospitalCourse].text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
  Pacient byl přijat dne 1. 3. 2025 na chirurgické oddělení s bolestivou pravostrannou tříselnou kýlou, která byla nevratná, bez známek strangulace. Během hospitalizace byla provedena předoperační příprava včetně laboratorních vyšetření a interního předoperačního vyšetření.
  Dne 2. 3. 2025 byla v celkové anestezii provedena operace – plastika pravostranné tříselné kýly. Operační výkon proběhl bez komplikací. Pacient byl pooperačně stabilní, bez známek infekce rány.
  V rámci hospitalizace byla u pacienta sledována substituční léčba hypotyreózy (Euthyrox 75 µg denně), bez nutnosti úpravy dávkování. Hodnota TSH při přijetí v normě.
  Pacient byl v dobrém stavu propuštěn do domácího ošetření dne 10. 3. 2025. Doporučena klidová režimová opatření, kontrola v chirurgické ambulanci za 7 dní.
  </div>""" // Added required text for cardinality
* section[sectionHospitalCourse].text.status = #additional //Additional text status for generated narrative /HONza
* section[sectionHospitalCourse].entry[0] = Reference(urn:uuid:10f5c49e-086d-4016-8dd1-b555306bf620) // encounter

// --- DischargeDetails – subsections added ---
// Sekce pro poznámku k propuštění sectionDischargeDetails
* section[sectionDischargeDetails].title = "Poznámka k propuštění"
* section[sectionDischargeDetails].code.coding[0].system = $loinc
* section[sectionDischargeDetails].code.coding[0].code = #8650-4 // Discharge details
* section[sectionDischargeDetails].code.coding[0].display = "Hospital discharge disposition note"
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
* section[sectionDischargeDetails].author[0] = Reference(urn:uuid:a81e74c9-fe94-4eb1-9233-4c8f0b2d4e3a)

// Functional status at discharge (subsection)
* section[sectionDischargeDetails].section[sectionFunctionalStatus].title = "Funkční stav při propuštění"
* section[sectionDischargeDetails].section[sectionFunctionalStatus].code.coding[0].system = $loinc
* section[sectionDischargeDetails].section[sectionFunctionalStatus].code.coding[0].code = #47420-5
* section[sectionDischargeDetails].section[sectionFunctionalStatus].code.coding[0].display = "Functional status assessment note"
* section[sectionDischargeDetails].section[sectionFunctionalStatus].text.status = #additional
* section[sectionDischargeDetails].section[sectionFunctionalStatus].text.div = """
  <div xmlns="http://www.w3.org/1999/xhtml">
    <p>Funkční stav pacienta při propuštění:</p>
    <ul>
      <li>Chůze: samostatná, bez pomůcek.</li>
      <li>ADL: plně soběstačný, bez potřeby asistence.</li>
      <li>Kognice a komunikace: plně orientovaný, adekvátní komunikace.</li>
      <li>Bolest: mírná bolest v oblasti operační rány při pohybu; běžné aktivity bez omezení.</li>
    </ul>
    <p>Doporučeno vyhnout se fyzické zátěži 4 týdny.</p>
  </div>"""
* section[sectionDischargeDetails].section[sectionFunctionalStatus].author[0] = Reference(urn:uuid:a81e74c9-fe94-4eb1-9233-4c8f0b2d4e3a)
* section[sectionDischargeDetails].section[sectionFunctionalStatus].entry[0] = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000022)


// Objective findings at discharge (subsection)
* section[sectionDischargeDetails].section[sectionPhysicalExamination].text.status = #additional
* section[sectionDischargeDetails].section[sectionPhysicalExamination].text.div = """
  <div xmlns="http://www.w3.org/1999/xhtml">
    <p>Objektivní nález při propuštění:</p>
    <ul>
      <li>Vědomí: plně orientovaný, spolupracující.</li>
      <li>Plíce: čisté, bez poslechových nálezů.</li>
      <li>Srdce: pravidelný rytmus, bez šelestů.</li>
      <li>Břicho: měkké, nebolestivé, peristaltika slyšitelná.</li>
      <li>Operační rána: suchá, bez známek infekce, sutura v pořádku, bez hematomu.</li>
      <li>Končetiny: bez otoků, normální prokrvení, pohyblivost zachována.</li>
    </ul>
    <p>Celkově dobrý stav, bez komplikací po výkonu.</p>
  </div>"""
* section[sectionDischargeDetails].section[sectionPhysicalExamination].author[0] = Reference(urn:uuid:a81e74c9-fe94-4eb1-9233-4c8f0b2d4e3a)
  //TODO přidat nějaká strukturovaná data z vyšetření

* section[sectionDischargeDetails].section[sectionAnthropometry].title = "Antropometrická data"

* section[sectionDischargeDetails].section[sectionAnthropometry].code.coding[0].system = $sct
* section[sectionDischargeDetails].section[sectionAnthropometry].code.coding[0].code = #248326004
* section[sectionDischargeDetails].section[sectionAnthropometry].code.coding[0].display = "Body measurements"
//todo přidat narativní část
* section[sectionDischargeDetails].section[sectionAnthropometry].text.status = #additional
* section[sectionDischargeDetails].section[sectionAnthropometry].text.div = """
  <div xmlns="http://www.w3.org/1999/xhtml">
    <p>Antropometrická data při propuštění:</p>
    <ul>
      <li>Výška: 180 cm</li>
      <li>Hmotnost: 75 kg</li>
      <li>BMI: 23,1 kg/m² (normální váha)</li>
      <li>Obvod pasu: 85 cm</li>
      <li>Obvod boků: 100 cm</li>
    </ul>
  </div>""" 
* section[sectionDischargeDetails].section[sectionAnthropometry].author[0] = Reference(urn:uuid:a81e74c9-fe94-4eb1-9233-4c8f0b2d4e3a)
* section[sectionDischargeDetails].section[sectionAnthropometry].entry[0] = Reference(urn:uuid:6bec5d97-a17e-4015-8fce-7b1c0c3a2f4b)
* section[sectionDischargeDetails].section[sectionAnthropometry].entry[1] = Reference(urn:uuid:5c2ddf62-9785-493f-80c6-8b0d1e3a4b2c)
* section[sectionDischargeDetails].section[sectionAnthropometry].entry[2] = Reference(urn:uuid:7cf304de-5ae3-4621-8531-9c8f0b2d4e3a)
* section[sectionDischargeDetails].section[sectionAnthropometry].entry[3] = Reference(urn:uuid:5c363e2d-c4e1-436d-bad7-0b3f8c6a9f1d)
* section[sectionDischargeDetails].section[sectionAnthropometry].entry[4] = Reference(urn:uuid:4ba395b7-be9e-4bed-bef7-1c8f0b2d4e3a)

* section[sectionDischargeDetails].section[sectionVitalSigns].title = "Vital sings"
* section[sectionDischargeDetails].section[sectionVitalSigns].text.status = #generated
* section[sectionDischargeDetails].section[sectionVitalSigns].text.div = """
  <div xmlns="http://www.w3.org/1999/xhtml">
    <p>Vitální funkce</p>
    <ul>
      <li>Vital signs: TK 120/80 mmHg, P 75/min, T 36,5 °C.</li>
    </ul>
  </div>"""
* section[sectionDischargeDetails].section[sectionVitalSigns].entry[0] = Reference(urn:uuid:8d2aea77-f576-4d0f-9508-537359aa44d6)

//Sekce Souhrn Medikace
* section[sectionMedications].title = "Medikace"
* section[sectionMedications].code.coding[+].system = $loinc
* section[sectionMedications].code.coding[=].code = #10160-0
* section[sectionMedications].code.coding[=].display = "History of Medication use Narrative"
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
* section[sectionMedications].entry[0] = Reference(urn:uuid:47472c99-09bf-4007-bfaa-16c9665ae090)
* section[sectionMedications].entry[1] = Reference(urn:uuid:f34114fc-138f-4bd8-8e1a-804d14ec9986)
* section[sectionMedications].entry[2] = Reference(urn:uuid:bf08b62b-0abd-4e88-9092-ce0228382e51)
* section[sectionMedications].entry[3] = Reference(urn:uuid:133cea11-09c6-4147-80af-6c8f0b2d4e3a)
* section[sectionMedications].entry[4] = Reference(urn:uuid:65c49e6d-0951-4e83-8e2c-7c8f0b2d4e3a)
* section[sectionMedications].entry[5] = Reference(urn:uuid:b0001bf8-976a-4d7d-b192-8c8f0b2d4e3a)
//Rozdělit co bylo v průběhu hospitalizace a co bylo při propuštění


//sekce Doporučení - Plán péče
* section[sectionPlanOfCare].title = "Plán péče"
* section[sectionPlanOfCare].code.coding[0].system = "http://loinc.org"
* section[sectionPlanOfCare].code.coding[0].code = #18776-5   //Plan of care note  (58222-1 .. Discharge plan)
* section[sectionPlanOfCare].code.coding[0].display = "Plan of care note"
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
* section[sectionPlanOfCare].entry[0] = Reference(urn:uuid:9c913d06-84fe-4d35-b35b-8b0c7965f535)


//Volitelné části


//Anamnéza
///Add section for Family History
* section[sectionFamilyHistory].title = "Rodinná anamnéza"
* section[sectionFamilyHistory].code.coding[0].system = "http://loinc.org"
* section[sectionFamilyHistory].code.coding[0].code = #10157-6 // Corrected code assignment
* section[sectionFamilyHistory].code.coding[0].display = "History of family member diseases note"
* section[sectionFamilyHistory].text.div = """
  <div xmlns="http://www.w3.org/1999/xhtml">
    <p>Rodinná anamnéza: matka zemřela na infarkt ve věku 75 let, otec žije, má 80 let a trpí hypertenzí. Sourozenci zdraví.</p>
  </div>"""
* section[sectionFamilyHistory].text.status = #additional


//Add section for social history
* section[sectionSocialHistory].title = "Sociální anamnéza"
* section[sectionSocialHistory].code.coding[0].system = "http://loinc.org"
* section[sectionSocialHistory].code.coding[0].code = #29762-2 // Corrected code assignment
* section[sectionSocialHistory].code.coding[0].display = "Social history note"
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
* section[sectionSocialHistory].entry[+] = Reference(Observation-Participation-in-society)
* section[sectionSocialHistory].entry[+] = Reference(Observation-Education)
* section[sectionSocialHistory].entry[+] = Reference(ExampleSdohSmokingEnded)
* section[sectionSocialHistory].entry[+] = Reference(ExampleSdohAlcoholSporadic)

//Add section for imunizations
* section[sectionImmunizations].title = "Očkování"
* section[sectionImmunizations].code.coding[0].system = "http://loinc.org"
* section[sectionImmunizations].code.coding[0].code = #11369-6
* section[sectionImmunizations].code.coding[0].display = "History of Immunization note"
* section[sectionImmunizations].text.div = """
  <div xmlns="http://www.w3.org/1999/xhtml">
    <p>Pacient byl očkován vakcínou proti onemocnění COVID-19 (SNOMED CT: 1119349007) dne 5. 5. 2021. Očkování bylo provedeno a zaznamenáno jako kompletní, bez komplikací.</p>
  </div>
  """
* section[sectionImmunizations].text.status = #generated
* section[sectionImmunizations].entry[0] = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-10000000001e)

// Sekce Infekční kontakty
* section[sectionInfectiousContacts].title = "Infekční kontakty"
* section[sectionInfectiousContacts].code = TemporaryHDRSystem#infection-contact "Infectious contacts"
* section[sectionInfectiousContacts].text.status = #additional
* section[sectionInfectiousContacts].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Pacient byl v kontaktu s osobou nakaženou COVID-19.</p></div>"
* section[sectionInfectiousContacts].entry[0] = Reference(urn:uuid:af4dcfeb-2cb3-4fc8-98e2-5c8f0b2d4e3a)


// Sekce cestovatelská anamnéza
* section[sectionTravelHx].title = "Cestovatelská anamnéza"
* section[sectionTravelHx].code = $loinc#10182-4 "History of Travel note"
* section[sectionTravelHx].text.status = #additional
* section[sectionTravelHx].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Pacient nedávno cestoval na Madagaskar.</p></div>"
* section[sectionTravelHx].entry[0] = Reference(urn:uuid:f95f843e-701f-434a-94c9-3c8f0b2d4e3a)
* section[sectionTravelHx].author[0] = Reference(urn:uuid:a81e74c9-fe94-4eb1-9233-4c8f0b2d4e3a) // Example reference to a travel history observation


//* section[sectionHospitalCourse].title = "Průběh hospitalizace - klinické shrnutí"
//Sekce Předem vyslovená přání
* section[sectionAdvanceDirectives].title = "Dříve vyjádřená přání"
* section[sectionAdvanceDirectives].code.coding[0].display = "Advance healthcare directives"
* section[sectionAdvanceDirectives].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Neresuscitovat</div>"
* section[sectionAdvanceDirectives].text.status = #generated
* section[sectionAdvanceDirectives].entry[0] = Reference(urn:uuid:b3f0f517-9c64-4b8f-99d9-72183cfd9ef0)

//Stav při přijetí
* section[sectionAdmissionEvaluation].title = "Stav při přijetí"
* section[sectionAdmissionEvaluation].code.coding[0].system = $loinc
* section[sectionAdmissionEvaluation].code.coding[0].code = #67852-4 // Corrected code assignment
* section[sectionAdmissionEvaluation].code.coding[0].display = "Hospital Admission evaluation note"
* section[sectionAdmissionEvaluation].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pacient byl přijat na chirurgické oddělení s bolestivou pravostrannou tříselnou kýlou, která byla nevratná, bez známek strangulace. Při příjmu byl pacient v dobrém stavu, vitální funkce stabilní. Při fyzikálním vyšetření bylo zjištěno bolestivé zduření v oblasti pravého tříselného kanálu, bez známek zánětu nebo infekce. Laboratorní vyšetření ukázalo normální hodnoty krevního obrazu a biochemie, včetně TSH v normálním rozmezí. Pacient byl stabilní, bez známek dehydratace nebo hypovolemie. Byla zahájena předoperační příprava včetně interního vyšetření a laboratorních testů. Pacient byl informován o nutnosti chirurgického zákroku a souhlasil s ním. </div>" // Added required text for cardinality
* section[sectionAdmissionEvaluation].text.status = #additional
/* section[sectionAdmissionEvaluation].section[0].title = "Vital sings"
* section[sectionAdmissionEvaluation].section[=].code = $loinc#8716-3 "Vital signs note"
* section[sectionAdmissionEvaluation].section[=].text.status = #generated
* section[sectionAdmissionEvaluation].section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Vital signs</div>"
* section[sectionAdmissionEvaluation].section[=].entry[0] = Reference(urn:uuid:6bec5d97-a17e-4015-8fce-7b1c0c3a2f4b)
* section[sectionAdmissionEvaluation].section[=].entry[1] = Reference(urn:uuid:5c2ddf62-9785-493f-80c6-8b0d1e3a4b2c)
* section[sectionAdmissionEvaluation].section[=].entry[2] = Reference(urn:uuid:7cf304de-5ae3-4621-8531-9c8f0b2d4e3a)
* section[sectionAdmissionEvaluation].section[=].entry[3] = Reference(urn:uuid:5c363e2d-c4e1-436d-bad7-0b3f8c6a9f1d)
* section[sectionAdmissionEvaluation].section[=].entry[4] = Reference(urn:uuid:4ba395b7-be9e-4bed-bef7-1c8f0b2d4e3a) 
* section[sectionAdmissionEvaluation].section[=].entry[5] = Reference(urn:uuid:6c626338-82ba-46a1-bcb8-2c8f0b2d4e3a) // Corrected Reference to include the resource type
* section[sectionAdmissionEvaluation].section[=].entry[6] = Reference(urn:uuid:f0b20060-c4a8-4a74-b12a-6c8f0b2d4e3a) // Corrected Reference to include the resource type
*/
// --- Admission Evaluation – Functional status at admission ---
* section[sectionAdmissionEvaluation].section[sectionFunctionalStatus].title = "Functional status at admission"
* section[sectionAdmissionEvaluation].section[sectionFunctionalStatus].code.coding[0].system = $loinc
* section[sectionAdmissionEvaluation].section[sectionFunctionalStatus].code.coding[0].code = #47420-5
* section[sectionAdmissionEvaluation].section[sectionFunctionalStatus].code.coding[0].display = "Functional status assessment note"
* section[sectionAdmissionEvaluation].section[sectionFunctionalStatus].text.div = """
  <div xmlns="http://www.w3.org/1999/xhtml">
    <p>Funkční stav pacienta při přijetí:</p>
    <ul>
      <li>Chůze: samostatná, bez pomůcek.</li>
      <li>ADL: soběstačný, bez potřeby asistence.</li>
      <li>Kognice a komunikace: plně orientovaný, adekvátní komunikace.</li>
      <li>Bolest: lokalizovaná v pravém třísle při námaze, jinak bez omezení.</li>
    </ul>
    <p>Při přijetí pacient soběstačný, bez významného omezení v běžných denních činnostech, limitace pouze bolestí v pravém třísle.</p>
  </div>"""
* section[sectionAdmissionEvaluation].section[sectionFunctionalStatus].text.status = #additional
* section[sectionAdmissionEvaluation].section[sectionFunctionalStatus].author[0] = Reference(urn:uuid:a81e74c9-fe94-4eb1-9233-4c8f0b2d4e3a)
* section[sectionAdmissionEvaluation].section[sectionFunctionalStatus].entry[0] = Reference(urn:uuid:7cf304de-5ae3-4621-8531-9c8f0b2d4e3a)


// --- Admission Evaluation – Objective findings at admission ---
* section[sectionAdmissionEvaluation].section[sectionPhysicalExamination].text.div = """
  <div xmlns="http://www.w3.org/1999/xhtml">
    <p>Objektivní nález při přijetí:</p>
    <ul>
      <li>Vědomí: plně orientovaný, spolupracující.</li>
      <li>Vital signs: TK 125/80 mmHg, P 78/min, T 36,7 °C, dechová frekvence 16/min.</li>
      <li>Břicho: měkké, nebolestivé, peristaltika slyšitelná.</li>
      <li>Pravé tříslo: hmatné měkké vyklenutí v oblasti tříselného kanálu, zvětšující se při kašli, bez zarudnutí či známek strangulace.</li>
      <li>Kůže: bez patologických změn.</li>
    </ul>
    <p>Významné výsledky vyšetření v průběhu hospitalizace:</p>
    <ul>
      <li>UZ vyšetření pravého třísla: v oblasti tříselného kanálu patrný hypoechogenní vak komunikující s peritoneální dutinou, obsahující střevní kličku. Obsah mobilní, bez známek ischemie. Závěr: vpravo tříselná kýla bez známek komplikace.</li>
      <li>CRP: 6 mg/L (norma: 0–10 mg/L)</li>
    </ul>
  </div>"""
* section[sectionAdmissionEvaluation].section[sectionPhysicalExamination].text.status = #additional
* section[sectionAdmissionEvaluation].section[sectionPhysicalExamination].author[0] = Reference(urn:uuid:a81e74c9-fe94-4eb1-9233-4c8f0b2d4e3a)

* section[sectionAdmissionEvaluation].section[sectionAnthropometry].title = "Antropometrická data"

* section[sectionAdmissionEvaluation].section[sectionAnthropometry].code.coding[0].system = $sct
* section[sectionAdmissionEvaluation].section[sectionAnthropometry].code.coding[0].code = #248326004
* section[sectionAdmissionEvaluation].section[sectionAnthropometry].code.coding[0].display = "Body measurements"
//todo přidat narativní část
* section[sectionAdmissionEvaluation].section[sectionAnthropometry].text.status = #additional
* section[sectionAdmissionEvaluation].section[sectionAnthropometry].text.div = """
  <div xmlns="http://www.w3.org/1999/xhtml">
    <p>Antropometrická data při propuštění:</p>
    <ul>
      <li>Výška: 180 cm</li>
      <li>Hmotnost: 75 kg</li>
      <li>BMI: 23,1 kg/m² (normální váha)</li>
      <li>Obvod pasu: 85 cm</li>
      <li>Obvod boků: 100 cm</li>
    </ul>
  </div>""" 
* section[sectionAdmissionEvaluation].section[sectionAnthropometry].author[0] = Reference(urn:uuid:a81e74c9-fe94-4eb1-9233-4c8f0b2d4e3a)
* section[sectionAdmissionEvaluation].section[sectionAnthropometry].entry[0] = Reference(urn:uuid:6bec5d97-a17e-4015-8fce-7b1c0c3a2f4b)
* section[sectionAdmissionEvaluation].section[sectionAnthropometry].entry[1] = Reference(urn:uuid:5c2ddf62-9785-493f-80c6-8b0d1e3a4b2c)
* section[sectionAdmissionEvaluation].section[sectionAnthropometry].entry[2] = Reference(urn:uuid:7cf304de-5ae3-4621-8531-9c8f0b2d4e3a)
* section[sectionAdmissionEvaluation].section[sectionAnthropometry].entry[3] = Reference(urn:uuid:5c363e2d-c4e1-436d-bad7-0b3f8c6a9f1d)
* section[sectionAdmissionEvaluation].section[sectionAnthropometry].entry[4] = Reference(urn:uuid:4ba395b7-be9e-4bed-bef7-1c8f0b2d4e3a)

* section[sectionAdmissionEvaluation].section[sectionVitalSigns].title = "Vital sings"
* section[sectionAdmissionEvaluation].section[sectionVitalSigns].text.status = #generated
* section[sectionAdmissionEvaluation].section[sectionVitalSigns].text.div = """
  <div xmlns="http://www.w3.org/1999/xhtml">
    <p>Vitální funkce</p>
    <ul>
      <li>Vital signs: TK 120/80 mmHg, P 75/min, T 36,5 °C.</li>
    </ul>
  </div>"""
* section[sectionAdmissionEvaluation].section[sectionVitalSigns].entry[0] = Reference(urn:uuid:8d2aea77-f576-4d0f-9508-537359aa44d6)


* section[sectionAttachments].title = "Přílohy"
* section[sectionAttachments].code.coding[0].system = "http://loinc.org"
* section[sectionAttachments].code.coding[0].code = #77599-9   
* section[sectionAttachments].code.coding[0].display = "Additional documentation"
* section[sectionAttachments].entry[0] = Reference(urn:uuid:66678621-df93-47ca-a36c-2a39a92472e7)
* section[sectionAttachments].entry[1] = Reference(DischargeDocumentHTML)
* section[sectionAttachments].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Přílohy</div>" // Added required text for cardinality
* section[sectionAttachments].text.status = #generated