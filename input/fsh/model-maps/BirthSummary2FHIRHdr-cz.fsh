Instance: birthSummary2FHIR-hdr-cz
InstanceOf: ConceptMap
Usage: #definition
* url = "https://hl7.cz/fhir/hdr/ConceptMap/birthSummary2FHIR-hdr-cz"
* name = "BirthSummary2FHIRCzHdr"
* title = "eHN Birth Summary Model to this guide Map"
* status = #draft
* experimental = true
* description = """eHN HDR Birth Summary model to CZ HDR Composition Delivery section"""

* group[+].source = "https://hl7.cz/fhir/hdr/StructureDefinition/LMBirthSummaryEnCz"
* group[=].target = "https://hl7.cz/fhir/hdr/StructureDefinition/cz-composition-hdr"
* group[=].element[+].code = #BirthSummary
* group[=].element[=].display = "A.2.10 - Delivery"
* group[=].element[=].target.code = #Composition.section:sectionHospitalCourse.section:sectionDelivery
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #BirthSummary.newborn
* group[=].element[=].display = "A.2.10.2 - Fetus/Newborn"
* group[=].element[=].target.code = #Composition.section:sectionHospitalCourse.section:sectionDelivery.entry
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #BirthSummary.mother
* group[=].element[=].display = "A.2.10.1 - Maternal delivery information"
* group[=].element[=].target.code = #Composition.section:sectionPatientHx.section:sectionPregnancyHx
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #BirthSummary.mother.gestationalAgeAtDelivery
* group[=].element[=].display = "A.2.10.1.1 - Gestational age at delivery"
* group[=].element[=].target.code = #Composition.section:sectionPatientHx.section:sectionPregnancyHx.entry
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #BirthSummary.maternal.gravidity
* group[=].element[=].display = "A.2.10.1.2 - Gravidity"
* group[=].element[=].target.code = #Composition.section:sectionPatientHx.section:sectionPregnancyHx.entry
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #BirthSummary.maternal.parity
* group[=].element[=].display = "A.2.10.1.3 - Parity"
* group[=].element[=].target.code = #Composition.section:sectionPatientHx.section:sectionPregnancyHx.entry
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto

* group[+].source = "https://hl7.cz/fhir/hdr/StructureDefinition/LMBirthSummaryEnCz"
* group[=].target = "https://hl7.cz/fhir/hdr/StructureDefinition/cz-procedure-method-of-delivery"
* group[=].element[+].code = #BirthSummary.newborn.deliveryMethod
* group[=].element[=].display = "A.2.10.2.3 - Delivery method"
* group[=].element[=].target.code = #Procedure.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #BirthSummary.newborn.birthDateTime
* group[=].element[=].display = "A.2.10.2.1 - Date and time of birth"
* group[=].element[=].target.code = #Procedure.performedDateTime
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equal

* group[+].source = "https://hl7.cz/fhir/hdr/StructureDefinition/LMBirthSummaryEnCz"
* group[=].target = "https://hl7.cz/fhir/hdr/StructureDefinition/cz-procedure-induction-of-labor"
* group[=].element[+].code = #BirthSummary.maternal.laborInduction
* group[=].element[=].display = "A.2.10.1.4 - Labour pre-induction / induction"
* group[=].element[=].target.code = #Procedure.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent

* group[+].source = "https://hl7.cz/fhir/hdr/StructureDefinition/LMBirthSummaryEnCz"
* group[=].target = "https://hl7.cz/fhir/hdr/StructureDefinition/cz-condition-hdr"
* group[=].element[+].code = #BirthSummary.maternal.birthInjury.code
* group[=].element[=].display = "A.2.10.1.5.2 - Birth injury code"
* group[=].element[=].target.code = #Condition.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #BirthSummary.maternal.birthInjury.description
* group[=].element[=].display = "A.2.10.1.5.1 - Birth injury description"
* group[=].element[=].target.code = #Condition.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto

* group[+].source = "https://hl7.cz/fhir/hdr/StructureDefinition/LMBirthSummaryEnCz"
* group[=].target = "https://hl7.cz/fhir/hdr/StructureDefinition/cz-observation-gravidity"
* group[=].element[+].code = #BirthSummary.maternal.gravidity
* group[=].element[=].display = "A.2.10.1.2 - Gravidity"
* group[=].element[=].target.code = #Observation.valueInteger
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #BirthSummary.newborn.birthDateTime
* group[=].element[=].display = "A.2.10.2.1 - Date and time of birth"
* group[=].element[=].target.code = #Observation.effectiveDateTime
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto

* group[+].source = "https://hl7.cz/fhir/hdr/StructureDefinition/LMBirthSummaryEnCz"
* group[=].target = "https://hl7.cz/fhir/hdr/StructureDefinition/cz-observation-parity"
* group[=].element[+].code = #BirthSummary.maternal.parity
* group[=].element[=].display = "A.2.10.1.3 - Parity"
* group[=].element[=].target.code = #Observation.valueInteger
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #BirthSummary.newborn.birthDateTime
* group[=].element[=].display = "A.2.10.2.1 - Date and time of birth"
* group[=].element[=].target.code = #Observation.effectiveDateTime
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto

