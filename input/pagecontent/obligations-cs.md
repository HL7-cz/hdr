<div xmlns="http://www.w3.org/1999/xhtml" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"> 
<blockquote class="stu-note"> 
<b>Informativní pro tuto verzi průvodce</b> 
<p>Do této verze příručky byly přidány závazná pravidla pouze jako informativní materiál ke shromažďování zpětné vazby o jejich používání.</p> 
</blockquote>
</div>

### Přehled

Závazná pravidla (Obligations) jsou prostředkem, kterým se v  HL7 FHIR specifikuje schopnosti, které definovaní aktéři MOHOU (MAY), MĚLI BY (SHOULD) nebo MUSÍ (SHALL) mít implementovány specifikovanými profily.

Definujeme tři základní úrovně plnění standardu:
- L1 – nestrukturovaný dokument – předáváno jako nezbytná metadata dokumentu a lidsky čitelný dokument v PDF formátu
- L2 – strukturovaný dokument rozdělený do identifikovatelných sekcí (vstupní vyšetření, anamnéza, rizikové faktory, medikace, doporučení, …), obsah je stále veden pouze v textové neformalizované formě
- L3 – Dokument je strukturovaný do identifikovatelných sekcí (stejných jako v L2), některé informace lze vést ve formalizované podobě, vybrané informace budou povinně vedeny ve formalizované a kódované formě

Tato stránka také popisuje aktéry, kteří byli definováni pro specifikaci závazných pravidel.

### Aktéři

{% include fsh-link-references.md %}

Byli specifikováni aktéři ve těchto rolích:

| Role                                                 | Popis                                                                                                                      |
| ---------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------- |
| [Tvůrce úrovně L1](ActorDefinition-actor-creator-hdr-L1.html)     | Jedná se o aktéra úrovně L1, který vytváří zprávu. Tuto zprávu lze odeslat konzumentovi nebo do úložiště pro ukládání a sdílení zpráv. |
| [Konzument úrovně L1](ActorDefinition-actor-consumer-hdr-L1.html) | Tento aktér představuje systém úrovně L1, který přijatou nebo načtenou zprávu používá.                                                  |
 |
| [Tvůrce úrovně L2](ActorDefinition-actor-creator-hdr-L2.html)     | Jedná se o aktéra úrovně L2, který vytváří zprávu. Tuto zprávu lze odeslat konzumentovi nebo do úložiště pro ukládání a sdílení zpráv. |
| [Konzument úrovně L2](ActorDefinition-actor-consumer-hdr-L2.html) | Tento aktér představuje systém úrovně L2, který přijatou nebo načtenou zprávu používá.                                                  |
 |
| [Tvůrce úrovně L3](ActorDefinition-actor-creator-hdr-L3.html)     | Jedná se o aktéra úrovně L3, který vytváří zprávu. Tuto zprávu lze odeslat konzumentovi nebo do úložiště pro ukládání a sdílení zpráv. |
| [Konzument  úrovně L3](ActorDefinition-actor-consumer-hdr-L3.html) | Tento aktér představuje systém úrovně L3, který přijatou nebo načtenou zprávu používá.                                                  |

<p>{% include hdr-Actors-cs.svg %}</p>

### Seznam závazných pravidel

1. Pravidla pro profil alergie a intolerance ([CZ_AllergyIntoleranceObligationsHdr](StructureDefinition-cz-allergyintolerance-obl-hdr.html))
2. Pravidla pro profil přílohy ([CZ_AttachmentsObligationsHdr](StructureDefinition-cz-attachment-obl-hdr.html))
3. Pravidla pro profil kompozice ([CZ_CompositionObligationsHdr](StructureDefinition-cz-composition-obl-hdr.html))
4. Pravidla pro profil souhlas ([CZ_ConsentObligationsHdr](StructureDefinition-cz-consent-obl-hdr.html))
5. Pravidla pro profil dávky v rámci nemocničního pobytu ([CZ_DosageHospitalStayObligationsHdr](StructureDefinition-cz-dosage-hospitalstay-obl-hdr.html))
6. Pravidla pro profil dávky v rámci soupisu medikace ([CZ_DosageMedicationSummaryObligationsHdr](StructureDefinition-cz-dosage-medicationsummary-obl-hdr.html))
7. Pravidla pro profil klinické události ([CZ_EncounterObligationsHdr](StructureDefinition-cz-encounter-obl-hdr.html))
8. Pravidla pro profil příznak ([CZ_FlagObligationsHdr](StructureDefinition-cz-flag-obl-hdr.html))
9. Pravidla pro profil očkování ([CZ_ImmunizationObligationsHdr](StructureDefinition-cz-immunization-obl-hdr.html))
10. Pravidla pro profil doporučená očkování ([CZ_ImmunizationRecommendationObligationsHdr](StructureDefinition-cz-immunizationrecommendation-obl-hdr.html))
11. Pravidla pro profil medikace v rámci nemocničního pobytu ([CZ_MedicationHospitalStayObligationsHdr](StructureDefinition-cz-medication-hospitalstay-obl-hdr.html))
12. Pravidla pro profil medikace v rámci soupisu medikace ([CZ_MedicationMedicationSummaryObligationsHdr](StructureDefinition-cz-medication-medicationsummary-obl-hdr.html))
13. Pravidla pro profil administrace medikace([CZ_MedicationAdministrationObligationsHdr](StructureDefinition-cz-medicationadministration-obl-hdr.html))
14. Pravidla pro profil výdej léku v rámci nemocničního pobytu ([CZ_MedicationDispenseHospitalStayObligationsHdr](StructureDefinition-cz-medicationdispens-hospitalstay-obl-hdr.html))
15. Pravidla pro profil výdej léků v soupisu medikace ([CZ_MedicationDispenseMedicationSummaryObligationsHdr](StructureDefinition-cz-medicationdispens-medicationsummary-obl-hdr.html))
16. Pravidla pro profil podání léků v rámci nemocničního pobytu ([CZ_MedicationRequestHospitalStayObligationsHdr](StructureDefinition-cz-medicationrequest-hospitalstay-obl-hdr.html))
17. Pravidla pro profil podání léků v soupisu medikace ([CZ_MedicationRequestMedicationSummaryObligationsHdr](StructureDefinition-cz-medicationrequest-medicationsummary-obl-hdr.html))
18. Pravidla pro profil užívání léků ([CZ_MedicationStatementObligationsHdr](StructureDefinition-cz-medicationstatement-obl-hdr.html))
19. Pravidla pro profil nález antropometrických údajů ([CZ_ObservationAnthropometricDataHdrObligations](StructureDefinition-cz-observation-anthropometricdata-obl-hdr.html))
20. Pravidla pro profil nález infekčního kontaktu ([CZ_ObservationInfectiousContactHdrObligations](StructureDefinition-cz-observation-ic-obl-hdr.html))
21. Pravidla pro profil organizace([CZ_OrganizationObligationsHdr](StructureDefinition-cz-organization-obl-hdr.html))
22. Pravidla pro profil pacient ([CZ_PatientObligationsHdr](StructureDefinition-cz-patient-obl-hdr.html))
23. Pravidla pro profil procedura ([CZ_ProcedureObligationsHdr](StructureDefinition-cz-procedure-obl-hdr.html))

