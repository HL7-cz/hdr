### General Semantics in National Context

#### Entities

---

**Patient**

Information about the individual receiving healthcare services. This profile defines the structure of the patient, localizing fundamental concepts, including identifiers and terminology, for use in the Czech context.

**Healthcare Provider**

Information about the individual providing healthcare services. The profile identifies the healthcare provider within an organization, and it is possible to assign a role to the person delivering the healthcare service, which can be defined through one of two coding systems: KRZP or SNOMED.

**Healthcare Service Provider**

This profile defines the way organizations are represented in the context of the Czech national Imaging Order. In this document, it is abbreviated as healthcare facility.

#### Objects

---

**Medical Device**

This profile includes constraints applied to the Device within the context of the Czech national Imaging Order. It describes the device in the role of "observer" or "performer". This profile specifies the requirements for the Device used during examinations.

**Medical Product**

This profile presents the requirements for the Device within the context of the Czech national Imaging Order. The type of medical product is preferably specified using a SNOMED CT code. The absence of information or the absence of a medical product is explicitly indicated using codes from the following registry: [Absent and Unknown Data - IPS](https://fhir.org/guides/stats2/codesystem-hl7.fhir.uv.ips-absent-unknown-uv-ips.html).

**Components**

In the context of this document, a component refers to a part of the data structure that is common to multiple objects. For example, biometric data such as weight and height should be consistently used and defined in both discharge and outpatient reports, as well as in imaging examination order forms.

### Content

####  Header


#### Body of HDR