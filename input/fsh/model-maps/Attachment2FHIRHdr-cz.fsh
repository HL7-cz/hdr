Instance: AttachmentHDR2FHIR-cz
InstanceOf: ConceptMap
Usage: #definition
* name = "AttachmentHDR2FHIRcz"
* title = "CZ Attachment Model to this guide Map"
* status = #draft
* experimental = true
* description = """CZ HDR Attachment Model to this guide mapping"""


* group[+].source = "https://hl7.cz/fhir/hdr/StructureDefinition/AttachmentsCz"
* group[=].target = "https://hl7.cz/fhir/hdr/StructureDefinition/cz-composition-hdr"
* group[=].element[+].code = #Attachments
* group[=].element[=].display = "A.4 - Attachments"
* group[=].element[=].target.code = #Composition.section:sectionAttachments.entry[x].DocumentReference.content[x].attachment
* group[=].element[=].target.display = "If it is additional attachments"
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "https://hl7.cz/fhir/hdr/StructureDefinition/AttachmentsCz"
* group[=].target = "https://hl7.cz/fhir/hdr/StructureDefinition/cz-attachment-hdr"
* group[=].element[+].code = #Attachments.contentType
* group[=].element[=].display = "A.4.1 - Content type of media attachments"
* group[=].element[=].target.code = #content[x].attachment.contentType
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Attachments.language
* group[=].element[=].display = "A.4.2 - Language of media attachments"
* group[=].element[=].target.code = #content[x].attachment.language
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Attachments.data
* group[=].element[=].display = "A.4.3 - Data of media attachments"
* group[=].element[=].target.code = #content[x].attachment.data
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Attachments.url
* group[=].element[=].display = "A.4.4 - URL of media attachments"
* group[=].element[=].target.code = #content[x].attachment.url
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Attachments.title
* group[=].element[=].display = "A.4.5 - Title of media attachments"
* group[=].element[=].target.code = #content[x].attachment.title
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Attachments.creation
* group[=].element[=].display = "A.4.6 - Date and time of creation"
* group[=].element[=].target.code = #content[x].attachment.creation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent