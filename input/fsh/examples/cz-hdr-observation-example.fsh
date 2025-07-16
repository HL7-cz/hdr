Instance: CZObservationSdohHdrExample
InstanceOf: CZ_ObservationSdohHdr
Description: "Example instance for SDOH observation (assessment-based) using CZ_ObservationSdohHdr profile."

* status = #final
* category[SocialHistory] = $observation-category#social-history
//* category[SDOH] = SDOHCCValueSetSDOHCategory#food-insecurity
* code = LOINC#88122-7 "Food insecurity risk [HVS]"
* subject = Reference(Mracena2)
* effectiveDateTime = "2024-03-28"
* performer = Reference(Practitioner-2)
* valueCodeableConcept = $sct#733423003 "At risk of food insecurity"
* note.text = "Patient reported difficulties accessing nutritious food regularly."

Instance: ExampleSdohSmoking
InstanceOf: CZ_ObservationSdohHdr
Description: "Example of Social History Observation - Smoking"

* status = #final
* category[SocialHistory] =  $observation-category#social-history
* code = $sct#229819007 "Smoking"
* subject = Reference(Patient-Novak-Petr)
* effectivePeriod.start = "2017-04-15T00:00:00+02:00"
* effectivePeriod.end = "2020-04-15T00:00:00+02:00"
* performer = Reference(Practitioner-2)
* valueCodeableConcept.text = "0.5 {pack}/d"
* note.text = "Entered by Všeobecný lékař"

Instance: ExampleSdohSmokingEnded
InstanceOf: CZ_ObservationSdohHdr
Description: "Example of Social History Observation - Smoking history"

* status = #final
* category[SocialHistory] = $observation-category#social-history
* code = $sct#229819007 "Tobacco smoking behavior"
* subject = Reference(Patient-Novak-Petr)
* effectiveDateTime = "2015-01-01T00:00:00+01:00" // Datum zanechání kouření
* performer = Reference(Practitioner-2)
* valueCodeableConcept = $sct#8517006 "Ex-smoker"
* note.text = "Před zanecháním kouřil cca 20 cigaret denně, přestal v roce 2015. Zadáno praktickým lékařem."


Instance: ExampleSdohAlcohol
InstanceOf: CZ_ObservationSdohHdr
Description: "Example of Social History Observation - Alcohol Use"

* status = #final
* category[SocialHistory] =  $observation-category#social-history
* code = $sct#160573003 "ETOH (Alcohol) Use"
* subject = Reference(Patient-Novak-Petr)
* effectivePeriod.start = "2016-04-15T00:00:00+02:00"
* effectivePeriod.end = "2016-04-15T00:00:00+02:00"
* performer = Reference(Practitioner-2)
* valueCodeableConcept.text = "4 {glass}/d"
* note.text = "Entered by Všeobecný lékař"

Instance: ExampleSdohAlcoholSporadic
InstanceOf: CZ_ObservationSdohHdr
Description: "Example of Social History Observation - Alcohol Use"

* status = #final
* category[SocialHistory] = $observation-category#social-history
* code = $sct#160573003 "Alcohol consumption"
* subject = Reference(Patient-Novak-Petr)
* effectiveDateTime = "2025-03-01T00:00:00+01:00"
* performer = Reference(Practitioner-2)
* valueCodeableConcept = $sct#228273003 "Drinks alcohol occasionally"
* note.text = "Konzumace cca 1–2 piva týdně. Zadáno praktickým lékařem."


Instance: ExampleChestCircumference
InstanceOf: CZ_ObservationChestCircumferenceHdr
Description: "Example instance for chest circumference observation using the CZ_ObservationChestCircumferenceHdr profile."

* status = #final
* code = $loinc#8280-0 "Chest circumference"
* subject = Reference(Patient-Novak-Petr)
* effectiveDateTime = "2024-03-28"
* valueQuantity.value = 85
* valueQuantity.unit = "cm"
* valueQuantity.system = "http://unitsofmeasure.org"

