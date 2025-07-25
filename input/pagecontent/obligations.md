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
| the [Creator](ActorDefinition-actor-creator-hdr.html)   | The first is the actor creating the report. This report can be send to a consumer for report storage and sharing. |
| the [Consumer](ActorDefinition-actor-consumer-hdr.html) | The last actor is the system using the report received or retrieved.                                                                 |

<p>{% include hdr-Actors.svg %}</p>

### Obligations List

1. Obligations for populating the patient object ([CZ_PatientObligationsHdr](StructureDefinition-cz-patient-obl-hdr.html))