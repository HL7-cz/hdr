Logical: LogCzHospitalDischargeReportViewCz
Id: LogHospitalDischargeReportViewCz
Title: "A - Propouštěcí zpráva - model pro zobrazení !!!DRAFT!!!"
Description: """Nemocniční propouštěcí zpráva – model pro zobrazení dle české specifikace MZ ČR (vzor x.x) !!!DRAFT!!!"""

// -------------------- Pacient --------------------
* pacient 1..1 Base "Pacient" """Identifikační a kontaktní údaje pacienta"""
  * jmeno 1..1 Base "Jméno" """Jméno pacienta"""
  * prijmeni 1..1 Base "Příjmení" """Příjmení pacienta"""
  * datumNarozeni 0..1 Base "Datum narození" """Datum narození pacienta"""
  * mistoNarozeni 0..1 Base "Místo narození" """Místo narození pacienta"""
  * cisloPojistence 0..1 Base "Číslo pojištěnce" """Číslo pojištěnce pacienta"""
  * zdravotniPojistovna 0..1 Base "Zdravotní pojišťovna" """Zdravotní pojišťovna pacienta"""
  * rodinnyStav 0..1 Base "Rodinný stav" """Rodinný stav pacienta"""
  * statObcanstvi 0..1 Base "Stát občanství" """Stát občanství pacienta"""
  * komunikacniJazyk 0..* Base "Komunikační jazyk" """Preferovaný komunikační jazyk pacienta"""
  * telefonniCislo 0..* Base "Telefonní číslo" """Kontaktní telefonní čísla pacienta"""
  * email 0..* Base "E-mailová adresa" """Kontaktní e-mailové adresy pacienta"""
  * adresaBydliste 0..1 Base "Adresa bydliště" """Adresa trvalého bydliště pacienta"""
  // -------------------- Zákonný zástupce --------------------//
  * zakonyZastupce 0..1 Base "Zákonný zástupce" """Informace o zákonném zástupci pacienta"""
    * jmeno 0..1 Base "Jméno zákonného zástupce" """Jméno zákonného zástupce"""
    * prijmeni 0..1 Base "Příjmení zákonného zástupce" """Příjmení zákonného zástupce"""
    * vztah 0..1 Base "Vztah k pacientovi" """Vztah zákonného zástupce k pacientovi"""
    * kontakt 0..* Base "Kontaktní údaje zákonného zástupce" """Kontaktní údaje zákonného zástupce"""

// -------------------- Hospitalizace -------------------- //
* hospitalizace 1..1 Base "Hospitalizace" """Informace o hospitalizační epizodě"""
  * zarizeni 0..1 Base "Zařízení" """Zdravotnické zařízení, kde byla hospitalizace provedena"""
    * nazev 0..1 Base "Název zařízení" """Název zdravotnického zařízení"""
    * adresa 0..1 Base "Adresa zařízení" """Adresa zdravotnického zařízení"""
    * telefon 0..* Base "Telefonní číslo zařízení" """Kontaktní telefonní čísla zdravotnického zařízení"""
    * email 0..* Base "E-mailová adresa zařízení" """Kontaktní e-mailové adresy zdravotnického zařízení"""
  * identifikaceHospitalizace 0..1 Base "Identifikace hospitalizace" """Jedinečný identifikátor hospitalizace"""
    * cisloHospitalizace 0..1 Base "Číslo hospitalizace" """Číslo hospitalizace"""
    * datumPrijeti 1..1 Base "Datum přijetí" """Datum a čas přijetí pacienta do nemocnice"""
    * datumPropusteni 1..1 Base "Datum propuštění" """Datum a čas propuštění pacienta z nemocnice"""
  * kontaktniOsoba 0..* Base "Kontaktní osoba" """Kontaktní osoby pro pacienta během hospitalizace"""
    * jmeno 0..1 Base "Jméno kontaktní osoby" """Jméno kontaktní osoby"""
    * prijmeni 0..1 Base "Příjmení kontaktní osoby" """Příjmení kontaktní osoby"""
    * telefon 0..* Base "Telefonní číslo kontaktní osoby" """Kontaktní telefonní čísla kontaktní osoby"""
    * email 0..* Base "E-mailová adresa kontaktní osoby" """Kontaktní e-mailové adresy kontaktní osoby"""

// --------------------urgenční informace, alergie a varování-------------------- // 
* urgentniInformace 0..1 Base "Urgentní informace" """Závažné alergie, interakce nebo jiná rizika"""
  * alergie 0..* Base "Alergie" """Závažné alergie pacienta"""
  * varovani 0..* Base "Varování" """Závažné interakce nebo rizika"""

// -------------------- Důvod přijetí -------------------- //
* duvodPrijeti 0..1 Base "Důvod přijetí" """Důvod a okolnosti přijetí pacienta do nemocnice"""

// -------------------- Průběh hospitalizace -------------------- //

