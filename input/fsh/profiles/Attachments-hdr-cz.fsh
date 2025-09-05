Profile: CZ_AttachmentHdr
Parent: DocumentReference
Id: cz-attachment-hdr
Title: "Attachment: HDR (CZ)"
Description: "Czech profile for attachment. "

* . ^short = "Hospital discharge report attachment."
* . ^definition = "HDR composition attachment."

* insert SetFmmandStatusRule ( 0, draft )

* content.attachment.contentType 1..1
* content.attachment.language 0..1
* content.attachment.data 1..1
* content.attachment.title 0..1
* content.attachment.url 0..1
* content.attachment.creation 1..1