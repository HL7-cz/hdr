Instance: Procedure-Appendectomy
InstanceOf: CZ_ProcedureHdr
Title: "CZ-Procedure-HDR Example - Appendectomy"
Description: "Czech HDR - example of a Procedure - Appendectomy"

* status = #completed
* code = http://snomed.info/sct#80146002 "Apendektomie"
* subject = Reference(Mracena2)
* performedDateTime = "2023-10-01T10:00:00Z"
* performer.actor = Reference(Practitioner-2)
* reasonCode = http://snomed.info/sct#233604007 "Akutní apendicitida"
* outcome = http://snomed.info/sct#385669000 "Úspěšný"
* bodySite = http://snomed.info/sct#66754008 "Struktura slepého střeva"
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>This is a test of the procedure text field.</div>"
* focalDevice.manipulated = Reference(Device-Pacemaker)

//Příklad procedury akutního slepého střeva
Instance: Procedure-Acute-appendicitis
InstanceOf: CZ_ProcedureHdr
Title: "CZ-Procedure-HDR Example - Acute appendicitis"
Description: "Czech HDR - example of a Procedure - Acute appendicitis."

* id = "CZ-Procedure-HDR-Example-Acute-appendicitis"
* status = #completed
* code = $sct#80146002 "Apendektomie"
* subject = Reference(Mracena2)
* performedDateTime = "2023-10-01T10:00:00Z"
* performer.actor = Reference(Practitioner-2)
* reasonCode = $icd10#K352 "Akutní apendicitida"
* outcome = $sct#385670004 "Částečně úspěšný"
* bodySite = $sct#66754008 "Struktura slepého střeva"
* text.status = #generated
* complication = $icd10#K650 "Peritonitida"
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <p>Procedure: Apendektomie</p>
  <p>Date: 2023-10-01T10:00:00Z</p>
  <p>Reason: Akutní apendicitida</p>
  <p>Complication: Peritonitida</p>
  <p>Outcome: Částečně úspěšný</p>
  <p>Text: Pacient byl přijat s akutní bolestí břicha, horečkou a známkami podráždění pobřišnice. 
  Klinické vyšetření a zobrazovací metody potvrdily diagnózu akutní apendicitidy s generalizovanou peritonitidou (MKN-10: K35.2, K65.0). 
  Byla provedena urgentní laparotomie, při které bylo odhaleno perforované apendix s difuzní hnisavou peritonitidou. 
  Byla provedena apendektomie a následně peritoneální výplach a drenáž. 
  Byla podána pooperační antibiotika. Pacient se momentálně zotavuje pod pečlivým dohledem. </p>
</div>
"""
 
 
// Příklad zákroku s odkazem na přístroj
Instance: Procedure-Insert-Pacemaker
InstanceOf: CZ_ProcedureHdr
Title: "CZ-Procedure-HDR Example - Pacemaker"
Usage: #example
Description: "Czech HDR - example of a Procedure - Pacemaker"
 
* contained[+] = Device-Pacemaker
* status = #completed
* code = $sct#47545007 "Zavedení kardiostimulátoru"
* subject = Reference(Patient/Mracena)
* performedDateTime = "2024-03-05"
* bodySite = $sct#74262004 "Struktura pravé síně"
* reasonCode[+] = $icd10#I44.2 "Úplná atrioventrikulární blokáda"
* outcome = $sct#385669000 "Úspěšný"
// Odkaz na přístroj použitý při zákroku
* focalDevice.manipulated = Reference(Device-Pacemaker)
* focalDevice.action = $sct#129303008 "Implantované zařízení"
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <p>Procedure: Zavedení kardiostimulátoru</p>
  <p>Date: 2023-10-01T10:00:00Z</p>
  <p>Patient: Mračena Mrakomorová žena, DoB: 1971-11-26</p>
  <p>Reason: Úplná atrioventrikulární blokáda</p>
  <p>Outcome: Úspěšný</p>
  <p>Device: Kardiostimulátor Medtronic W1DR01</p>
</div>
"""
 
 
Instance: Procedure-No-Procedure
InstanceOf: CZ_ProcedureHdr
Title: "CZ-Procedure-HDR Example - No known procedures"
Description: "Czech HDR - example of a Procedure - No known procedures."
 
* status = #completed
* code = $absent-or-unknown-procedures-uv-ips#no-known-procedures "Žádné známé procedury"
* subject = Reference(Mracena2)
* performedString = DataAbsentReason#not-performed
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
<p>No known procedures</p>
</div>
"""
 
 // 6. Procedure: Colonoscopy of angiodysplasia (CZ_ProcedureHdr)
Instance: ColonoscopyProcedure
InstanceOf: CZ_ProcedureHdr
* meta.profile[0] = "https://hl7.cz/fhir/hdr/StructureDefinition/cz-procedure-hdr"
//* id = "procedure-colonoscopy"
* status = #completed
* category.coding[0].system = "http://snomed.info/sct"
* category.coding[0].code = #103693007
* category.coding[0].display = "Diagnostic procedure"
* code.coding[0].system = "http://snomed.info/sct"
* code.coding[0].code = #73761001
* code.coding[0].display = "Colonoscopy"
* code.text = "Koloskopie"
* subject = Reference(Mracena2)
* performedDateTime = "2025-03-03"
* reasonReference[0] = Reference(IronDeficiencyAnemiaCondition)
* note[0].text = "Angiodyspl\u00e1zie v tra\u010dn\u00edku o\u0161et\u0159ena argonovou plazmakoagulac\u00ed."
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Angiodyspl\u00e1zie v tra\u010dn\u00edku o\u0161et\u0159ena argonovou plazmakoagulac\u00ed.</div>"
* text.status = #generated

//--------------------------------------------------- 
// Procedure: inguinal-hernia (CZ_ProcedureHdr)
Instance: Procedure-inguinal-hernia
InstanceOf: CZ_ProcedureHdr
//* id = "procedure-inguinal-hernia"
* status = #completed
* code.coding[0].system = $sct
* code.coding[0].code = #80146002
* code.coding[0].display = "Repair of inguinal hernia"
* code.text = "Plastika tříselné kýly"
* subject = Reference(Patient-Novak-Petr)
* performedDateTime = "2025-03-02"
* reasonReference[0] = Reference(IronDeficiencyAnemiaCondition)
* note[0].text = "Plastika pravostranné tříselné kýly dne 2. 3. 2025."
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Plastika pravostranné tříselné kýly dne 2. 3. 2025.</div>"
* text.status = #generated