* group[+].source = "https://hl7.cz/fhir/hdr/StructureDefinition/LMBirthSummaryEnCz"
* group[=].target = "https://hl7.cz/fhir/hdr/StructureDefinition/cz-observation-multiple-pregnancy"
* group[=].element[+].code = #BirthSummary.maternal.multiplePregnancy
* group[=].element[=].display = "A.2.10.1.6 - Multiple pregnancy"
* group[=].element[=].target.code = #Observation.valueBoolean
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #BirthSummary.maternal.fetusCount
* group[=].element[=].display = "A.2.10.1.6.1 - Number of fetuses"
* group[=].element[=].target.code = #Observation.component.valueInteger
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #BirthSummary.newborn.birthDateTime
* group[=].element[=].display = "A.2.10.2.1 - Date and time of birth"
* group[=].element[=].target.code = #Observation.effectiveDateTime
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto

* group[+].source = "https://hl7.cz/fhir/hdr/StructureDefinition/LMBirthSummaryEnCz"
* group[=].target = "https://hl7.cz/fhir/hdr/StructureDefinition/cz-observation-birth-weight"
* group[=].element[+].code = #BirthSummary.newborn.birthWeight
* group[=].element[=].display = "A.2.10.2.6 - Birth weight"
* group[=].element[=].target.code = #Observation.valueQuantity
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #BirthSummary.newborn.birthDateTime
* group[=].element[=].display = "A.2.10.2.1 - Date and time of birth"
* group[=].element[=].target.code = #Observation.effectiveDateTime
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto

* group[+].source = "https://hl7.cz/fhir/hdr/StructureDefinition/LMBirthSummaryEnCz"
* group[=].target = "https://hl7.cz/fhir/hdr/StructureDefinition/cz-observation-birth-length"
* group[=].element[+].code = #BirthSummary.newborn.birthLength
* group[=].element[=].display = "A.2.10.2.7 - Birth length"
* group[=].element[=].target.code = #Observation.valueQuantity
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #BirthSummary.newborn.birthDateTime
* group[=].element[=].display = "A.2.10.2.1 - Date and time of birth"
* group[=].element[=].target.code = #Observation.effectiveDateTime
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto

* group[+].source = "https://hl7.cz/fhir/hdr/StructureDefinition/LMBirthSummaryEnCz"
* group[=].target = "http://hl7.org/fhir/StructureDefinition/Observation"
* group[=].element[+].code = #BirthSummary.maternal.gestationalAgeAtDelivery
* group[=].element[=].display = "A.2.10.1.1 - Gestational age at delivery"
* group[=].element[=].target.code = #Observation.valueString
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "No dedicated CZ profile yet, value example: 39+6"
* group[=].element[+].code = #BirthSummary.newborn.birthOutcome
* group[=].element[=].display = "A.2.10.2.4 - Birth outcome"
* group[=].element[=].target.code = #Observation.valueCodeableConcept
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "No dedicated CZ profile yet; recommended dedicated Observation profile for outcome at birth"

* group[+].source = "https://hl7.cz/fhir/hdr/StructureDefinition/LMBirthSummaryEnCz"
* group[=].target = "https://hl7.cz/fhir/hdr/StructureDefinition/cz-observation-fetal-presentation"
* group[=].element[+].code = #BirthSummary.newborn.fetalPresentation
* group[=].element[=].display = "A.2.10.2.2 - Fetal presentation during delivery"
* group[=].element[=].target.code = #Observation.valueCodeableConcept
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #BirthSummary.newborn.birthDateTime
* group[=].element[=].display = "A.2.10.2.1 - Date and time of birth"
* group[=].element[=].target.code = #Observation.effectiveDateTime
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #BirthSummary.newborn.apgarScore.minute1
* group[=].element[=].display = "A.2.10.2.8.1 - Apgar score at 1 minute"
* group[=].element[=].target.code = #Observation.valueInteger
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "No dedicated CZ profile yet; use one Observation per minute or a panel with components"
* group[=].element[+].code = #BirthSummary.newborn.apgarScore.minute5
* group[=].element[=].display = "A.2.10.2.8.2 - Apgar score at 5 minutes"
* group[=].element[=].target.code = #Observation.valueInteger
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "No dedicated CZ profile yet; use one Observation per minute or a panel with components"
* group[=].element[+].code = #BirthSummary.newborn.apgarScore.minute10
* group[=].element[=].display = "A.2.10.2.8.3 - Apgar score at 10 minutes"
* group[=].element[=].target.code = #Observation.valueInteger
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "No dedicated CZ profile yet; use one Observation per minute or a panel with components"
* group[=].element[+].code = #BirthSummary.newborn.birthDateTime
* group[=].element[=].display = "A.2.10.2.1 - Date and time of birth"
* group[=].element[=].target.code = #Observation.effectiveDateTime
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto

* group[+].source = "https://hl7.cz/fhir/hdr/StructureDefinition/LMBirthSummaryEnCz"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-patient-core"
* group[=].element[+].code = #BirthSummary.newborn.sex
* group[=].element[=].display = "A.2.10.2.5 - Newborn sex"
* group[=].element[=].target.code = #Patient.gender
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #BirthSummary.newborn.name
* group[=].element[=].display = "A.2.10.2.9 - Newborn name"
* group[=].element[=].target.code = #Patient.name.given
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