* prubehHospitalizace 0..1 Base "Průběh hospitalizace" """Průběh hospitalizační péče"""
  * diagnostickySouhrn 0..1 Base "Diagnostický souhrn" """Hlavní diagnózy a nálezy během hospitalizace"""
  * vykony 0..* Base "Výkony" """Operace a další významné výkony během hospitalizace"""
  * zdravotniPomuckyImplantaty 0..* Base "Zdravotní pomůcky a implantáty" """Pomůcky a implantáty zavedené nebo použité během hospitalizace"""
  * dalsiVyznLecba 0..* Base "Další významná léčba" """Jiná významná léčba poskytnutá během hospitalizace"""
  * nedodaneVysledky 0..* Base "Nedodané výsledky" """Výsledky vyšetření, které nejsou k dispozici při propuštění"""
  * klinickeShrnuti 0..1 Base "Klinické shrnutí" """Souhrn klinického stavu pacienta během hospitalizace"""

// -------------------- Stav při propuštění -------------------- //
* stavPriPropusteni 0..1 Base "Stav při propuštění" """Zdravotní stav pacienta při propuštění z nemocnice"""
  * objektivniNalez 0..1 Base "Objektivní nález" """Objektivní klinické nálezy při propuštění"""
  * funkcniStav 0..1 Base "Funkční stav při propuštění" """Schopnosti pacienta vykonávat denní aktivity při propuštění"""

// -------------------- Doporučení -------------------- //
* doporuceni 0..1 Base "Doporučení" """Doporučení pro pacienta po propuštění z nemocnice"""
  * socialniZdravotniOpatreniPoPropusteni 0..* Base "Sociální a zdravotní opatření po propuštění" """Organizační a sociální opatření k zajištění péče po propuštění"""
  * rezimovaStravovaciOpatreni 0..* Base "Režimová a stravovací opatření" """Doporučení ohledně režimu a stravy po propuštění"""
  * souhrnMedikace 0..* Base "Souhrn medikace" """Předepsaná i ukončená medikace po propuštění"""

// -------------------- Další doporučený postup -------------------- //
* dalsiDoporucenyPostup 0..* Base "Další doporučený postup" """Další kroky v péči po propuštění"""
  * terminyKontrol 0..* Base "Termíny kontrolních vyšetření" """Plán kontrolních vyšetření po propuštění"""

// -------------------- Volitelné části propouštěcí zprávy -------------------- //
* anamneza 0..1 Base "Anamnéza" """Anamnestické údaje pacienta relevantní k hospitalizaci"""
  * osobniAnamneza 0..1 Base "Osobní anamnéza" """Osobní zdravotní historie pacienta relevantní k hospitalizaci"""
    * predchoziOnemocneni 0..* Base "Předchozí onemocnění" """Významná onemocnění v minulosti relevantní k hospitalizaci"""
    * vyznamneVykony 0..* Base "Významné výkony" """Operace a jiné významné zákroky v minulosti relevantní k hospitalizaci"""
    * zdravotniPomuckyImplantaty 0..* Base "Zdravotní pomůcky a implantáty" """Dříve zavedené zdravotní pomůcky a implantáty relevantní k hospitalizaci"""
    * ockovani 0..* Base "Očkování" """Přehled očkování pacienta relevantní k hospitalizaci"""
  * rodinnaAnamneza 0..1 Base "Rodinná anamnéza" """Zdravotní historie rodiny pacienta relevantní k hospitalizaci"""
  * socialniAnamneza 0..1 Base "Sociální anamnéza" """Sociální a pracovní zázemí pacienta relevantní k hospitalizaci"""

* stavPriPrijeti 0..1 Base "Stav při přijetí" """Zdravotní stav pacienta při přijetí do nemocnice"""
  * objektivniNalez 0..1 Base "Objektivní nález" """Objektivní klinické nálezy při přijetí"""
  * funkcniStav 0..1 Base "Funkční stav při přijetí" """Schopnosti pacienta vykonávat denní aktivity při přijetí"""

* vybraneNalezy 0..* Base "Vybrané nálezy" """Významné nálezy a výsledky vyšetření během hospitalizace"""
  * laboratorniNalezy 0..* Base "Laboratorní nálezy" """Výsledky laboratorních vyšetření během hospitalizace"""
  * obrazovaVysetreni 0..* Base "Obrazová vyšetření" """Výsledky zobrazovacích metod během hospitalizace"""
  * ostatniVysetreni 0..* Base "Ostatní vyšetření" """Další výsledky, které nejsou v jiných kategoriích během hospitalizace"""
  * konzilia 0..* Base "Konzilia" """Záznamy o konziliích během hospitalizace"""

// -------------------- Zodpovědné osoby --------------------
* zodpovedneOsoby 0..* Base "Zodpovědné osoby" """Seznam zdravotnických pracovníků odpovědných za péči"""
* podepsal 0..1 Base "Podepsal" """Autor nebo autoři dokumentu"""
* dalsiInformace 0..1 Base "Další informace o dokumentu" """Metadata a doplňující informace o dokumentu"""
  * datumVytvoreni 0..1 Base "Datum vytvoření" """Datum a čas vytvoření dokumentu"""
  * datumUpravy 0..1 Base "Datum úpravy" """Datum a čas poslední úpravy dokumentu"""
  * verze 0..1 Base "Verze dokumentu" """Verze dokumentu"""
  * jazyk 0..1 Base "Jazyk dokumentu" """Jazyk, ve kterém je dokument napsán"""
  * identifikatorDokumentu 0..1 Base "Identifikátor dokumentu" """Jedinečný identifikátor dokumentu"""
  
