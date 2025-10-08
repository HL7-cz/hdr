<div xmlns="http://www.w3.org/1999/xhtml" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<blockquote class="stu-note">
<b>Informative for this version of the guide</b>
<p>The obligations have been added to this version of the guide only as informative material to gather feedback on their use.</p>
</blockquote>
</div>

### Overview 

Obligations are a mean offered by HL7 FHIR to specify functional capabilities that defined actors MAY, SHOULD or SHALL to the data elements specified by the profiles.

We define three basic levels of compliance with the standard:
- L1 – unstructured document – ​​transmitted as necessary document metadata and a human-readable document in PDF format
- L2 – structured document divided into identifiable sections (entry examination, medical history, risk factors, medication, recommendations, …), the content is still kept only in textual non-formalized form
- L3 – The document is structured into identifiable sections (same as in L2), some information can be kept in formalized form, selected information will be kept in formalized and coded form

This page describes also the actors that have been defined for specifying the obligations.

### Actors

{% include fsh-link-references.md %}

Actors were specified in these roles:

| Role                                                    | Description                                                                                                                          |
| ------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------ |
| the [Level 1 Creator](https://build.fhir.org/ig/HL7-cz/cz-core/ActorDefinition/actor-creator-L1.html)   | This is a L1 actor that creates a report. This report can be sent to a consumer or to a repository for storing and sharing report. |
| the [Level 1 Consumer](https://build.fhir.org/ig/HL7-cz/cz-core/ActorDefinition/actor-consumer-L1.html) | This L1 actor represents the system that uses the received or retrieved report.                                                                 |
| the [Level 2 Creator](https://build.fhir.org/ig/HL7-cz/cz-core/ActorDefinition/actor-creator-L2.html)   | This is a L2 actor that creates a report. This report can be sent to a consumer or to a repository for storing and sharing report. |
| the [Level 2 Consumer](https://build.fhir.org/ig/HL7-cz/cz-core/ActorDefinition/actor-consumer-L2.html) | This L2 actor represents the system that uses the received or retrieved report.                                                                 |
| the [Level 3 Creator](https://build.fhir.org/ig/HL7-cz/cz-core/ActorDefinition/actor-creator-L3.html)   | This is a L3 actor that creates a report. This report can be sent to a consumer or to a repository for storing and sharing report. |
| the [Level 3 Consumer](https://build.fhir.org/ig/HL7-cz/cz-core/ActorDefinition/actor-consumer-L3.html) | This L3 actor represents the system that uses the received or retrieved report.                                                                 |                                                

<p>{% include hdr-Actors.svg %}</p>

### Obligations List

1. Obligations for profile AllergyIntolerance ([CZ_AllergyIntoleranceObligationsHdr](StructureDefinition-cz-allergyintolerance-obl-hdr.html))
2. Obligations for profile Attachments ([CZ_AttachmentsObligationsHdr](StructureDefinition-cz-attachment-obl-hdr.html))
3. Obligations for profile Composition ([CZ_CompositionObligationsHdr](StructureDefinition-cz-composition-obl-hdr.html))
4. Obligations for profile Consent ([CZ_ConsentObligationsHdr](StructureDefinition-cz-consent-obl-hdr.html))
5. Obligations for profile Dosage in Hospital Stay ([CZ_DosageHospitalStayObligationsHdr](StructureDefinition-cz-dosage-hospitalstay-obl-hdr.html))
6. Obligations for profile Dosage in Medication Summary ([CZ_DosageMedicationSummaryObligationsHdr](StructureDefinition-cz-dosage-medicationsummary-obl-hdr.html))
7. Obligations for profile Encounter ([CZ_EncounterObligationsHdr](StructureDefinition-cz-encounter-obl-hdr.html))
8. Obligations for profile Flag ([CZ_FlagObligationsHdr](StructureDefinition-cz-flag-obl-hdr.html))
9. Obligations for profile Immunization ([CZ_ImmunizationObligationsHdr](StructureDefinition-cz-immunization-obl-hdr.html))
10. Obligations for profile Immunization Recommendation ([CZ_ImmunizationRecommendationObligationsHdr](StructureDefinition-cz-immunizationrecommendation-obl-hdr.html))
11. Obligations for profile Medication in Hospital stay ([CZ_MedicationHospitalStayObligationsHdr](StructureDefinition-cz-medication-hospitalstay-obl-hdr.html))
12. Obligations for profile Medication in Medication summary ([CZ_MedicationMedicationSummaryObligationsHdr](StructureDefinition-cz-medication-medicationsummary-obl-hdr.html))
13. Obligations for profile Medication administration([CZ_MedicationAdministrationObligationsHdr](StructureDefinition-cz-medicationadministration-obl-hdr.html))
14. Obligations for profile Medication dispense in hospital stay ([CZ_MedicationDispenseHospitalStayObligationsHdr](StructureDefinition-cz-medicationdispens-hospitalstay-obl-hdr.html))
15. Obligations for profile Medication dispense in medication summary ([CZ_MedicationDispenseMedicationSummaryObligationsHdr](StructureDefinition-cz-medicationdispens-medicationsummary-obl-hdr.html))
16. Obligations for profile Medication request in hospital stay ([CZ_MedicationRequestHospitalStayObligationsHdr](StructureDefinition-cz-medicationrequest-hospitalstay-obl-hdr.html))
17. Obligations for profile Medication request in medication summary ([CZ_MedicationRequestMedicationSummaryObligationsHdr](StructureDefinition-cz-medicationrequest-medicationsummary-obl-hdr.html))
18. Obligations for profile Medication statement ([CZ_MedicationStatementObligationsHdr](StructureDefinition-cz-medicationstatement-obl-hdr.html))
19. Obligations for profile Observation of anthropometric data ([CZ_ObservationAnthropometricDataHdrObligations](StructureDefinition-cz-observation-anthropometricdata-obl-hdr.html))
20. Obligations for profile Observation of infectious contact ([CZ_ObservationInfectiousContactHdrObligations](StructureDefinition-cz-observation-ic-obl-hdr.html))
21. Obligations for profile Organization ([CZ_OrganizationObligationsHdr](StructureDefinition-cz-organization-obl-hdr.html))
22. Obligations for profile Patient ([CZ_PatientObligationsHdr](StructureDefinition-cz-patient-obl-hdr.html))
23. Obligations for profile Procedure ([CZ_ProcedureObligationsHdr](StructureDefinition-cz-procedure-obl-hdr.html))