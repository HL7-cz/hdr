Profile: CZ_AllergyIntoleranceHdr
Parent: cz-allergyIntolerance
Id: cz-allergyIntolerance-hdr
Title: "Allergy Intolerance (HDR CZ)"
Description: """This profile constrains the AllergyIntolerance resource for the purpose of this project."""
* ^purpose = "This profile constrains the AllergyIntolerance resource for the purpose of project."

* insert ImposeProfile($AllergyIntolerance-uv-ips, 0)

* code 1..1