Instance: ExampleHeadCircumference
InstanceOf: CZ_ObservationHeadCircumferenceHdr
Description: "Example instance for head circumference observation using the CZ_ObservationHeadCircumferenceHdr profile."

* status = #final
* code = $loinc#8287-5 "Head circumference"
* subject = Reference(Patient-Novak-Petr)
* effectiveDateTime = "2024-03-28"
* valueQuantity.value = 50
* valueQuantity.unit = "cm"
* valueQuantity.system = "http://unitsofmeasure.org"

Instance: ExampleBMI
InstanceOf: CZ_ObservationBMIHdr
Description: "Example instance for BMI observation using the CZ_ObservationBMIHdr profile."

* status = #final
* code = $loinc#39156-5 "Body mass index (BMI)"
* subject = Reference(Patient-Novak-Petr)
* effectiveDateTime = "2024-03-28"
* valueQuantity.value = 22.5
* valueQuantity.unit = "kg/m2"
* valueQuantity.system = "http://unitsofmeasure.org"

Instance: ExampleAbdominalCircumference
InstanceOf: CZ_ObservationAbdominalCircumferenceHdr
Description: "Example instance for abdominal circumference observation using the CZ_ObservationAbdominalCircumferenceHdr profile."

* status = #final
* code = $loinc#56086-2 "Abdominal circumference"
* subject = Reference(Patient-Novak-Petr)
* effectiveDateTime = "2024-03-28"
* valueQuantity.value = 90
* valueQuantity.unit = "cm"
* valueQuantity.system = "http://unitsofmeasure.org"

Instance: ExampleHeight
InstanceOf: CZ_ObservationHeightHdr
Description: "Example instance for height observation using the CZ_ObservationHeightHdr profile."

* status = #final
* code = $loinc#8302-2 "Body height"
* subject = Reference(Patient-Novak-Petr)
* effectiveDateTime = "2024-03-28"
* valueQuantity.value = 175
* valueQuantity.unit = "cm"
* valueQuantity.system = "http://unitsofmeasure.org"

Instance: ExampleWeight
InstanceOf: CZ_ObservationWeightHdr
Description: "Example instance for weight observation using the CZ_ObservationWeightHdr profile."

* status = #final
* code = $loinc#29463-7 "Body weight"
* subject = Reference(Patient-Novak-Petr)
* effectiveDateTime = "2024-03-28"
* valueQuantity.value = 70
* valueQuantity.unit = "kg"
* valueQuantity.system = "http://unitsofmeasure.org"

//-----------------------------------------
Instance: Observation-UZV-Novak
InstanceOf: Observation
Usage: #example
Title: "UZV - Novák Petr"
Description: "Czech HDR - example of an ultrasound observation for Novák Petr"
* id = "Observation-UZV-Novak"
* status = #final
* category = $observation-category#imaging  //http://terminology.hl7.org/CodeSystem/observation-category
* code = $loinc#24719-7 "Ultrasound of groin"
* subject = Reference(Patient-Novak-Petr)
* effectiveDateTime = "2025-03-10T10:00:00+01:00"
* performer = Reference(Practitioner-UZV)
* valueString = "UZ vyšetření pravého třísla: v oblasti tříselného kanálu patrný hypoechogenní vak komunikující s peritoneální dutinou, obsahující střevní kličku. Obsah je mobilní, bez známek ischemie. Závěr: vpravo tříselná kýla bez známek komplikace."

