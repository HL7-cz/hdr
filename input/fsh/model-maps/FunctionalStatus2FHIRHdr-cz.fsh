Instance: functionalStatus2FHIR-hdr-cz
InstanceOf: ConceptMap
Usage: #definition
* url = "https://hl7.cz/fhir/hdr/ConceptMap/functionalStatus2FHIR-hdr-cz"
* name = "FunctionalStatus2FHIREuHdr"
* title = "eHN Functional Status Model to this guide Map"
* status = #draft
* experimental = true
* description = """eHN HDR Functional Status Model to this guide Map"""
* group[+].source = "https://hl7.cz/fhir/hdr/StructureDefinition/FunctionalStatusCz"
* group[=].target = "https://hl7.cz/fhir/hdr/StructureDefinition/cz-composition-hdr"
* group[=].element[+].code = #FunctionalStatus.description
* group[=].element[=].display = "A.2.7.2.1 - Description"
* group[=].element[=].target.code = #Composition.section:sectionFunctionalStatus.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[+].source = "https://hl7.cz/fhir/hdr/StructureDefinition/FunctionalStatusCz"
* group[=].target = "http://hl7.org/fhir/StructureDefinition/ClinicalImpression"
* group[=].element[+].code = #FunctionalStatus.assessmentType
* group[=].element[=].display = "A.2.7.2.3 - Functional assessment description"
* group[=].element[=].target.code = #ClinicalImpression.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #FunctionalStatus.assessmentDate
* group[=].element[=].display = "A.2.7.2.4 - Functional assessment date"
* group[=].element[=].target.code = #ClinicalImpression.effective[x]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #FunctionalStatus.assessmentResult
* group[=].element[=].display = "A.2.7.2.5 - Functional assessment result"
* group[=].element[=].target.code = #ClinicalImpression.finding
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[+].source = "https://hl7.cz/fhir/hdr/StructureDefinition/FunctionalStatusCz"
* group[=].target = "https://hl7.cz/fhir/hdr/StructureDefinition/cz-condition-hdr"
* group[=].element[+].code = #FunctionalStatus.description
* group[=].element[=].display = "A.2.7.2.1 - Description"
* group[=].element[=].target.code = #Condition.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #FunctionalStatus.onsetDate
* group[=].element[=].display = "A.2.7.2.2 - Onset Date"
* group[=].element[=].target.code = #Condition.onsetDateTime
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
