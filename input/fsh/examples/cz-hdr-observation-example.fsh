Instance: CZObservationSdohHdrExample
InstanceOf: CZ_ObservationSdohHdr
Description: "Example instance for SDOH observation (assessment-based) using CZ_ObservationSdohHdr profile."

* status = #final
* category[SocialHistory] = $observation-category#social-history
//* category[SDOH] = SDOHCCValueSetSDOHCategory#food-insecurity
* code = LOINC#88124-3 "Food insecurity risk [HVS]"
* subject = Reference(Mracena2)
* effectiveDateTime = "2024-03-28"
* performer = Reference(Practitioner-2)
* valueCodeableConcept = $sct#733423003 "Food insecurity"
* note.text = "Patient reported difficulties accessing nutritious food regularly."

Instance: ExampleSdohSmoking
InstanceOf: CZ_ObservationSdohHdr
Description: "Example of Social History Observation - Smoking"

* status = #final
* category[SocialHistory] =  $observation-category#social-history
* code = $sct#229819007 "Tobacco use and exposure"
* subject = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000)
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
* code = $sct#229819007 "Tobacco use and exposure"
* subject = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000)
* effectiveDateTime = "2015-01-01T00:00:00+01:00" // Datum zanechání kouření
* performer = Reference(Practitioner-2)
* valueCodeableConcept = $sct#8517006 "Ex-smoker"
* note.text = "Před zanecháním kouřil cca 20 cigaret denně, přestal v roce 2015. Zadáno praktickým lékařem."


Instance: ExampleSdohAlcohol
InstanceOf: CZ_ObservationSdohHdr
Description: "Example of Social History Observation - Alcohol Use"

* status = #final
* category[SocialHistory] =  $observation-category#social-history
* code = $sct#160573003 "Alcohol intake"
* subject = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000)
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
* subject = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000)
* effectiveDateTime = "2025-03-01T00:00:00+01:00"
* performer = Reference(Practitioner-2)
* valueCodeableConcept = $sct#228273003 "Finding relating to alcohol drinking behavior"
* note.text = "Konzumace cca 1–2 piva týdně. Zadáno praktickým lékařem."


Instance: ExampleChestCircumference
InstanceOf: CZ_ObservationChestCircumferenceHdr
Description: "Example instance for chest circumference observation using the CZ_ObservationChestCircumferenceHdr profile."

* status = #final
* code = $loinc#8280-0 "Waist Circumference at umbilicus by Tape measure"
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #vital-signs
* subject = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000)
* effectiveDateTime = "2024-03-28"
* performer = Reference(Practitioner-2)
* valueQuantity.value = 85
* valueQuantity.unit = "cm"
* valueQuantity.system = $ucum
* valueQuantity.code = #cm

Instance: ExampleHeadCircumference
InstanceOf: CZ_ObservationHeadCircumferenceHdr
Description: "Example instance for head circumference observation using the CZ_ObservationHeadCircumferenceHdr profile."

* status = #final
* code = $loinc#9843-4 "Head Occipital-frontal circumference"
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #vital-signs
* subject = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000)
* effectiveDateTime = "2024-03-28"
* performer = Reference(Practitioner-2)
* valueQuantity.value = 50
* valueQuantity.unit = "cm"
* valueQuantity.system = $ucum
* valueQuantity.code = #cm

Instance: ExampleBMI
InstanceOf: CZ_ObservationBMIHdr
Description: "Example instance for BMI observation using the CZ_ObservationBMIHdr profile."

* status = #final
* code = $loinc#39156-5 "Body mass index (BMI) [Ratio]"
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #vital-signs
* subject = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000)
* effectiveDateTime = "2024-03-28"
* performer = Reference(Practitioner-2)
* valueQuantity.value = 22.5
* valueQuantity.unit = "kg/m2"
* valueQuantity.system = $ucum
* valueQuantity.code = #kg/m2

