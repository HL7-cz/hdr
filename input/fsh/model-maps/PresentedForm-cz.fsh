Logical: LogCzPresentedFormCz
Id: LogPresentedFormCz
Title: "A.3 - Vizuální podoba dokumentu"
Description: """Nemocniční propouštěcí zpráva - Zpráva z obrazového vyšetření čitelná lidským okem, je požadován PDF formát."""

* typObsahu 0..1 CodeableConcept "A.3.1 Typ obsahu" """Typ obsahu - je  požadován MIME typ"""
* jazyk 0..1 CodeableConcept "A.3.2 Jazyk obsahu" """Jazyk obsahu - je požadována hodnata z HL7 valueset Languages"""
* data 1..1 base64Binary "A.3.3 Data obsahu" """Data v base64"""
* url 0..1 url "A.3.4 URL obsahu" """Uri kde lze data nalézt"""
* nazev 1..1 string "A.3.5 Název obsahu" """Titulek, který bude zobrazen před daty"""
* vytvoreni 0..1 dateTime "A.3.6 Datum vytvoření" """Datum, kdy byl obsah poprvé vytvořen"""