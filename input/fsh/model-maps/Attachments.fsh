Logical: AttachmentsCz
Id: AttachmentsCz
Title: "A.4 - Additional attachments"
Description: """Discharge Report - additional attachments - A.4"""

* insert SetFmmandStatusRule ( 1, draft )

* contentType 0..1 CodeableConcept "A.4.1 Type of content" """Type of content - MIME type is required"""
* language 0..1 CodeableConcept "A.4.2 Language of content" """Language of content - HL7 valueset of languages is required"""
* data 1..1 base64Binary "A.4.3 Data of content" """Data inline, base64ed"""
* url 0..1 url "A.4.4 URL of content" """Uri where the data can be found"""
* title 1..1 string "A.4.5 Title of content" """Label to display in place of the data"""
* creation 0..1 dateTime "A.4.6 Date of creation" """Date attachment was first created"""