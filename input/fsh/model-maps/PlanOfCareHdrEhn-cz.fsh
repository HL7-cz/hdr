Logical: PLogCzlanOfCareHdrCz
Id: LogPlanOfCareCz
Title: "A.2.9.1 Plán péče"
Description: """Nemocniční propouštěcí zpráva - Plán péče po propuštění - A.2.8.1"""

* nazev 0..1 string "A.2.9.1.1 Název" """...Název plánu péče, např. 'Plán péče po endoprotéze kyčelního kloubu'..."""
* resi 0..* CodeableConcept "A.2.9.1.2 Řeší" """...Onemocnění či stavy, na které se plán vztahuje. Vybere lékař ze seznamu zdravotních problémů uvedených v diagnostickém souhrnu..."""
* popis 0..1 string "A.2.9.1.3 Popis doporučení" """...Popis typu a povahy plánu péče..."""
* obdobi 0..1 Period "A.2.9.1.4 Období" """...Období, ve kterém by měl být plán péče realizován..."""
* podrobnosti 0..* string "A.2.9.1.5 Další podrobnosti plánu" """...Další strukturované informace popisující cíle plánu, složení terapeutického týmu apod..."""
* aktivity 0..* BackboneElement "A.2.9.1.6 Aktivity" """...Jednotlivé aktivity plánu..."""
  * typ 0..1 CodeableConcept "A.2.9.1.6.1 Typ aktivity" """...Popis aktivity léčebného plánu. Např. doporučená medikace, požadovaná vyšetření, požadavky na komunikaci, dietní doporučení, režimová opatření, plánované kontroly apod..."""
  * popis 0..1 string "A.2.9.1.6.2 Popis aktivity" """...Detailní popis plánované aktivity volným textem..."""
  * atributy 0..* BackboneElement "A.2.9.1.6.3 Specifické atributy" """...Specifické atributy pro jednotlivé typy aktivit..."""
