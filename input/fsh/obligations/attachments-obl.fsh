Profile: CZ_AttachmentsObligationsHdr
Parent: CZ_AttachmentHdr
Id: cz-attachment-obl-hdr
Title:    "Attachments: Obligations"
Description: "This profile defines obligations for an attachment in FHIR for the purpose of this guide."
// * ^publisher = "HL7 Europe"
// * ^copyright = "HL7 Europe"
* insert SetFmmandStatusRule ( 0, informative)

//L2 Creator Obligations L2 ============>
* content.attachment.contentType insert OblCreator(#SHOULD:able-to-populate,L2)
* content.attachment.language insert OblCreator(#SHOULD:able-to-populate,L2)
* content.attachment.url insert OblCreator(#SHOULD:able-to-populate,L2)
* content.attachment.title insert OblCreator(#SHOULD:able-to-populate,L2)
* content.attachment.creation insert OblCreator(#SHOULD:able-to-populate,L2)
* content.attachment.data insert OblCreator(#SHOULD:able-to-populate,L2)

//L2 Consumer obligations L2
* content.attachment.contentType insert OblConsumer(#SHOULD:display,L2)
* content.attachment.language insert OblConsumer(#SHOULD:display,L2)
* content.attachment.url insert OblConsumer(#SHOULD:display,L2)
* content.attachment.title insert OblConsumer(#SHOULD:display,L2)
* content.attachment.creation insert OblConsumer(#SHOULD:display,L2)
* content.attachment.data insert OblConsumer(#SHOULD:display,L2)

//L1 Creator Obligations L3 ============>
* content.attachment.contentType insert OblCreator(#SHALL:able-to-populate,L3)
* content.attachment.language insert OblCreator(#SHALL:able-to-populate,L3)
* content.attachment.url insert OblCreator(#SHALL:able-to-populate,L3)
* content.attachment.title insert OblCreator(#SHALL:able-to-populate,L3)
* content.attachment.creation insert OblCreator(#SHALL:able-to-populate,L3)
* content.attachment.data insert OblCreator(#SHALL:able-to-populate,L3)

//L1 Consumer obligations L3
* content.attachment.contentType insert OblConsumer(#SHALL:display,L3)
* content.attachment.language insert OblConsumer(#SHALL:display,L3)
* content.attachment.url insert OblConsumer(#SHALL:display,L3)
* content.attachment.title insert OblConsumer(#SHALL:display,L3)
* content.attachment.creation insert OblConsumer(#SHALL:display,L3)
* content.attachment.data insert OblConsumer(#SHALL:display,L3)