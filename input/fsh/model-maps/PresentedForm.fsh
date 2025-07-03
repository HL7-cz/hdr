Logical: PresentedFormCz
Id: PresentedFormCz
Title: "A.3 - Presented form"
Description: """Presented form - Entire report as issued. Various formats could be provided, pdf format is recommended."""

* presentedForm 1..* Base "A.3 - Presented form" """Presented form of document"""
* presentedForm.contentType 0..1 CodeableConcept "A.3.1 Type of content" """Type of content - MIME type is required"""
* presentedForm.language 0..1 CodeableConcept "A.3.2 Language of content" """Language of content - HL7 valueset of languages is required"""
* presentedForm.data 1..1 base64Binary "A.3.3 Data of content" """Data inline, base64ed"""
* presentedForm.url 0..1 url "A.3.4 URL of content" """Uri where the data can be found"""
* presentedForm.title 1..1 string "A.3.5 Title of content" """Label to display in place of the data"""
* presentedForm.creation 0..1 dateTime "A.3.6 Date of creation" """Date attachment was first created"""