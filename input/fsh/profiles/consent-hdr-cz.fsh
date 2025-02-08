Profile: CZ_ConsentHdr
Parent: Consent
Id: cz-consent-hdr
Title: "Consent (Advance Directives) (HDR CZ)"
Description: """This profile constrains the Consent resource for the purpose of representing Advance Directives in this project."""
* ^purpose = "This profile constrains the Consent resource to model Advance Directives, documenting a patient's future medical decisions."

* insert SetFmmandStatusRule (1, draft)

* dateTime 1..1
* category 1..1
  * ^binding.valueSet = "https://hl7.cz/fhir/ValueSet/cz-consent-category"
* text 0..1
* provision.code 0..*
  * ^short = "ICD-10 or Orphacode, etc. in the content"
  * ^binding.valueSet = "https://hl7.cz/fhir/ValueSet/cz-provision-code"
  * ^binding.strength = #extensible


