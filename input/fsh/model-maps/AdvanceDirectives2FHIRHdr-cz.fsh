Instance: advanceDirectives2FHIR-cz-hdr
InstanceOf: ConceptMap
Usage: #definition
* url = "https://hl7.cz/fhir/hdr/ConceptMap/advanceDirectives2FHIR-cz-hdr"
* name = "AdvanceDirectives2FHIRCzHdr"
* title = "CZ Advance Directives Model to this guide Map"
* status = #draft
* experimental = true
* description = """eHN HDR Advance Directives Model to this guide mapping"""
* group[+].source = "https://hl7.cz/fhir/hdr/StructureDefinition/AdvanceDirectivesCz"
* group[=].target = "https://hl7.cz/fhir/hdr/StructureDefinition/cz-composition-hdr"
* group[=].element[+].code = #AdvanceDirectives.livingWill
* group[=].element[=].display = "A.2.1.1 - Living will"
* group[=].element[=].target.code = #Composition.section:sectionAdvanceDirectives.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #AdvanceDirectives.livingWill
* group[=].element[=].display = "A.2.1.1 - Living will"
* group[=].element[=].target.code = #Composition.section:sectionAdvanceDirectives.entry
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Composition.section:sectionAdvanceDirectives.entry.ofType(Consent)"
* group[=].element[+].code = #AdvanceDirectives.livingWill.document
* group[=].element[=].display = "A.2.1.1.5 - Living will document"
* group[=].element[=].target.code = #Composition.section:sectionAdvanceDirectives.entry
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Composition.section:sectionAdvanceDirectives.entry.ofType(DocumentReference)"
* group[+].source = "https://hl7.cz/fhir/hdr/StructureDefinition/AdvanceDirectivesCz"
* group[=].target = "http://hl7.org/fhir/StructureDefinition/Consent"
* group[=].element[+].code = #AdvanceDirectives.livingWill.date
* group[=].element[=].display = "A.2.1.1.1 - Date and time"
* group[=].element[=].target.code = #Consent.dateTime
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #AdvanceDirectives.livingWill.type
* group[=].element[=].display = "A.2.1.1.2 - Type"
* group[=].element[=].target.code = #Consent.category
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "TO BE checked"
* group[=].element[+].code = #AdvanceDirectives.livingWill.comment
* group[=].element[=].display = "A.2.1.1.3 - Comment"
* group[=].element[=].target.code = #Consent.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "TO BE checked"
* group[=].element[+].code = #AdvanceDirectives.livingWill.conditions
* group[=].element[=].display = "A.2.1.1.4 - Related conditions"
* group[=].element[=].target.code = #Consent.provision.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "TO BE checked"
