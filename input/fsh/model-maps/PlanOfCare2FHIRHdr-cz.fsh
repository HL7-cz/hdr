Instance: planOfCare2FHIR-cz-hdr
InstanceOf: ConceptMap
Usage: #definition
* url = "https://hl7.cz/fhir/hdr/ConceptMap/planOfCare2FHIR-cz-hdr"
* name = "PlanOfCare2FHIRCzHdr"
* title = "eHN Plan of Care Model to this guide Map"
* status = #draft
* experimental = true
* description = """eHN HDR Plan of Care Model to this guide Map"""
* group[+].source = "https://hl7.cz/fhir/hdr/StructureDefinition/PlanOfCareCz"
* group[=].target = "https://hl7.cz/fhir/hdr/StructureDefinition/cz-carePlan-hdr"
* group[=].element[+].code = #PlanOfCare.title
* group[=].element[=].display = "A.2.8.1.1 - Title"
* group[=].element[=].target.code = #CarePlan.title
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #PlanOfCare.addresses
* group[=].element[=].display = "A.2.8.1.2 - Addresses"
* group[=].element[=].target.code = #CarePlan.addresses
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #PlanOfCare.description
* group[=].element[=].display = "A.2.8.1.3 - Description"
* group[=].element[=].target.code = #CarePlan.description
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #PlanOfCare.planPeriod
* group[=].element[=].display = "A.2.8.1.4 - Plan Period"
* group[=].element[=].target.code = #CarePlan.period
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #PlanOfCare.details
* group[=].element[=].display = "A.2.8.1.5 - Other details"
* group[=].element[=].target.code = #CarePlan.activity.detail
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #PlanOfCare.activity
* group[=].element[=].display = "A.2.8.1.6 - Activity"
* group[=].element[=].target.code = #CarePlan.activity
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #PlanOfCare.activity.kind
* group[=].element[=].display = "A.2.8.1.6.1 - Kind"
* group[=].element[=].target.code = #CarePlan.activity.detail.kind
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #PlanOfCare.activity.description
* group[=].element[=].display = "A.2.8.1.6.2 - Activity description"
* group[=].element[=].target.code = #CarePlan.detail.description
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #PlanOfCare.activity.attribute
* group[=].element[=].display = "A.2.8.1.6.3 - Specific attributes"
* group[=].element[=].target.code = #CarePlan.activity.reference
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equal
