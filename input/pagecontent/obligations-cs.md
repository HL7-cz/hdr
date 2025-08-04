<div xmlns="http://www.w3.org/1999/xhtml" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"> 
<blockquote class="stu-note"> 
<b>Informativní pro tuto verzi průvodce</b> 
<p>Do této verze příručky byly přidány povinnosti pouze jako informativní materiál ke shromažďování zpětné vazby o jejich používání.</p> 
</blockquote>
</div>

### Přehled

Povinnosti (Obligations) jsou prostředkem, kterým se v  HL7 FHIR specifikuje schopnosti, které definovaní aktéři MOHOU (MAY), MĚLI BY (SHOULD) nebo MUSÍ (SHALL) mít implementovány specifikovanými profily.

Tato stránka také popisuje aktéry, kteří byli definováni pro specifikaci povinností.

### Aktéři

{% include fsh-link-references.md %}

Byli specifikováni aktéři ve těchto rolích:

| Role                                                 | Popis                                                                                                                      |
| ---------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------- |
| [Tvůrce](ActorDefinition-actor-creator-hdr.html)     | Prvním je aktér, který vytváří zprávu. Tuto zprávu lze odeslat konzumentovi pro ukládání a sdílení zpráv. |
| [Konzument](ActorDefinition-actor-consumer-hdr.html) | Posledním aktérem je systém, který přijatou nebo načtenou zprávu používá.                                                  |

<p>{% include hdr-Actors-cs.svg %}</p>

### Seznam povinností

1. Povinnosti pro objekt pacienta ([CZ_PatientObligationsHdr](StructureDefinition-cz-patient-obl-hdr.html))
