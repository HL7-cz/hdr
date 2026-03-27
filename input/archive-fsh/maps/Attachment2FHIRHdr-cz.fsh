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
* group[=].element[+].code = #AttachmentsCz
* group[=].element[=].display = "A.4 - Attachments"
* group[=].element[=].target.code = #Composition.section:sectionAttachments.entry
* group[=].element[=].target.display = "If it is additional attachments, entry.ofType(CZ_AttachmentHdr)"
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "https://hl7.cz/fhir/hdr/StructureDefinition/AttachmentsCz"
* group[=].target = "https://hl7.cz/fhir/hdr/StructureDefinition/cz-attachment-hdr"
* group[=].element[+].code = #AttachmentsCz.contentType
* group[=].element[=].display = "A.4.1 - Content type of media attachments"
* group[=].element[=].target.code = #DocumentReference.content.attachment.contentType
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #AttachmentsCz.language
* group[=].element[=].display = "A.4.2 - Language of media attachments"
* group[=].element[=].target.code = #DocumentReference.content.attachment.language
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #AttachmentsCz.data
* group[=].element[=].display = "A.4.3 - Data of media attachments"
* group[=].element[=].target.code = #DocumentReference.content.attachment.data
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #AttachmentsCz.url
* group[=].element[=].display = "A.4.4 - URL of media attachments"
* group[=].element[=].target.code = #DocumentReference.content.attachment.url
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #AttachmentsCz.title
* group[=].element[=].display = "A.4.5 - Title of media attachments"
* group[=].element[=].target.code = #DocumentReference.content.attachment.title
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #AttachmentsCz.creation
* group[=].element[=].display = "A.4.6 - Date and time of creation"
* group[=].element[=].target.code = #DocumentReference.content.attachment.creation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent