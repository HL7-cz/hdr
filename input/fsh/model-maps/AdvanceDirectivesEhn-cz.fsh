Logical: LogCzAdvanceDirectivesEhnCz
Id: LogAdvanceDirectivesCz
Title: "A.2.1 - Dříve vyslovená přání (cz)"
Description: """Nemocniční propouštěcí zpráva - Dříve vyslovená přání """
* driveVyslovenaPrani 1..* Base "A.2.1.1 - Dříve vyslovená přání" """Záznam dříve vysloveného přání. Pouze záznamy, které jsou vyjádřeny během aktuálního hospitalizačního pobytu. Může být uvedeno více záznamů dříve vyslovených přání."""
* driveVyslovenaPrani.datum 1..1 dateTime "A.2.1.1.1 - Datum a čas" """Datum a čas vyjádřeného přání pacienta."""
* driveVyslovenaPrani.typ 1..1 CodeableConcept "A.2.1.1.2 - Typ přání" """Typ přání kódem nebo textem. Např. Příkaz k resuscitaci, prohlášení o darování orgánů, plná moc apod."""
* driveVyslovenaPrani.komentar 0..1 string "A.2.1.1.3 - Komentář" """Komentář k projevenému přání pacienta"""
* driveVyslovenaPrani.stav 0..* Base "A.2.1.1.4 - Dotčený stav" """Stav na který se přání vztahuje. Přání může být vztaženo pouze k určitému zdravotnímu problému či množině problémů."""
* driveVyslovenaPrani.dokument 1..1 Base "A.2.1.1.5 - Dokument" """Fotokopie dokumentu či elektronický dokument s projeveným přáním pacienta mající náležitosti požadované zákonem"""
