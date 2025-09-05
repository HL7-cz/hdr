<div xmlns="http://www.w3.org/1999/xhtml" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<blockquote class="stu-note">
<b>Informative for this version of the guide</b>
<p>The obligations have been added to this version of the guide only as informative material to gather feedback on their use.</p>
</blockquote>
</div>

### Overview 

Obligations are a mean offered by HL7 FHIR to specify functional capabilities that defined actors MAY, SHOULD or SHALL to the data elements specified by the profiles.

This page describes also the actors that have been defined for specifying the obligations.

### Actors

{% include fsh-link-references.md %}

Actors were specified in these roles:

| Role                                                    | Description                                                                                                                          |
| ------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------ |
| the [Level 1 Creator](ActorDefinition-actor-creator-img-L1.html)   | This is a L1 actor that creates a report. This report can be sent to a consumer or to a repository for storing and sharing report. |
| the [Level 1 Consumer](ActorDefinition-actor-consumer-img-L1.html) | This L1 actor represents the system that uses the received or retrieved report.                                                                 |
| the [Level 2 Creator](ActorDefinition-actor-creator-img-L2.html)   | This is a L2 actor that creates a report. This report can be sent to a consumer or to a repository for storing and sharing report. |
| the [Level 2 Consumer](ActorDefinition-actor-consumer-img-L2.html) | This L2 actor represents the system that uses the received or retrieved report.                                                                 |
| the [Level 3 Creator](ActorDefinition-actor-creator-img-L3.html)   | This is a L3 actor that creates a report. This report can be sent to a consumer or to a repository for storing and sharing report. |
| the [Level 3 Consumer](ActorDefinition-actor-consumer-img-L3.html) | This L3 actor represents the system that uses the received or retrieved report.                                                                 |                                                

<p>{% include hdr-Actors.svg %}</p>

### Obligations List

1. Obligations for populating the patient object ([CZ_PatientObligationsHdr](StructureDefinition-cz-patient-obl-hdr.html))