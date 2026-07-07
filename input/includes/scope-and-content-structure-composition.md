#### Composition (HDR CZ)

To address the Hospital Discharge Report Structure Challenge, we have opted for a flexible approach rather than imposing a single rigid format.

The "flat structure" documented in this guide should be understood as a "section library" that can be reused in both flat and nested structures. This approach allows implementers to organize the report according to local or institutional needs while maintaining a standardized content model.

##### In practice:

**Required Sections** 

Only a few core sections are mandatory (e.g., Hospital Course).

**Open Section Slices** 

Section slices are open, meaning implementers have the freedom to include additional "first-level" sections as needed.

**Clinical Containers (Nesting)** 

Unlike the fully flat European model, the Czech profile explicitly groups objective findings during admission and discharge into dedicated sub-sections. This ensures that vital signs, anthropometry, and physical examinations are always interpreted within the correct temporal and clinical context of the stay.

**Sub-section Flexibility:** 

With the exception of these predefined nested cases, sub-sections are generally allowed, giving healthcare providers the ability to create a structure that best fits their clinical workflow.By offering this level of flexibility, the implementation guide supports diverse healthcare environments while promoting consistency in content and interoperability.

#### Diagram of Structure

When implementing the structure shown below, please pay attention to the following elements:

**Document Header (Hlavička dokumentu)** 

Defines core metadata (patient, encounter, document type "Discharge Report", status).

**First Level / Section Library (První úroveň / Knihovna sekcí)**

- Blue section (Hospital Course): The only strictly mandatory section on the first level.

- White sections: Optional standard sections (Discharge Medication, Patient History, etc.) or custom specific sections.

- Orange containers (Discharge Details and Admission Evaluation): Specific Czech containers that mandatorily group nested sub-sections (connected by dashed lines) to preserve clinical context.

{% include composition.svg %}