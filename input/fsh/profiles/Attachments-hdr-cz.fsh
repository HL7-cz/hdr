Profile: CZ_AttachmentHdr
Parent: DocumentReference
Id: cz-attachment-hdr
Title: "Attachment: HDR (CZ)"
Description: "Czech profile for attachment. "

* . ^short = "Hospital discharge report attachment."
* . ^definition = "HDR composition attachment."

* insert SetFmmandStatusRule ( 0, draft )

* content.attachment 
* content.attachment.contentType MS
* content.attachment.language MS
* content.attachment.url MS
* content.attachment.title MS
* content.attachment.creation MS