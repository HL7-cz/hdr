#### Composition (HDR CZ)

Abychom vyřešili výzvy spojené s variabilitou struktury propouštěcí zprávy (tzv. Hospital Discharge Report Structure Challenge), zvolili jsme flexibilní přístup namísto vynucování jednoho rigidního formátu.

„Plochá struktura“ popsaná v této příručce by měla být chápána jako „knihovna sekcí“, kterou lze opakovaně používat v plochých i zanořených strukturách. Tento přístup umožňuje implementátorům organizovat zprávu podle místních nebo institucionálních potřeb při zachování standardizovaného datového modelu.

##### V praxi to znamená:

**Povinné sekce** 

Pouze několik základních sekcí je striktně vyžadováno (např. Průběh hospitalizace).

**Otevřené řezy (Slices)**

Definice řezů sekcí je otevřená, což dává implementátorům svobodu doplňovat další vlastní sekce na první úroveň dokumentu.

**Klinické kontejnery (Zanoření)** 

Na rozdíl od zcela plochého evropského seznamu jsou v českém profilu objektivní nálezy při příjmu a propuštění povinně seskupeny do logických sub-sekcí.Tím je zajištěno, že vitální funkce, antropometrie a somatická vyšetření jsou vždy interpretovány v příslušném časovém a klinickém kontextu hospitalizace.

**Flexibilita sub-sekcí** 

S výjimkou těchto definovaných případů je zanořování dalších sub-sekcí obecně povoleno, což umožňuje poskytovatelům péče vytvořit strukturu, která nejlépe odpovídá jejich klinickému kontextu.Tento model podporuje různorodá zdravotnická prostředí a zároveň prosazuje obsahovou konzistenci a technickou interoperabilitu.

#### Diagram struktury (HDR CZ)

Při implementaci struktury zobrazené níže věnujte pozornost následujícím prvkům:

**Hlavička dokumentu**

Definuje základní metadata (pacient, setkání, typ dokumentu "Propouštěcí zpráva", status).

**První úroveň (Knihovna sekcí)**

- Modrá sekce (Hospital Course): Jediná striktně povinná sekce na první úrovni.

- Bílé sekce: Volitelné standardní sekce (Discharge Medication, Patient History atd.) nebo vlastní specifické sekce.

- Oranžové kontejnery (Discharge Details a Admission Evaluation): Specifické české kontejnery, které v sobě povinně sdružují zanořené sub-sekce (spojené přerušovanou čárou) pro zachování klinického kontextu.

{% include composition-cs.svg %}
