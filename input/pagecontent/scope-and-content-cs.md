### Přehled

Evropská síť elektronického zdravotnictví "GUIDELINE on the electronic exchange of health data under
Cross-Border Directive 2011/24/EU Hospital Discharge Report" - verze 1.1 je určena členským státům Evropské unie a vztahuje se na podporu výměny zprávy o propuštění z nemocnice za účelem zajištění kontinuity péče v přeshraničním prostředí.

Tyto pokyny by mohly sloužit jako vodítko pro národní vývoj a implementaci zpráv o propuštění z nemocnice.

### Dataset eHN

Směrnice eHN Hospital Discharge Report v části 4 specifikuje DATASET HOSPITAL DISCHARGE REPORT, který zaznamenává všechny klinicky relevantní informace týkající se pobytu pacienta v nemocnici, které jsou nezbytné pro kontinuitu péče.

Zpráva o propuštění z nemocnice (HDR) má dvě hlavní složky:

- Hlavička a
- tělo.

**Hlavička** obsahuje základní administrativní a identifikační údaje o pacientovi, poskytovatelích zdravotní péče a dalších klíčových účastnících péče o pacienta.

**Tělo** obsahuje základní klinické údaje týkající se pobytu pacienta, jeho léčby a plánu propuštění.


{% include hdr-mindmap-cs.svg %}

#### Hlavička dokumentu

Komponenta Hlavičky propouštěcí zprávy z nemocnice poskytuje dokumentaci pro:

- Obsahuje důležité identifikační údaje, jako je *jméno*, *příjmení*, *datum narození* a *identifikační číslo pacienta ve zdravotnictví*. Zahrnuje také *národnost*, *pohlaví* a *zemi příslušnosti pacienta*.
- **Kontaktní údaje týkající se pacienta/subjektu:** Zahrnují *adresu pacienta* a *telekomunikační kontaktní údaje* (např. telefonní čísla a e-mailové adresy). Může také zahrnovat údaje o *preferovaném zdravotnickém pracovníkovi* (jméno, identifikátor, role, organizace).
- **Informace o zdravotním pojištění a platbách:** Klíčové údaje týkající se zdravotního pojištění, včetně *kódu pojišťovny*, *jména zdravotní pojišťovny* a *čísla zdravotní pojišťovny pacienta*.
- **Příjemce dokumentu:** Označuje zamýšleného příjemce propouštěcí zprávy z nemocnice. Zahrnuje *jméno příjemce*, *organizaci*, *adresu* a *telefonní údaje*.
- **Autor:** Dokumentuje *autora zprávy*, včetně jeho identifikátoru (např. čísla licence), jména a organizačních údajů. Autor je odpovědný za podepsání obsahu zprávy.
- **Ověřil:** zdravotnický pracovník, který ověřuje obsah zprávy. Obsahuje *identifikátor atestujícího*, *jméno*, *organizaci* a *datum a čas atestace*.
- **Zodpovídá:** Osoba, která přebírá právní odpovědnost za zprávu. Obsahuje *identifikátor*, *jméno*, *organizaci* a *datum ověření*.
- **Metadata dokumentu:** Obsahuje jedinečný *identifikátor* dokumentu, *typ* a metadata, jako je *datum a čas* vytvoření nebo změny, která zajišťují správné sledování zprávy.

{% include header-mindmap-cs.svg %}

#### Tělo

Součást těla zprávy o propuštění z nemocnice obsahuje:

- **Dříve vyslovená přání:** Právní dokumenty, jako jsou závěti nebo příkazy DNR, kterými se řídí rozhodnutí o léčbě.
- **Urgentní informace:** Důležitá lékařská upozornění, jako jsou alergie nebo jiné kritické stavy pacienta.
- **Údaje o hospitalizaci:** Zpráva o propuštění z nemocnice ve své popisné formě, tj. v podobě, kterou lze vytisknout.
- **Důvod přijetí:** Podrobnosti o příjmu do nemocnice, včetně data přijetí, důvodu a typu (hospitalizovaný/ambulantní pacient).
- **Stav při přijetí:** Klíčové nálezy a diagnostické výsledky z procesu přijetí.
- **Anamnéza pacienta:** Komplexní záznam anamnézy pacienta před pobytem v nemocnici.
- **Průběh hospitalizace:** Průběh pacienta během hospitalizace, včetně léčby a zákroků.
- **Stav při propuštění:** Informace o datu propuštění, cílové destinaci a pokyny pro péči po propuštění.
- **Doporučení:** Podrobný plán následné péče, včetně léků a doporučení terapie.

{% include body-mindmap-cs.svg %}


#### Datová sada eHN jako logické modely HL7 FHIR.

Logické modely HL7 FHIR používané k reprezentaci datové sady HOSPITAL DISCHARGE REPORT DATASET (Zpráva o propuštění z nemocnice), jak jsou definovány v části 4 uvedeného pokynu eHN, jsou zdokumentovány na stránce [HL7 FHIR Models](logicalModel.html).
