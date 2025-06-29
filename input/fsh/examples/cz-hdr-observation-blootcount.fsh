Instance: bloodcount-panel
InstanceOf: CZ_ObservationResultLaboratory
Title: "Panel krevního obrazu"
Description: "Panel obsahující základní hematologické hodnoty"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
  <p><strong>Krevní obraz – kompletní panel</strong></p>
  <p>Pacient: Mračena Mrakomorová (456789123)</p>
  <p>Datum odběru: 1. 4. 2025 09:00</p>
    <p>Odběr: Krev z žíly</p>
    <p>Laboratoř: Hematologická laboratoř Brno</p>
  <p>Výsledky:</p>
  <ul>
    <li>Leukocyty: 6.2 ×10⁹/L (normální)</li>
    <li>Erytrocyty: 4.5 ×10¹²/L (normální)</li>
    <li>Hemoglobin: 140 g/L (normální)</li>
    <li>Hematokrit: 0.42 (normální)</li>
    <li>Trombocyty: 250 ×10⁹/L (normální)</li>
  </ul>
  <p>Výsledek vydán: 1. 4. 2025 12:00</p>
</div>"
* status = #final
* code = https://nclp.uzis.cz#11115 "Krevní obraz"
* subject = Reference(Mracena2)
* effectiveDateTime = "2025-04-01T09:00:00+01:00"
* issued = "2025-04-01T09:30:00+01:00"
* hasMember[0] = Reference(hb-result)
* hasMember[1] = Reference(hct-result)
* hasMember[2] = Reference(rbc-result)
* hasMember[3] = Reference(wbc-result)
* hasMember[4] = Reference(plt-result)
* performer = Reference(Lab-HematologieBrno)
* encounter = Reference(HospitalEncounter-Novak-Petr)

Instance: hb-result
InstanceOf: CZ_ObservationResultLaboratory
Title: "Hemoglobin"
Description: "Příklad pro HDR - Hladina hemoglobinu v krvi"
* status = #final
* code = https://nclp.uzis.cz#11338 "Hemoglobin"
* subject = Reference(Mracena2)
* encounter = Reference(HospitalEncounter-Novak-Petr)
* effectiveDateTime = "2025-04-01T09:00:00+01:00"
* valueQuantity.value = 145
* valueQuantity.unit = "g/L"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #g/L
* referenceRange.low.value = 135
* referenceRange.high.value = 170
* referenceRange.low.unit = "g/L"
* referenceRange.high.unit = "g/L"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#N "Normal"
* note.text = "Hladina hemoglobinu je v normálním rozmezí."
* specimen = Reference(Specimen-EDTA-1)
* performer = Reference(Lab-HematologieBrno)

Instance: hct-result
InstanceOf: Observation
Title: "Hematokrit"
Description: "Příklad pro HDR - Hematokrit v krvi"
* status = #final
* code = https://nclp.uzis.cz#11339 "Hematokrit"
* subject = Reference(Mracena2)
* encounter = Reference(HospitalEncounter-Novak-Petr)
* effectiveDateTime = "2025-04-01T09:00:00+01:00"
* valueQuantity.value = 0.43
* valueQuantity.unit = "1"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #1
* referenceRange.low.value = 0.40
* referenceRange.high.value = 0.50
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#N "Normal"
* note.text = "Hematokrit je v normálním rozmezí."
* specimen = Reference(Specimen-EDTA-1)

Instance: rbc-result
InstanceOf: Observation
Title: "Erytrocyty"
Description: "Příklad pro HDR - Počet erytrocytů v krvi"
* status = #final
* code = https://nclp.uzis.cz#11334 "Erytrocyty"
* subject = Reference(Mracena2)
* encounter = Reference(HospitalEncounter-Novak-Petr)
* effectiveDateTime = "2025-04-01T09:00:00+01:00"
* valueQuantity.value = 5.1
* valueQuantity.unit = "10^12/L"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #10*12/L
* referenceRange.low.value = 4.2
* referenceRange.high.value = 5.8
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#N "Normal"
* note.text = "Počet erytrocytů je v normálním rozmezí."
* specimen = Reference(Specimen-EDTA-1)

Instance: wbc-result
InstanceOf: Observation
Title: "Leukocyty"
Description: "Příklad pro HDR - Počet leukocytů v krvi"
* status = #final
* code = https://nclp.uzis.cz#11332 "Leukocyty"
* subject = Reference(Mracena2)
* encounter = Reference(HospitalEncounter-Novak-Petr)
* effectiveDateTime = "2025-04-01T09:00:00+01:00"
* valueQuantity.value = 6.8
* valueQuantity.unit = "10^9/L"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #10*9/L
* referenceRange.low.value = 3.8
* referenceRange.high.value = 10.0
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#N "Normal"
* note.text = "Počet leukocytů je v normálním rozmezí."
* specimen = Reference(Specimen-EDTA-1)

Instance: plt-result
InstanceOf: Observation
Title: "Trombocyty"
Description: "Příklad pro HDR - Počet trombocytů v krvi"
* status = #final
* code = https://nclp.uzis.cz#11336 "Trombocyty"
* subject = Reference(Mracena2)
* encounter = Reference(HospitalEncounter-Novak-Petr)
* effectiveDateTime = "2025-04-01T09:00:00+01:00"
* valueQuantity.value = 250
* valueQuantity.unit = "10^9/L"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #10*9/L
* referenceRange.low.value = 150
* referenceRange.high.value = 400
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#N "Normal"
* note.text = "Počet trombocytů je v normálním rozmezí."
* specimen = Reference(Specimen-EDTA-1)


Instance: Specimen-EDTA-1
InstanceOf: Specimen
Title: "Vzorek krve – EDTA"
* status = #available
* type = http://snomed.info/sct#122555007 "Venous blood specimen"
* receivedTime = "2025-04-01T09:30:00+01:00"
* subject = Reference(Mracena2)



Instance: Lab-HematologieBrno
InstanceOf: cz-organization-core
Title: "Hematologická laboratoř Brno"
Description: "Referenční laboratoř pro klinickou hematologii"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
  <p><strong>Hematologická laboratoř Brno</strong></p>
  <p>IČO: 98765432</p>
  <p>Adresa: Krevní 7, 602 00 Brno</p>
</div>"
* identifier[0].system = "http://hl7.cz/identifier/ico"
* identifier[0].value = "98765432"
* name = "Hematologická laboratoř Brno"
* address[0].text = "Krevní 7, 602 00 Brno"
* address[0].city = "Brno"
* address[0].postalCode = "60200"
* address[0].country = "CZ"
* extension[0].url = "http://hl7.cz/fhir/core/StructureDefinition/cz-organization-specialization"

