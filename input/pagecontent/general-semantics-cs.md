Úvod

### Obecná sémantika v národním kontextu

#### Entity

---

**Pacient**

Informace o osobě, které jsou poskytovány zdravotní služby. Tento profil definuje strukturu pacienta, která lokalizuje základní pojmy, včetně identifikátorů a terminologie, pro použití v českém kontextu.

**Zdravotnický pracovník**

Informace o osobě, která poskytuje zdravotní péči. Profil identifikuje zdravotního pracovníka v rámci organizace a je možné osobě poskytující zdravotnickou službu přidělit roli, která může být definována prostřednictvím jednoho ze dvou kódových systému KRZP nebo SNOMED.  

**Poskytovatel zdravotních služeb**

Tento profil vymezuje způsob reprezentace organizace v kontextu českého národního projektu interoperability. V tomto dokumentu zkracováno jako zdravotní zařízení (ZZ).

#### Objekty

---

**Zdravotnický přístroj**

Tento profil obsahuje omezení aplikovaná na Device v rámci českého národního projektu interoperability. Profil popisuje zařízení v roli "observer" nebo "performer". Tento profil specifikuje požadavky na Device použité při vyšetření.

**Zdravotnický prostředek**

Tento profil představuje požadavky na Device v rámci českého národního projektu interoperability. 
Typ zdravotnického prostředku. Přednostně se uvádí pomocí kódu SNOMED CT. Absence informací nebo nepřítomnost zdravotnického prostředku se výslovně uvede pomocí kódů ze systému: [Absent and Unknown Data - IPS](https://fhir.org/guides/stats2/codesystem-hl7.fhir.uv.ips-absent-unknown-uv-ips.html).

**Komponenty**

Komponentou v kontextu tohoto dokumentu rozumíme část datové struktury, která je společná více objektům. Například biometrické údaje jako je váha a výška by měly být užívány a definovány shodně v propouštěcí i ambulantní zprávě a stejně tak i v žádance na obrazové vyšetření.

### Obsah

#### Administrativní údaje - hlavička

**Identifikace pacienta**

V tomto oddílu nalezneme zákldaní údaje o pacientovi jako je jeho identifikátor, jméno nebo adresa.

**Kontaktní informace pacienta**

Oddíl obsahuje kontaktní informace osob, které mohou poskytovat dodatečné informace o pacientovi. Může zde být i kontakt na jiného lékaře. Tato informace je zvláště potřebná u pacientů se vzácným onemocněním.
Typ kontaktní osoby rozlišuje emergentní kontakty, zákonné zástupce a ostatní osoby se vztahem k pacientovi. Jde o definici kontaktních osob, na které je možné se obracet kvůli přípravě pacienta na vyšetření či v jiných případech.

**Zdravotní pojištění**

Zdravotní pojištění pacienta, které nemusí být nutně i plátcem vyplnění dané žádanky. 

**Úhrada**

Obsahuje údaje, jakým způsobem bude vyšetření uhrazeno.

**Objednatel**

Obsahuje identifikaci zdravotnického pracovníka nebo jiné osoby objednávající vyšetření.

**Zpracovatel**

Obsahuje údaje o předpokládaném zpracovateli žádanky (u neadresné žádanky nebude zpracovatel uveden).

**Příjemce nálezu**

Může obsahovat identifikaci dodatečných příjemců nálezu kromě objednatele.

**Metadata dokumentu**

Obsahuje další informace o dokumentu žádanky jako např.: Správce dokumentu.

**Elektronické podpisy**

Obsahem této sekce je elektronický podpis dokumentu dle zákona `327/2011 §54a`.

#### Tělo dokumentu