Instance: ExampleAbdominalCircumference
InstanceOf: CZ_ObservationAbdominalCircumferenceHdr
Description: "Example instance for abdominal circumference observation using the CZ_ObservationAbdominalCircumferenceHdr profile."

* status = #final
* code = $loinc#56086-2 "Adult Waist Circumference Protocol"
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #vital-signs
* subject = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000)
* effectiveDateTime = "2024-03-28"
* performer = Reference(Practitioner-2)
* valueQuantity.value = 90
* valueQuantity.unit = "cm"
* valueQuantity.system = $ucum
* valueQuantity.code = #cm

Instance: ExampleHeight
InstanceOf: CZ_ObservationHeightHdr
Description: "Example instance for height observation using the CZ_ObservationHeightHdr profile."

* status = #final
* code = $loinc#8302-2 "Body height"
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #vital-signs
* subject = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000)
* effectiveDateTime = "2024-03-28"
* performer = Reference(Practitioner-2)
* valueQuantity.value = 175
* valueQuantity.unit = "cm"
* valueQuantity.system = $ucum
* valueQuantity.code = #cm

Instance: ExampleWeight
InstanceOf: CZ_ObservationWeightHdr
Description: "Example instance for weight observation using the CZ_ObservationWeightHdr profile."

* status = #final
* code = $loinc#29463-7 "Body weight"
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #vital-signs
* subject = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000)
* effectiveDateTime = "2024-03-28"
* performer = Reference(Practitioner-2)
* valueQuantity.value = 70
* valueQuantity.unit = "kg"
* valueQuantity.system = $ucum
* valueQuantity.code = #kg

//-----------------------------------------
Instance: Observation-UZV-Novak
InstanceOf: Observation
Usage: #example
Title: "UZV - Novák Petr"
Description: "Czech HDR - example of an ultrasound observation for Novák Petr"
* id = "e15aeeaf-e288-404c-9704-9c8f0b2d4e3a"
* status = #final
* category = $observation-category#imaging  //http://terminology.hl7.org/CodeSystem/observation-category
* code = $loinc#24719-7 "US Groin"
* subject = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000)
* effectiveDateTime = "2025-03-10T10:00:00+01:00"
* performer = Reference(Practitioner-UZV)
* valueString = "UZ vyšetření pravého třísla: v oblasti tříselného kanálu patrný hypoechogenní vak komunikující s peritoneální dutinou, obsahující střevní kličku. Obsah je mobilní, bez známek ischemie. Závěr: vpravo tříselná kýla bez známek komplikace."

//-----------------------------------------
Instance: Observation-CRP-Novak
InstanceOf: Observation
Usage: #example
Title: "CRP - Novák Petr"
Description: "Czech HDR - example of CRP observation for Novák Petr"
* id = "10f5c49e-086d-4016-8dd1-10000000001b"
* status = #final
* category = $observation-category#laboratory  //http://terminology.hl7.org/CodeSystem/observation-category
* code = $loinc#1988-5 "C reactive protein [Mass/volume] in Serum or Plasma"
* subject = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000)
* effectiveDateTime = "2025-03-01T10:00:00+01:00"
* performer = Reference(Practitioner-UZV)
* valueQuantity.value = 6.0
* valueQuantity.unit = "mg/L"
* valueQuantity.system = $ucum
* valueQuantity.code = #"mg/L"
* referenceRange[0].low.value = 0.0
* referenceRange[0].low.unit = "mg/L"
* referenceRange[0].low.system = $ucum
* referenceRange[0].low.code = #"mg/L"
* referenceRange[0].high.value = 10.0
* referenceRange[0].high.unit = "mg/L"
* referenceRange[0].high.system = $ucum
* referenceRange[0].high.code = #"mg/L"
* referenceRange[0].text = "Norma: 0–10 mg/L"
* interpretation[+] = $v3-ObservationInterpretation#N "Normal"