//-----------------------------------------
Instance: Observation-CRP-Novak
InstanceOf: Observation
Usage: #example
Title: "CRP - Novák Petr"
Description: "Czech HDR - example of CRP observation for Novák Petr"
* id = "Observation-CRP-Novak"
* status = #final
* category = $observation-category#Laboratory  //http://terminology.hl7.org/CodeSystem/observation-category
* code = $loinc#1988-5 "C reactive protein"
* subject = Reference(Patient-Novak-Petr)
* effectiveDateTime = "2025-03-01T10:00:00+01:00"
* performer = Reference(Practitioner-UZV)
* valueQuantity.value = 6.0
* valueQuantity.unit = "mg/L"
* valueQuantity.system = $Jednotky
* valueQuantity.code = #"mg/L"
* referenceRange[0].low.value = 0.0
* referenceRange[0].low.unit = "mg/L"
* referenceRange[0].low.system = $Jednotky
* referenceRange[0].low.code = #"mg/L"
* referenceRange[0].high.value = 10.0
* referenceRange[0].high.unit = "mg/L"
* referenceRange[0].high.system = $Jednotky
* referenceRange[0].high.code = #"mg/L"
* referenceRange[0].text = "Norma: 0–10 mg/L"
* interpretation[+] = $v3-ObservationInterpretation#N "Normal"

Instance: ExampleBloodPressure
InstanceOf: Observation
Description: "Example instance for blood pressure observation (systolic and diastolic)."
* status = #final
* category[0] = $observation-category#vital-signs "Vital Signs"
* code = $loinc#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(Patient-Novak-Petr)
* effectiveDateTime = "2024-03-28"

// Systolický tlak
* component[0].code = $loinc#8480-6 "Systolic blood pressure"
* component[0].valueQuantity.value = 120
* component[0].valueQuantity.unit = "mmHg"
* component[0].valueQuantity.system = "http://unitsofmeasure.org"
* component[0].valueQuantity.code = #mm[Hg]

// Diastolický tlak
* component[1].code = $loinc#8462-4 "Diastolic blood pressure"
* component[1].valueQuantity.value = 80
* component[1].valueQuantity.unit = "mmHg"
* component[1].valueQuantity.system = "http://unitsofmeasure.org"
* component[1].valueQuantity.code = #mm[Hg]

Instance: Observation-DischargeCondition
InstanceOf: Observation
Usage: #example
Title: "Stav při propuštění"
Description: "Hodnocení celkového klinického stavu pacienta při propuštění"

* status = #final
* category[0] = $observation-category#clinical "Clinical"
* code = $loinc#8653-8 "Patient condition at discharge"
* performer[0] = Reference(Practitioner-Author)
* subject = Reference(Patient-Novak-Petr)
* effectiveDateTime = "2024-03-29"
* valueCodeableConcept = $sct#268910001 "Stav stabilizovaný"
* interpretation = $v3-ObservationInterpretation#N "Normal"
* note[0].text = "Pacient ve stabilizovaném stavu, bez komplikací."

Instance: Observation-TravelHistory-Madagaskar
InstanceOf: Observation
Usage: #example
* status = #final
* code = $loinc#10182-4 "History of travel"
* subject = Reference(Patient-Novak-Petr)
* effectiveDateTime = "2024-03-20"
* valueCodeableConcept.coding[0].system = $iso3166-1-2
* valueCodeableConcept.coding[0].code = #MG
* valueCodeableConcept.coding[0].display = "Madagaskar"
* valueCodeableConcept.text = "Madagaskar"
* performer = Reference(Practitioner-Author)
* note[0].text = "Pacient navštívil Madagaskar během posledních 30 dnů."

Instance: Observation-InfectiousContact
InstanceOf: Observation
Usage: #example
Title: "Infekční kontakt"
Description: "Pacient byl v kontaktu s osobou nakaženou COVID-19"
* status = #final
* code = $loinc#11352-2 "History of contact with infectious disease"
* subject = Reference(Patient-Novak-Petr)
* performer = Reference(Practitioner-Author)
* effectiveDateTime = "2024-03-25"
* valueCodeableConcept = $sct#840539006 "Contact with confirmed COVID-19 case"
* note[0].text = "Kontakt proběhl během společné domácnosti 5 dní před příjmem."