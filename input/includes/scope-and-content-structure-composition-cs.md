#### Composition (HDR CZ)

Struktura kompozice propouštěcí zprávy (HDR CZ) definuje standardizovaný národní rámec pro předávání klinických informací v rámci českého zdravotnictví. I když tento profil vychází z evropského konceptu „knihovny sekcí“, který je v základu plochý a flexibilní, pro potřeby národní interoperability zavádí unifikovanou hierarchii s využitím uzavřeného listu povolených sekcí (Closed Slicing).

Tento přístup směřuje k vytvoření předvídatelného formátu, který je nezbytný pro bezpečné automatizované zpracování na straně příjemců a snadnou orientaci lékařů v dokumentu. Zatímco obecný model (Discharge Report) může sloužit jako otevřený základ pro různé typy péče, národní specifikace HDR CZ fixuje strukturu tak, aby se předešlo vzniku nekompatibilních variant mezi jednotlivými dodavateli informačních systémů.

##### Klíčové principy struktury:

**Standardizovaný výběr sekcí**

Jsou povoleny pouze sekce explicitně definované v tomto profilu, což zaručuje, že každý systém v ČR bude schopen zprávu korektně interpretovat.

**Klinický kontext skrze sub-sekce**

Na rozdíl od plochého evropského seznamu je zde kladen důraz na logické zanořování dat. Sekce pro hodnocení při příjmu a propuštění fungují jako povinné kontejnery, které sdružují vitální funkce, antropometrii a somatická vyšetření.

**Význam zanoření** 

Organizace dat do sub-sekcí zajišťuje, že naměřené hodnoty jsou vždy pevně svázány s konkrétním časovým bodem hospitalizace. Tím se předchází riziku záměny nálezů zjištěných při přijetí pacienta s těmi, které popisují stav při propuštění.

**Vazba na hospitalizační případ** 

Každá kompozice je striktně vázána na konkrétní hospitalizaci (encounter 1..1)
a vyžaduje standardizovanou kategorizaci dokumentu (kód 11503-0) pro zajištění konzistence metadat v rámci národní výměny dokumentů.

#### Diagram struktury (HDR CZ)

Při implementaci struktury zobrazené níže věnujte pozornost následujícím prvkům:

**Hlavička dokumentu**

Definuje základní metadata (pacient, setkání, typ dokumentu "Propouštěcí zpráva", status).

**Unifikované sekce(Closed Slicing)**

Na rozdíl od otevřeného evropského modelu využívá český profil uzavřený slicing. To znamená, že v dokumentu lze použít pouze sekce definované v této specifikaci, což zaručuje stabilitu a předvídatelnost pro příjemce zpráv.

- Povinná sekce (Modrá): Sekce Průběh hospitalizace (Hospital Course) je jediným prvkem s kardinalitou 1..1
- Klinické sekce(Oranžové): Sekce pro příjem a propuštění fungují jako povinné obaly pro logické zanoření sub-sekcí (antropometrie, vitální funkce), což fixuje klinický kontext v čase.
- Volitelné standardní sekce (Bílé): Zahrnují běžně používané bloky jako Anamnéza (Patient History) nebo Medikace při propuštění (Discharge Medication).
- Ostatní povolené sekce (Šedé): I když nejsou v diagramu detailně rozkresleny, profil povoluje i další specifické sekce (např. Alergie, Alerty, Příjemci plateb, Výsledky vyšetření či Porod), pokud jsou v souladu s technickým předpisem. Jakákoliv sekce mimo tento definovaný standard je v instanci HDR CZ nepřípustná.

{% include composition-cs.svg %}
