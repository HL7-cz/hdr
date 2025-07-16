Logical: LogCzEncounterEhnCz
Id: LogInPatientEncounterCz
Title: "A.2.3 - Kontakt se zdravotními službami"
Description: """Záznam o hospitalizačním kontaktu v rámci propouštěcí zprávy (část A.2.3)"""

* typ 1..1 CodeableConcept "A.2.3.1 - Typ kontaktu" """Typ kontaktu (hospitalizace) - jednodenní, standardní. Zadáno při příjmu výběrem ze seznamu"""
* poznamka 0..1 string "A.2.3.2 - Poznámka k hospitalizaci" """Poznámka k hospitalizaci volným textem. Zadáno při příjmu volným textem"""

* prijem 1..1 Base "A.2.3.3 - Příjem" """Informace o příjmu"""

* prijem.urgentni 0..1 CodeableConcept "A.2.3.3.1 - Urgentnost přijetí" """Akutní nebo plánovaný příjem. Zadáno při příjmu výběrem ze seznamu"""
* prijem.datum 1..1 dateTime "A.2.3.3.2 - Datum a čas přijetí" """Datum a čas hospitalizace. Doplní NIS"""

* prijem.lekar.id 0..1 Identifier "A.2.3.3.3 - Přijímající lékař - Id" """Identifikátor přijímajícího lékaře dle NRZP. Doplní NIS"""
* prijem.lekar.jmeno 0..1 HumanName "A.2.3.3.4 - Přijímající lékař - jméno" """Jméno a příjmení přijímajícího lékaře. Doplní NIS"""

* prijem.zdroj 0..1 CodeableConcept "A.2.3.3.5 - Zdroj přijetí" """Zdroj/doporučení k přijetí specifikuje odkud pacient do zařízení přišel, resp. kdo jej k hospitalizaci doporučil. Zadáno při příjmu výběrem ze seznamu"""

* prijem.doporučil.id 0..1 Identifier "A.2.3.3.6 - Doporučující lékař - Id" """Identifikátor odesílajícího lékaře dle NRZP. Zadáno při příjmu"""
* prijem.doporucil.jmeno 0..1 HumanName "A.2.3.3.7 - Doporučující lékař - jméno" """Jméno a příjmení odesílajícího lékaře. Doplní NIS"""
* prijem.doporucil.organizaceId 0..1 Identifier "A.2.3.3.8 - Doporučující zařízení - Id" """Id, název poskytovatele a kontaktní informace. Doplní NIS"""

* duvodPrijeti 1..1 Base "A.2.3.4 - Důvod přijetí" """Důvod přijetí"""

* duvodPrijeti.kod 0..* CodeableConcept "A.2.3.4.1 - Důvod přijetí - kód" """Důvod přijetí textem a/nebo kódem problému, nálezu či procedury. Zadá lékař při příjmu výběrem ze seznamu"""
* duvodPrijeti.komentar 0..1 string "A.2.3.4.2 - Důvod přijetí - komentář" """Komentář k důvodu přijetí. Zadá lékař při příjmu volným textem"""
* duvodPrijeti.legalStatus 0..1 CodeableConcept "A.2.3.4.3 - Právní okolnosti přijetí" """Právní okolnosti přijetí kódem a případně také textem. Zadá lékař při příjmu výběrem ze seznamu"""

* propusteni 1..1 Base "A.2.3.5 - Propuštění" """Propuštění"""

* propusteni.datum 1..1 dateTime "A.2.3.5.1 - Datum a čas propuštění" """Datum a čas propuštění. Zadá lékař"""
* propusteni.cilPropusteni 0..1 CodeableConcept "A.2.3.5.2 - Cíl propuštění" """Klasifikace místa, kam byl pacient propuštěn/přeložen. Zadá lékař výběrem ze seznamu"""
* propusteni.propusteniKam 0..1 CodeableConcept "A.2.3.5.3 - Propuštěn kam" """Identifikace organizace a adresa místa, kam byl pacient propuštěn/přeložen. Zadá lékař"""

* hospitalizace 0..* Base "A.2.3.6 - Pobyt na oddělení" """Pobyt na oddělení"""

* hospitalizace.obdobi 1..1 Period "A.2.3.6.1 - od do" """Období pobytu na oddělení. Doplní NIS"""
* hospitalizace.oddeleni.id 0..1 Identifier "A.2.3.6.2 - Identifikátor oddělení" """Úplný kód pracoviště/oddělení dle NRPZS. Doplní NIS"""
* hospitalizace.oddeleni.nazev 1..1 string "A.2.3.6.3 - Název oddělení" """Název oddělení. Doplní NIS"""
* hospitalizace.oddeleni.kontakt 1..* Base "A.2.3.6.4 - Kontakty" """Adresa a telekomunikační kontakty. Doplní NIS"""
