Logical: LogCzHospitalDischargeReportEhnCz
Id: LogHospitalDischargeReportCz
Title: "A - Propouštěcí zpráva "
Description: """Nemocniční propouštěcí zpráva"""


* hlavicka 1..1 HeaderHdrCzFromDataset "A.1 - Hlavička dokumentu" """Hlavička propouštěcí zprávy – podle české specifikace"""

* telo 0..1 BackboneElement "A.2 - Tělo propouštěcí zprávy" """Hlavní klinické části propouštěcí zprávy"""
  //* presentedForm 0..1 BackboneElement "A.2.0 - Narrativní forma zprávy" """Narrativní část propouštěcí zprávy ve formě textu."""
  * driveVyslovenaPrani 0..1 AdvanceDirectivesEhn "A.2.1 - Dříve vyslovená přání" """Dříve vyslovená přání pacienta."""
  * alerts 0..1 AlertsEhn "A.2.2 - Urgentní informace" """Závažné alergie, interakce nebo jiná rizika."""
  * udajeOHospitalizaci 1..1 EncounterEhn "A.2.3 - Údaje o hospitalizaci" """Záznam o samotné hospitalizaci a jejím průběhu."""
  * duvodPrijeti 0..1 AdmissionEvaluationEhn "A.2.4 - Důvod přijetí" """Vyhodnocení zdravotního stavu při příjmu."""
  * anamneza 0..1 PatientHistoryEhn "A.2.5 - Anamnéza pacienta" """Stručná anamnéza, včetně původu informací."""
  * prubehHospitalizace 0..1 HospitalStayEhn "A.2.6 - Průběh hospitalizace" """Popis průběhu hospitalizace pacienta."""
  * stavPriPropusteni 0..1 BackboneElement "A.2.7 - Stav při propuštění" """Strukturované nebo narativní informace o ukončení hospitalizace."""
    * objektivniNalez 0..1 ObjectiveFindingsHdrEhn "A.2.7.1 - Objektivní nález" """Objektivní klinické nálezy při propuštění."""
    * funkcniStav 0..1 FunctionalStatusHdrEhn "A.2.7.2 - Funkční stav při propuštění" """Zhodnocení schopnosti pacienta vykonávat denní aktivity."""
    * poznamka 0..1 string "A.2.7.3 - Poznámka k propuštění" """Shrnutí propuštění ve formě volného textu."""
  * Doporučení 0..1 BackboneElement "A.2.8 - Doporučení po propuštění" """Doporučení, péče a léčba po ukončení hospitalizace."""
    * planPece 0..* PlanOfCare "A.2.8.1 - Plán péče" """Plánované kroky péče po propuštění."""
    * souhrnaMedikace 1..* MedicationSummary "A.2.8.2 - Souhrná medikace" """Shrnutí předepsané i ukončené medikace."""
    

* zobrazitelnaForma 1..* PresentedFormCz "A.3 - Zobrazitelná forma dokumentu" """Zobrazená verze dokumentu, doporučeno PDF."""
* prilohy 0..* AttachmentsCz "A.4 - Přílohy" """Přiložené obrázky, dokumenty nebo jiná média."""
