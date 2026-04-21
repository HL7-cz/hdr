ValueSet: CZMethodOfDelivery
Id: cz-method-of-delivery
Title: "CZ Method of Delivery"
Description: "ValueSet for maternal delivery methods in the Czech HDR project."
* ^url = "https://hl7.cz/fhir/hdr/ValueSet/cz-method-of-delivery"
* ^status = #active
* ^version = "1.0.0"
* ^experimental = false
* ^publisher = "HL7 Czech Republic"
* insert SNOMEDCopyrightForVS

* include codes from system $sct where concept descendent-of #236973005
