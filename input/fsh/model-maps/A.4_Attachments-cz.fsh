Logical: LMCzAttachmentsCz
Id: LMAttachmentsCz
Title: "A.4 - Přílohy (cz)"
Description: """Nemocniční propouštěcí zpráva - Přílohy"""

* typObsahu 0..1 CodeableConcept "A.4.1 Typ obsahu" """Typ obsahu - je  požadován MIME typ"""
* jazyk 0..1 CodeableConcept "A.4.2 Jazyk obsahu" """Jazyk obsahu - je požadována hodnata z HL7 valueset Languages"""
* data 1..1 base64Binary "A.4.3 Data obsahu" """Data v base64"""
* url 0..1 url "A.4.4 URL obsahu" """Uri kde lze data nalézt"""
* nazev 1..1 string "A.4.5 Název obsahu" """Titulek, který bude zobrazen před daty"""
* vytvoreni 0..1 dateTime "A.4.6 Datum vytvoření" """Datum, kdy byl obsah poprvé vytvořen"""


/*
* priloha.typ 1..1 CodeableConcept "A.4.1 - Typ přílohy" """Definuje typ přílohy"""
* priloha.format 1..1 CodeableConcept "A.4.2 - Formát přílohy" """Definuje formát přílohy"""
* priloha.nazev 0..1 string "A.4.3 - Název přílohy" """Název, který blíže popisuje přílohu"""
* priloha.popis 0..1 string "A.4.4 - Popis přílohy" """Doplňující popis přílohy"""
* priloha.datum 1..1 dateTime "A.4.5 - Datum a čas přílohy" """Datum a čas pořízení přílohy"""
* priloha.data 1..1 base64Binary "A.4.6 - Dokument" """Data v base64 např. fotografie, videozáznam, PDF z přístroje"""

*/