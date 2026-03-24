Instance: birthSummary2FHIR-hdr-cz
InstanceOf: ConceptMap
Usage: #definition

* url = "https://hl7.cz/fhir/hdr/ConceptMap/birthSummary2FHIR-hdr-cz"
* name = "BirthSummary2FHIRCzHdr"
* title = "eHN Birth Summary Model to CZ HDR Map"
* status = #draft
* experimental = true
* description = """
Mapping of the eHN Birth Summary logical model to Czech HDR FHIR profiles.
The mapping defines placement of delivery and pregnancy data into HDR Composition
sections and related clinical resources.
"""

// =====================================================
// COMPOSITION SECTION MAPPING
// =====================================================

* group[+].source = "https://hl7.cz/fhir/hdr/StructureDefinition/LMBirthSummaryEnCz"
* group[=].target = "https://hl7.cz/fhir/hdr/StructureDefinition/cz-composition-hdr"

// Delivery section

* group[=].element[+].code = #DeliveryDetails
* group[=].element[=].display = "Delivery section"
* group[=].element[=].target.code = #Composition.section:sectionHospitalCourse.section:sectionDelivery
* group[=].element[=].target.equivalence = #equivalent

// Newborn subsection

* group[=].element[+].code = #DeliveryDetails.newborn
* group[=].element[=].display = "Newborn information"
* group[=].element[=].target.code = #Composition.section:sectionHospitalCourse.section:sectionDelivery.entry:newborn
* group[=].element[=].target.equivalence = #relatedto

// Pregnancy history section

* group[=].element[+].code = #PregnancyHx.mother
* group[=].element[=].display = "Maternal pregnancy history"
* group[=].element[=].target.code = #Composition.section:sectionPatientHx.section:sectionPregnancyHx
* group[=].element[=].target.equivalence = #relatedto


// =====================================================
// MATERNAL PREGNANCY OBSERVATIONS
// =====================================================

* group[=].element[+].code = #PregnancyHx.mother.gestationalAgeAtDelivery
* group[=].element[=].display = "Gestational age at delivery"
* group[=].element[=].target.code = #Composition.section:sectionPatientHx.section:sectionPregnancyHx.entry:gestationalAge
* group[=].element[=].target.equivalence = #relatedto

* group[=].element[+].code = #PregnancyHx.mother.gravidity
* group[=].element[=].display = "Gravidity"
* group[=].element[=].target.code = #Composition.section:sectionPatientHx.section:sectionPregnancyHx.entry:gravidity
* group[=].element[=].target.equivalence = #relatedto

* group[=].element[+].code = #PregnancyHx.mother.parity
* group[=].element[=].display = "Parity"
* group[=].element[=].target.code = #Composition.section:sectionPatientHx.section:sectionPregnancyHx.entry:parity
* group[=].element[=].target.equivalence = #relatedto

* group[=].element[+].code = #PregnancyHx.mother.multiplePregnancy
* group[=].element[=].display = "Multiple pregnancy"
* group[=].element[=].target.code = #Composition.section:sectionPatientHx.section:sectionPregnancyHx.entry:multiplePregnancy
* group[=].element[=].target.equivalence = #relatedto

* group[=].element[+].code = #PregnancyHx.mother.fetusCount
* group[=].element[=].display = "Number of fetuses"
* group[=].element[=].target.code = #Composition.section:sectionPatientHx.section:sectionPregnancyHx.entry:multiplePregnancy
* group[=].element[=].target.equivalence = #relatedto


// =====================================================
// DELIVERY DETAILS (Hospital course)
// =====================================================

* group[=].element[+].code = #DeliveryDetails.newborn.deliveryMethod
* group[=].element[=].display = "Delivery method"
* group[=].element[=].target.code = #Composition.section:sectionHospitalCourse.section:sectionDelivery.entry:deliveryProcedure
* group[=].element[=].target.equivalence = #relatedto

* group[=].element[+].code = #DeliveryDetails.mother.laborInduction
* group[=].element[=].display = "Induction of labor"
* group[=].element[=].target.code = #Composition.section:sectionHospitalCourse.section:sectionDelivery.entry:inductionProcedure
* group[=].element[=].target.equivalence = #relatedto

* group[=].element[+].code = #DeliveryDetails.mother.birthInjury.code
* group[=].element[=].display = "Birth injury code"
* group[=].element[=].target.code = #Composition.section:sectionHospitalCourse.section:sectionDelivery.entry:birthInjury
* group[=].element[=].target.equivalence = #relatedto

