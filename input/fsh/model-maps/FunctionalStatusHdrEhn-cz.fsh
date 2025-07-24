Logical: LogCzFunctionalStatusHdrCz
Id: LogFunctionalStatusCz
Title: "A.2.8.2 - Funkční stav při propuštění"
Description: """Nemocniční propouštěcí zpráva - Hodnocení funkčního stavu pacienta při propuštění."""


* funkcniStav 0..1 Base "A.2.8.2 Funkční stav při propuštění" """Funkční stav lze hodnotit několika různými způsoby, obvykle se zaměřením na schopnosti osoby vykonávat základní aktivity každodenního života (ADL), které zahrnují základní sebeobsluhu, jako je koupání, krmení a toaleta a instrumentální aktivity každodenního života (IADL), které zahrnují činnosti jako vaření, nakupování a řízení vlastních záležitostí."""
  * datum 1..1 dateTime "A.2.8.2.1 Datum a čas" """Datum a čas hodnocení funkčního stavu pacienta."""
  * performer 0..* Base "A.2.8.2.2 Provedl" """Identifikuje osobu, která  vyšetření provedla nebo je zdrojem informací o výsledku vyšetření. Tato osoba nemusí být totožná s autorem dokumentu."""
  * popis 0..1 string "A.2.8.2.3 Popis" """Textový popis funkčního stavu pacienta."""
  * formalizovaneHodnoceni 0..* Base "A.2.8.2.4 Hodnocení formalizované" """Formalizované hodnocení funkčního stavu pacienta dle jednotlivých hodnotících kategorií (např. MKF)."""
    * datumVzniku 0..1 date "A.2.8.2.4.1 Datum vzniku" """Datum vzniku funkčního omezení."""
    * vysledekTextem 0..1 string "A.2.8.2.4.2 Výsledek vyšetření textem" """Výsledek vyšetření volným textem."""
    * popisVysetreni 1..1 CodeableConcept "A.2.8.2.4.3 Popis vyšetření" """Popis vyšetření včetně kódu. Jako výchozí systém pro hodnocení funkčního stavu byl zvolen mezinárodní klasifikační systém MKF. Další typy hodnotících škál mohou být doplněny v budoucích verzích standardu na základě potřeby a konsenzu odborné veřejnosti."""
    * vysledek 1..1 CodeableConcept "A.2.8.2.4.4 Výsledek vyšetření formalizovaný" """Výsledek hodnocení funkčního stavu v dané kategorii hodnocení."""

/* Rozdíl oproti eHN modelu
* popis 1..1 string "A.2.8.2.1 - Description" """Need for the patient to be continuously assessed by third parties; functional status may influence decisions about how to plan and administer treatments"""
* onsetDate 0..1 dateTime "A.2.8.2.2 - Onset Date" """Onset date of a condition"""
* assessmentType 0..1 string "A.2.8.2.3 - Functional assessment description" """Description of the functional assessment"""
* assessmentDate 0..1 dateTime "A.2.8.2.4 - Functional assessment date" """Date of the functional assessment"""
* assessmentResult 1..1 CodeableConcept "A.2.8.2.5 - Functional assessment result" """Functional assessment result value"""
*/