Instance: ExampleBloodPressure
InstanceOf: Observation
Description: "Example instance for blood pressure observation (systolic and diastolic)."
* status = #final
* category[0] = $observation-category#vital-signs "Vital Signs"
* code = $loinc#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000)
* effectiveDateTime = "2024-03-28"
* performer = Reference(Practitioner-2)
// Systolický tlak
* component[0].code = $loinc#8480-6 "Systolic blood pressure"
* component[0].valueQuantity.value = 120
* component[0].valueQuantity.unit = "mmHg"
* component[0].valueQuantity.system = $ucum
* component[0].valueQuantity.code = #mm[Hg]

// Diastolický tlak
* component[1].code = $loinc#8462-4 "Diastolic blood pressure"
* component[1].valueQuantity.value = 80
* component[1].valueQuantity.unit = "mmHg"
* component[1].valueQuantity.system = $ucum
* component[1].valueQuantity.code = #mm[Hg]

Instance: Observation-DischargeCondition
InstanceOf: Observation
Usage: #example
Title: "Stav při propuštění"
Description: "Hodnocení celkového klinického stavu pacienta při propuštění"
* id = "3f85726c-ad2f-441b-89ce-100000000021"
* status = #final
* category[0] = $observation-category#exam "Exam"
* code = $loinc#66455-7 "Condition status"
* performer[0] = Reference(urn:uuid:a81e74c9-fe94-4eb1-9233-4c8f0b2d4e3a)
* subject = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000)
* effectiveDateTime = "2024-03-29"
* valueCodeableConcept = $sct#268910001 "Patient's condition improved"
* interpretation = $v3-ObservationInterpretation#N "Normal"
* note[0].text = "Pacient ve stabilizovaném stavu, bez komplikací."

Instance: Observation-TravelHistory-Madagaskar
InstanceOf: CZ_ObservationTravelHdr
Usage: #example
Title: "Observation - Travel History"
Description: "Travel history observation"
* status = #final
* code = $loinc#94651-7 "Country of travel [Location]"
* subject = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000)
* effectiveDateTime = "2024-03-20"
* valueCodeableConcept.coding[0].system = "urn:iso:std:iso:3166"
* valueCodeableConcept.coding[0].code = #MG
* valueCodeableConcept.coding[0].display = "Madagascar"
* valueCodeableConcept.text = "Madagaskar"
* performer = Reference(urn:uuid:a81e74c9-fe94-4eb1-9233-4c8f0b2d4e3a)
* note[0].text = "Pacient navštívil Madagaskar během posledních 30 dnů."

Instance: Observation-InfectiousContact
InstanceOf: CZ_ObservationInfectiousContactHdr
Usage: #example
Title: "Infekční kontakt"
Description: "Pacient byl v kontaktu s osobou nakaženou COVID-19"
* status = #final
* category[exposureClass].coding[0].system = "http://terminology.hl7.org/CodeSystem/v3-ActClass"
* category[exposureClass].coding[0].code = #AEXPOS
* category[exposureClass].coding[0].display = "acquisition exposure"
* code = $v3-ParticipationType#EXPAGNT "ExposureAgent"
* subject = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000)
* performer = Reference(urn:uuid:a81e74c9-fe94-4eb1-9233-4c8f0b2d4e3a)
* effectiveDateTime = "2024-03-25"
* valueCodeableConcept.coding[0].system = $icd10
* valueCodeableConcept.coding[0].code = #U07.1
* valueCodeableConcept.coding[0].display = "COVID-19, virus identified"
* note[0].text = "Kontakt proběhl během společné domácnosti 5 dní před příjmem."


Instance: Observation-Participation-in-society
InstanceOf: cz-observation-sdoh-hdr
Usage: #example
Title: "Společenské uplatnění"
Description: "Pacient je aktivní v komunitních aktivitách a dobrovolnictví."
* id = "3f85726c-ad2f-441b-89ce-100000000022"
* status = #final
* code = $sct#363910003 "Characteristic of psychosocial functioning"
* effectiveDateTime = "2024-03-28"
* performer = Reference(urn:uuid:2b7e9637-5018-4542-9faf-d5abdee7b849)
* subject = Reference(Patient-Novak-Petr)
* hasMember = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000023)
* hasMember = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000024)
* hasMember = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000025)


