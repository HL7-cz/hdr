Logical: LogCzMedicationSummaryHdrCz
Id: LogMedicationSummaryCz
Title: "A.2.9.2 Souhrn medikace"
Description: "Nemocniční propouštěcí zpráva - Souhrnná informace o medikaci doporučené na období po propuštění, včetně medikace změněné, nově zahájené nebo ukončené."

* stav 1..1 code "A.2.9.2.1 Stav" """Stav identifikuje změny v medikaci v průběhu hospitalizace. Položka je důležitá pro rozlišení medikace ukončené, změněné či nově podávané v průběhu hospitalizace."""
* indikace 0..1 CodeableConcept "A.2.9.2.2 Indikace" """Důvod medikace. Důvod může být popsán textem případně odkazem na zdravotní důvod (zdravotní problém v seznamu problémů)."""
* duvodZmeny 0..1 CodeableConcept "A.2.9.2.3 Důvod změny medikace" """Důvod změny medikace vyjádřený textem případně kódem (např. nevhodné/nedostatečné dávkování, interakce léků a pod.)."""
* suklKode 1..1 Identifier "A.2.9.2.4 Kód SUKL" """Kód léčiva dle databáze SÚKL."""
* nazevLeku 1..1 string "A.2.9.2.5 Název léčivého přípravku" """Registrovaný název léčiva dle databáze léčivých přípravků, nebo IPS Absent and Unknown."""
* aktivniLatky 0..* CodeableConcept "A.2.9.2.6 Aktivní látky" """Seznam aktivních látek v léčivu odvozený od záznamu HVLP nebo IVLP přípravku v databázi SUKL (DLP). Aktivní látky jsou uváděny názvem a případně také kódem ATC či IDMP dle registru substancí SRS."""
* sila 0..* Quantity "A.2.9.2.7 Síla" """Síla aktivní léčivé látky obsažené v léčivém přípravku. Síla se vyjadřuje ve vztahu k jednotce podání. Např. 500mg v tabletě."""
* forma 0..1 CodeableConcept "A.2.9.2.8 Forma léčiva" """Léková forma obsažená v balení vyjádřená kódem. Např. sirup, tableta apod."""
* davkovani 0..* string "A.2.9.2.9 Dávkování" """Frekvence a počet jednotek podání volným textem nebo formalizovaně."""
* cestaPodani 0..1 CodeableConcept "A.2.9.2.10 Cesta podání" """Cesta podání."""
* obdobiPodani 0..1 Period "A.2.9.2.11 Období podávání" """Časový interval kdy pacientovi byla, případně nebyla medikace podávána."""
* delkaVybaveni 1..1 Quantity "A.2.9.2.12 Délka vybavení" """Počet dnů na který byl pacient vybaven léčivem. Pokud pacient nebyl vybaven, lékař zaznamená hodnotu 0."""
/*Logický model dle eHN - Medikace 
* reason 0..* CodeableConcept "A.2.9.2.1 - Medication reason" """The reason why the medication is or was prescribed or used. It provides a link to the Past or current health condition(s) or problem(s) that the patient has had or has and for which this medication was prescribed."""
* changeReason 0..1 CodeableConcept "A.2.9.2.2 - Reason for change" """Reason for change of medication"""
* productCode 1..1 CodeableConcept "A.2.9.2.3 - Code" """Product code."""
* productName 1..1 string "A.2.9.2.4 - Brand name" """Brand name if biological medicinal product or when justified by the health professional (ref. Commission Directive 2012/52/EU)"""
* activeIngredient 0..* CodeableConcept "A.2.9.2.5 - Active ingredient list" """Substance that alone or in combination with one or more other ingredients produces the intended activity of a medicinal product. Example: \'paracetamol\'"""
* strength 0..* Ratio "A.2.9.2.6 - Strength" """The content of the active ingredient expressed quantifiably per dosage unit, per unit of volume or per unit of weight, according to the pharmaceutical dose form. Example: 500 mg per tablet"""
* doseForm 0..1 CodeableConcept "A.2.9.2.7 - Pharmaceutical dose form" """The form in which a pharmaceutical product is presented in the medicinal product package (e.g. tablet, syrup)"""
* dosageRegimen 0..* BackboneElement "A.2.9.2.8 - Dosage Regimen" """Number of units per intake and frequency of intake over a specified duration of time.
Example: 1 tablet every 24h, for 10 days"""
* route 0..1 CodeableConcept "A.2.9.2.9 - Route of administration" """Path by which the pharmaceutical product is taken into or makes contact with the body."""
* period 0..1 Period "A.2.9.2.10 - Period of treatment" """The interval of time during which it is being asserted that the patient is/was/will be taking the medication (or was not taking)."""
* daysSupplied 1..1 BackboneElement "A.2.9.2.11 - Days supplied" """Number of days for which the patient was provided with the drug. Supply is intended to either hand over the medicine or write out a prescription. A 0 value indicates that the patient has not been provided with the drug (e.g. if the patient has a sufficient supply of the drug)"""
*/