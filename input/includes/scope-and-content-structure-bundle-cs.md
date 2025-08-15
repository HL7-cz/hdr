#### Bundle (HDR CZ)

**Resource Bundle** představuje kompletní balíček všech zdrojů, které dohromady tvoří propouštěcí zprávu. Obsahuje jak hlavní dokumentovou kompozici (Composition), tak všechny související klinické a administrativní zdroje – například údaje o pacientovi, hospitalizační epizody, diagnózy, provedené výkony, výsledky vyšetření, medikaci, alergie, použité zdravotnické prostředky, pojištění a další.

Je určen pro přenos propouštěcí zprávy jako celku mezi systémy a zajišťuje konzistenci a úplnost dat.

- **Composition** – hlavička dokumentu, struktura a obsahové členění PZ.
- **Patient** – identifikace a základní údaje o pacientovi.
- **AllergyIntolerance** – záznamy o alergiích a intolerancích.
- **Condition** – diagnózy a zdravotní stavy pacienta.
- **Device & DeviceUseStatement** – použité zdravotnické prostředky a jejich aplikace.
- **DiagnosticReport, ImagingStudy, Observation, Specimen** – výsledky vyšetření, zobrazování a laboratorní nálezy.
- **Immunization** – provedená očkování.
- **Medication, MedicationRequest, MedicationStatement, MedicationDispense, MedicationAdministration** – předepsané, podané a vydané léky.
- **Encounter** – údaje o kontaktu pacienta se zdravotnickým zařízením.
- **Practitioner & PractitionerRole** – lékaři a ostatní zdravotničtí pracovníci, jejich role.
- **Organization** – organizace a zařízení podílející se na péči.
- **Procedure** – provedené zákroky a výkony.
- **FamilyMemberHistory** – relevantní rodinná anamnéza.
- **DocumentReference & Media** – připojené dokumenty a multimediální soubory.
- **Flag** – důležitá upozornění pro zdravotníky.
- **CarePlan & Goal** – plán péče a cíle léčby.
- **Consent** – dříve vyslovená přání.
- **Provenance** – informace o původu a autorství dat.
- **Coverage** – pojištění a úhradové údaje.
- **Signature** – digitální podpis balíčku.

#### Composition

Hlavní dokumentová struktura – obsahová osnova PZ: identifikace dokumentu, datum a čas vytvoření, autor a příjemce, členění do sekcí dle specifikace (např. Údaje o pacientovi, Diagnostický souhrn, Významné výkony, Výsledky vyšetření, Doporučení). Každá sekce obsahuje text a odkazy na podrobné zdroje.

#### Patient

Údaje o pacientovi: jméno, příjmení, rodné číslo / identifikátor pojištěnce, datum narození, pohlaví, adresa, kontakty, případně informace o zemřelém. Povinná část pro plnou identifikaci.

#### AllergyIntolerance

Záznamy o alergiích a intolerancích: látka nebo skupina látek, povaha reakce, závažnost a datum záznamu. Povinné u závažných reakcí, jinak možnost negativního záznamu.

#### Condition

Seznam diagnóz a zdravotních stavů: diagnóza při přijetí, hlavní propuštěcí diagnóza, komorbidity a komplikace, kódování dle ICD-10/SNOMED CT, časové určení. Vazba na sekce Diagnostický souhrn a Klinické shrnutí.

#### Device & DeviceUseStatement

Použité zdravotnické prostředky: implantáty, přístroje, pomůcky, identifikace výrobce, modelu, sériového čísla, doba použití a účel nasazení. Povinné při použití implantátu nebo významného prostředku.

#### DiagnosticReport, ImagingStudy, Observation, Specimen

Výsledky vyšetření a nálezů: laboratorní, zobrazovací a funkční vyšetření, indikace, metoda, datum, provádějící a interpretace. Specimen popisuje vzorky biologického materiálu.

#### Immunization

Záznamy o očkování provedeném během hospitalizace nebo relevantním pro aktuální stav: typ vakcíny, datum podání, výrobce, šarže a důvod podání.

#### Medication, MedicationRequest, MedicationStatement, MedicationDispense, MedicationAdministration

Kompletní přehled medikace: léky užívané před přijetím, předepsané při propuštění, podané během hospitalizace, vydané léky. Údaje o názvu, dávkování, cestě podání a době užívání. Odpovídá sekci Podstatná léčba.

#### Encounter

Údaje o kontaktu pacienta se zdravotnickým zařízením: datum a čas přijetí a propuštění, typ kontaktu, oddělení, účastníci péče, důvod hospitalizace, cílové umístění po propuštění. Vazba na sekce Průběh hospitalizace a Stav při propuštění.

#### Practitioner & PractitionerRole

Zdravotničtí pracovníci: identifikace lékařů a sester, role (ošetřující, konziliář, operatér), vazba na organizaci, ve které působí.

#### Organization

Zdravotnická zařízení: nemocnice, oddělení, ambulance, identifikátor, název, adresa, kontakty. Povinné pro hlavní poskytovatele v epizodě.

#### Procedure

Provedené zákroky a výkony: operace, invazivní výkony, významné intervence, datum, kód výkonu (např. CZ-DRG, ICHI). Vazba na sekci Významné výkony.

#### FamilyMemberHistory

Rodinná anamnéza: onemocnění příbuzných s možným vlivem na péči, diagnózy, vztah k pacientovi.

#### DocumentReference & Media

Připojené externí dokumenty a multimédia: starší lékařské zprávy, PDF nálezy, obrázky (rentgeny, fotodokumentace), odkazy na uložiště.

#### Flag

Důležitá upozornění: rizika (pád, infekce, agrese), speciální potřeby (tlumočník, dietní omezení).

#### CarePlan & Goal

Plán další péče a léčebné cíle: doporučení pro praktického lékaře nebo specialistu, rehabilitace, kontroly, plánovaná vyšetření. Vazba na sekci Doporučení.

#### Consent

záznamy o dříve vyslovených přáních pacienta, včetně údajů o typu, rozsahu a podmínkách jejich platnosti.

#### Provenance

Metadata o původu záznamů: kdo a kdy data vytvořil, změnil nebo schválil.

#### Coverage

Údaje o pojištění: pojišťovna, typ pojištění, identifikátor pojištěnce.

#### Signature

Digitální podpis: zajištění integrity a autenticity celé propouštěcí zprávy.