Instance: Observation-Work-situation
InstanceOf: cz-observation-sdoh-hdr
Usage: #example
Title: "Pracovní zapojení"
Description: "Pacient pracuje na plný úvazek jako programátor."
* id = "3f85726c-ad2f-441b-89ce-100000000023"
* status = #final
* code = $sct#224362002 "Employment status" 
* subject = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000)
* valueString = "Pacient pracuje jako programátor na plný úvazek v IT firmě."
* effectiveDateTime = "2024-03-28"
* performer = Reference(urn:uuid:2b7e9637-5018-4542-9faf-d5abdee7b849)
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>
    <p>Pacient pracuje jako programátor na plný úvazek v IT firmě.</p>
   </div>"   

Instance: Observation-Hobby
InstanceOf: cz-observation-sdoh-hdr
Usage: #example
Title: "Koníčky"
Description: "Pacient aktivně sportuje (jezdí na kole a běhá) a má zájem o fotografování."
* id = "3f85726c-ad2f-441b-89ce-100000000024"
* status = #final
* code = $sct#300755007 "Ability to engage in a hobby"
* subject = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000)
* performer = Reference(urn:uuid:2b7e9637-5018-4542-9faf-d5abdee7b849)
* valueString = "Pacient aktivně sportuje (jezdí na kole a běhá) a má zájem o fotografování."
* effectiveDateTime = "2024-03-28"
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>
    <p>Pacient aktivně sportuje (jezdí na kole a běhá) a má zájem o fotografování.</p>
   </div>"  

Instance: Observation-Social-network
InstanceOf: cz-observation-sdoh-hdr
Usage: #example
Title: "Sociální síť"
Description: "Pacient má aktivní sociální síť a pravidelně se setkává s přáteli."
* id = "3f85726c-ad2f-441b-89ce-100000000025"
* status = #final
* code = $sct#1179210008 "Ability to build and utilize social network"
* subject = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000)
* performer = Reference(urn:uuid:2b7e9637-5018-4542-9faf-d5abdee7b849)
* valueString = "Pacient má širokou sociální síť a pravidelně se setkává s přáteli a rodinou."
* effectiveDateTime = "2024-03-28"
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>
    <p>Pacient má širokou sociální síť a pravidelně se setkává s přáteli a rodinou.</p>
   </div>"

Instance: Observation-Education
InstanceOf: cz-observation-sdoh-hdr
Usage: #example
Title: "Vzdělání"
Description: "Pacient má vysokoškolské vzdělání v oboru informatiky."
* id = "f85726c-ad2f-441b-89ce-100000000027"
* status = #final
* code = $sct#276031006 "Education"
* subject = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000)
* performer = Reference(urn:uuid:2b7e9637-5018-4542-9faf-d5abdee7b849)
* effectiveDateTime = "2024-03-28"
* hasMember = Reference(Observation-Education-level)


Instance: Observation-Education-level
InstanceOf: cz-observation-sdoh-hdr
Usage: #example
Title: "Dosažený stupeň vzdělání"
Description: "Pacient má vysokoškolské vzdělání v oboru informatiky."
//* id = "3f85726c-ad2f-441b-89ce-100000000026"
* status = #final
* code = $sct#443722004 "Educational level of parent of subject"
* subject = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000)
* performer = Reference(urn:uuid:2b7e9637-5018-4542-9faf-d5abdee7b849)
* valueCodeableConcept.coding[0].system = $cz-SocialHistory-education-level
* valueCodeableConcept.coding[0].code = #BD
* valueCodeableConcept.coding[0].display = "College or baccalaureate degree complete"
* effectiveDateTime = "2024-03-28"
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>
    <p>Pacient má vysokoškolské vzdělání v oboru informatiky.</p>
   </div>"
