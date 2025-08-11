Logical: ObjectiveFindingsHdrCz
Id: LogCzObjectiveFindingsCz
Title: "A.2.8.1 Objektivní nález"
Description: "Nemocniční propouštěcí zpráva - Objektivní nález pacienta při propuštění."

* datum 1..1 dateTime "A.2.8.1.1 Datum a čas" """...Datum a čas vyšetření pacienta lékařem při propuštění..."""
* provedl 0..* Base "A.2.8.1.2 Provedl" """...Identifikuje osobu, která vyšetření provedla nebo je zdrojem informací o výsledku vyšetření. Tato osoba nemusí být totožná s autorem dokumentu..."""
* antropometrickeUdaje 0..1 Base "A.2.8.1.3 Antropometrické údaje" """...Výsledky antropometrických měření pacienta: Požadované: výška, hmotnost, BMI (automatický výpočet z uvedených hodnot). Volitelné: obvod hlavy, hrudníku, břicha..."""
  * textVysledek 0..1 string "A.2.8.1.3.1 Výsledek vyšetření textem" """...Textový popis výsledku vyšetření..."""
  * parametrickyZaznam 0..* Base "A.2.8.1.3.2 Parametrický záznam vyšetření" """...Parametrický zápis výsledku vyšetření..."""
    * popis 1..1 string "A.2.8.1.3.2.1 Popis vyšetření" """...Popis vyšetření včetně kódu vyšetření, vyšetřované oblasti či vzorku, datum a čas odběru vzorku..."""
    * vysledek 1..1 Quantity "A.2.8.1.3.2.2 Výsledek vyšetření formalizovaný" """...Výsledek vyšetření textem a/nebo ve formě číselných a kódovaných výsledků měření. Dále podrobnosti o tom, jak byly testy provedeny k získání výsledných hodnot, informace o referenčních rozmezích a interpretaci výsledku..."""
  * provedl 0..* Base "A.2.8.1.3.3 Provedl" """...Identifikuje osobu, která vyšetření provedla nebo je zdrojem informací o výsledku..."""
* zivotniFunkce 0..* Base "A.2.8.1.4 Základní životní funkce" """...Výsledky měření základních životních funkcí pacienta: Tepová frekvence, dechová frekvence, TK s uvedením strany měření. Volitelné: saturace O2..."""
  * textovyVysledek 0..1 string "A.2.8.1.4.1 Výsledek vyšetření textem" """...Textový popis výsledku vyšetření..."""
  * parametrickyZaznam 0..1 Base "A.2.8.1.4.2 Parametrický záznam vyšetření" """...Parametrický zápis výsledku vyšetření..."""
    * popis 1..1 string "A.2.8.1.4.2.1 Popis vyšetření" """...Popis vyšetření včetně kódu vyšetření, vyšetřované oblasti či vzorku, datum a čas odběru vzorku..."""
    * vysledek 1..1 Quantity "A.2.8.1.4.2.2 Výsledek vyšetření formalizovaný" """...Výsledek vyšetření textem a/nebo ve formě číselných a kódovaných výsledků měření..."""
  * provedl 0..* Base "A.2.8.1.4.3 Provedl" """...Identifikuje osobu, která vyšetření provedla nebo je zdrojem informací o výsledku..."""

/* logický model objektivního nálezu eHN
* date 1..1 dateTime "A.2.8.1.1 - Date" """Date and time of the examination at or before discharge"""
* anthropometricObservations 0..* Base "A.2.8.1.3 - Anthropometric observations" """Observation of Body weight and height of the patient, BMI, circumference of head, waist, hip, limbs and skin fold thickness.Result of the observation includes text, numeric and coded results of the measurement including measurement units. Multiple observations could be provided."""
* anthropometricObservations.description 0..1 string "A.2.8.1.3.1 - Result description" """Narrative representation of the observation result and findings."""
* anthropometricObservations.details 1..1 Base "A.2.8.1.3.2 - Observation details" """Observation details include code that identifies observation, specification of the observed body structure or specimen, date and time of the specimen collection, observation method or protocol used and other aspects of the observation."""
* anthropometricObservations.result 1..1 Base "A.2.8.1.3.3 - Observation result" """Result of the observation including numeric and coded results of the measurement, details about how the tests were done to get the result values, information about reference ranges and result interpretation. Content of the observation result will vary according to the type of the observation."""
* vitalSigns 0..* Base "A.2.8.1.4 - Vital signs" """Observation of Vital signs:
• Recommended: systolic and diastolic blood pressure including site of measurement, pulse rate, respiratory rate
• Optional: 02 saturation, temperature, pain (scale), ..."""
* vitalSigns.description 0..1 string "A.2.8.1.4.1 - Result description" """Narrative representation of the observation result and findings."""
* vitalSigns.details 1..1 Base "A.2.8.1.4.2 - Observation details" """Observation details include code that identifies observation, specification of the observed body structure or specimen, date and time of the specimen collection, observation method or protocol used and other aspects of the observation."""
* vitalSigns.result 1..1 Base "A.2.8.1.4.3 - Observation result" """Result of the observation including numeric and coded results of the measurement, details about how the tests were done to get the result values, information about reference ranges and result interpretation. Content of the observation result will vary according to the type of the observation."""
* physicalExamination 0..1 Base "A.2.8.1.5 - Physical examination" """Physical examination (at discharge) is the process of evaluating objective anatomical findings. Physical examination can be performed through observation, palpation, percussion, and auscultation."""
* physicalExamination.description 1..1 string "A.2.8.1.5.1 - Observation Note" """A narrative description of the observation. It should be structured by the organ system (e.g. head, neck, body, arms, ...)"""
*/