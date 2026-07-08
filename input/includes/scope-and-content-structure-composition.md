#### Composition (HDR CZ)

The structure of the composition for the Hospital Discharge Report (HDR CZ) defines a standardized national framework for the exchange of clinical information within the Czech healthcare environment. While this profile is built upon the European "section library" concept, which is inherently flat and flexible, it implements a unified hierarchy utilizing Closed Slicing for its sections to achieve robust national interoperability.

The objective of this approach is to establish a predictable format that enables recipients to perform safe automated data processing and ensures clear navigation within the document. While a generic "Discharge Report" model may remain open to accommodate various outpatient and inpatient care types, this national specification fixes the structure for hospital stays to prevent incompatible document variations across different healthcare providers and system vendors.

##### Key structural principles:

**Standardized Section Selection** 

Only sections explicitly defined in this profile are permitted, ensuring that any system in the Czech Republic can correctly interpret the report.

**Clinical Context through Sub-sections**

In contrast to the flat European list, we emphasize the logical nesting of data. Specifically, the sections for admission and discharge evaluation act as mandatory containers that group vital signs, anthropometry, and physical examinations.

**The Role of Nesting** 

Organizing data into sub-sections ensures that objective findings are strictly linked to specific clinical stages of the stay. This prevents the confusion of measurements taken at the beginning of the hospitalization with those describing the patient's status upon discharge.

**Encounter Binding**

Every composition is strictly linked to a specific hospitalization case (encounter 1..1) and requires standardized document categorization (code 11503-0) to maintain metadata consistency within the national health information exchange.


#### Diagram of Structure

When implementing the structure shown below, please pay attention to the following elements:

**Document Header (Hlavička dokumentu)** 

Defines core metadata (patient, encounter, document type "Discharge Report", status).

**Unified Sections (Closed Slicing)**

In contrast to the flexible European "section library," the Czech profile utilizes Closed Slicing. Only sections explicitly defined in this profile are permitted, ensuring a predictable format for all data recipients.

- Mandatory Section (Blue): The Hospital Course section is strictly required (1..1).
- Clinical Containers (Orange): The admission and discharge evaluation sections act as mandatory wrappers for nested sub-sections (vital signs, etc.) to preserve temporal clinical context.
- Optional Standard Sections (White): Key clinical blocks like Patient History or Discharge Medication.
- Other Permitted Sections (Grey): The profile includes a wide variety of other optional sections (e.g., Allergies, Alerts, Payers, Significant Results, or Delivery). While these are optional, only sections present in the official HDR CZ specification may be used. Custom sections outside of this fixed list are prohibited to maintain a predictable document format.

{% include composition.svg %}