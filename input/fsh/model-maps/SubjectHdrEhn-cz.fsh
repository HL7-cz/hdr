Logical: LogCzSubjectHdrCz
Id: LogSubjectCz
Title: "A.1.1 - Identifikace a A.1.2 - informace o pacientovi"
Description: """Nemocniční propouštěcí zpráva - Informace o pacientovi- A.1.1 a A.1.2"""

* pacient 1..1 BackboneElement "A.1.1 Identifikace pacienta" """Identifikace pacienta – křestní jméno, příjmení, datum narození, identifikátory, státní občanství, úřední pohlaví, komunikační jazyk."""
  * jmeno 1..* string "A.1.1.1 Křestní jméno" """Křestní jméno pacienta."""
  * prijmeni 1..1 string "A.1.1.2 Příjmení" """Příjmení pacienta."""
  * datumNarozeni 1..1 date "A.1.1.3 Datum narození" """Datum, případně i čas narození pacienta."""
  * identifikator 1..* Identifier "A.1.1.4 Identifikátor pacienta" """Unikátní identifikátor osoby – RID, DRID, číslo pasu atd."""
  * narodnost 0..* CodeableConcept "A.1.1.5 Státní občanství" """Státní občanství podle zákona 186/2013 Sb."""
  * pohlavi 1..1 code "A.1.1.6 Úřední pohlaví" """Administrativní pohlaví podle dokladů."""
  * jazyk 0..* CodeableConcept "A.1.1.7 Komunikační jazyk" """Jazyk nebo jazyky, jimiž pacient komunikuje."""

* kontakt 0..1 BackboneElement "A.1.2 Kontaktní informace pacienta" """Kontaktní údaje pacienta, včetně adresy, kontaktů a preferovaného lékaře."""
  * adresa 0..* Address "A.1.2.1 Adresa" """Poštovní adresa (řádky adresy, město, PSČ, země)."""
  * telefon 0..* ContactPoint "A.1.2.2 Telekomunikační kontakt" """Telefon, e-mail apod."""
  * preferovanyLekar 0..1 BackboneElement "A.1.2.3 Preferovaný lékař" """Identifikace preferovaného lékaře, u kterého je pacient evidován."""
    * idLekare 1..1 Identifier "A.1.2.3.1 Identifikátor lékaře" """Identifikační číslo lékaře dle NR-ZP."""
    * jmenoLekare 1..1 HumanName "A.1.2.3.2 Jméno lékaře" """Plné jméno lékaře."""
    * specializace 0..* CodeableConcept "A.1.2.3.3 Specializace" """Specializace lékaře podle číselníku NR-ZP."""
    * idPoskytovatele 0..1 Identifier "A.1.2.3.4 ID a název poskytovatele" """Identifikátor a název poskytovatele, kterého lékař reprezentuje."""
    * adresaPoskytovatele 0..1 Address "A.1.2.3.5 Adresa poskytovatele" """Poštovní adresa poskytovatele zdravotní péče."""
    * kontaktPoskytovatele 0..* ContactPoint "A.1.2.3.6 Telekomunikační kontakt" """Telefon nebo e-mail poskytovatele."""

  * kontaktniOsoba 0..* BackboneElement "A.1.2.4 Zákonný zástupce a kontaktní osoba" """Kontaktní osoba – např. zákonný zástupce nebo jiná blízká osoba."""
    * typ 0..1 CodeableConcept "A.1.2.4.1 Typ kontaktu" """Typ kontaktní osoby – zákonný zástupce, emergentní kontakt apod."""
    * vztah 0..1 CodeableConcept "A.1.2.4.2 Vztah k pacientovi" """Rodinný nebo jiný vztah ke kontaktované osobě."""
    * idOsoby 0..* Identifier "A.1.2.4.3 Id osoby" """Unikátní identifikátor kontaktní osoby."""
    * jmeno 1..* string "A.1.2.4.4 Křestní jméno" """Křestní jméno kontaktní osoby."""
    * prijmeni 1..* string "A.1.2.4.5 Příjmení" """Příjmení kontaktní osoby."""
    * adresa 0..1 Address "A.1.2.4.6 Adresa kontaktní osoby" """Adresa kontaktní osoby."""
    * kontakt 0..* ContactPoint "A.1.2.4.7 Telekomunikační kontakt" """Telefon, e-mail apod."""