* group[=].element[+].code = #DeliveryDetails.mother.birthInjury.description
* group[=].element[=].display = "Birth injury description"
* group[=].element[=].target.code = #Composition.section:sectionHospitalCourse.section:sectionDelivery.entry:birthInjury
* group[=].element[=].target.equivalence = #relatedto


// =====================================================
// NEWBORN OBSERVATIONS
// =====================================================

* group[=].element[+].code = #DeliveryDetails.newborn.fetalPresentation
* group[=].element[=].display = "Fetal presentation"
* group[=].element[=].target.code = #Composition.section:sectionHospitalCourse.section:sectionDelivery.entry:fetalPresentation
* group[=].element[=].target.equivalence = #relatedto

* group[=].element[+].code = #DeliveryDetails.newborn.birthWeight
* group[=].element[=].display = "Birth weight"
* group[=].element[=].target.code = #Composition.section:sectionHospitalCourse.section:sectionDelivery.entry:birthWeight
* group[=].element[=].target.equivalence = #relatedto

* group[=].element[+].code = #DeliveryDetails.newborn.birthLength
* group[=].element[=].display = "Birth length"
* group[=].element[=].target.code = #Composition.section:sectionHospitalCourse.section:sectionDelivery.entry:birthLength
* group[=].element[=].target.equivalence = #relatedto

* group[=].element[+].code = #DeliveryDetails.newborn.birthOutcome
* group[=].element[=].display = "Birth outcome"
* group[=].element[=].target.code = #Composition.section:sectionHospitalCourse.section:sectionDelivery.entry:deliveryObservation
* group[=].element[=].target.equivalence = #relatedto


// =====================================================
// APGAR SCORES
// =====================================================

* group[=].element[+].code = #DeliveryDetails.newborn.apgarScore.minute1
* group[=].element[=].display = "Apgar score at 1 minute"
* group[=].element[=].target.code = #Composition.section:sectionHospitalCourse.section:sectionDelivery.entry:apgarScore
* group[=].element[=].target.equivalence = #relatedto

* group[=].element[+].code = #DeliveryDetails.newborn.apgarScore.minute5
* group[=].element[=].display = "Apgar score at 5 minutes"
* group[=].element[=].target.code = #Composition.section:sectionHospitalCourse.section:sectionDelivery.entry:apgarScore
* group[=].element[=].target.equivalence = #relatedto

* group[=].element[+].code = #DeliveryDetails.newborn.apgarScore.minute10
* group[=].element[=].display = "Apgar score at 10 minutes"
* group[=].element[=].target.code = #Composition.section:sectionHospitalCourse.section:sectionDelivery.entry:apgarScore
* group[=].element[=].target.equivalence = #relatedto


// =====================================================
// PROCEDURES
// =====================================================

* group[+].source = "https://hl7.cz/fhir/hdr/StructureDefinition/LMBirthSummaryEnCz"
* group[=].target = "https://hl7.cz/fhir/hdr/StructureDefinition/cz-procedure-method-of-delivery"

* group[=].element[+].code = #DeliveryDetails.newborn.deliveryMethod
* group[=].element[=].target.code = #Procedure.code
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #DeliveryDetails.newborn.birthDateTime
* group[=].element[=].target.code = #Procedure.performedDateTime
* group[=].element[=].target.equivalence = #equal


// =====================================================
// CONDITION (Birth injury)
// =====================================================

* group[+].source = "https://hl7.cz/fhir/hdr/StructureDefinition/LMBirthSummaryEnCz"
* group[=].target = "https://hl7.cz/fhir/hdr/StructureDefinition/cz-condition-hdr"

* group[=].element[+].code = #DeliveryDetails.mother.birthInjury.code
* group[=].element[=].target.code = #Condition.code
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #DeliveryDetails.mother.birthInjury.description
* group[=].element[=].target.code = #Condition.text
* group[=].element[=].target.equivalence = #relatedto


// =====================================================
// PATIENT (Newborn)
// =====================================================

* group[+].source = "https://hl7.cz/fhir/hdr/StructureDefinition/LMBirthSummaryEnCz"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-patient-core"

* group[=].element[+].code = #DeliveryDetails.newborn.sex
* group[=].element[=].target.code = #Patient.gender
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #DeliveryDetails.newborn.name
* group[=].element[=].target.code = #Patient.name.given
* group[=].element[=].target.equivalence = #relatedto
