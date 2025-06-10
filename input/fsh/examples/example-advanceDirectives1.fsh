Instance: CZ-AdvanceDirectives-HDR-DNR
InstanceOf: CZ_ConsentHdr
Usage: #example
Title: "AdvanceDirectives  DNR"
Description: "Czech hdr - example od advance directive"
* dateTime = "2025-01-01T08:00:00+01:00"
* category.coding[0].system = $consent-category
* category.coding[0].code = #dnr
* category.coding[0].display = "Do Not Resuscitate"
* scope.coding[0].system = $consentscope
* scope.coding[0].code = #adr
* scope.coding[0].display = "Advance Directive"
* text.status = #generated
* text.div = """
<div>
  <p>Podepsané prohlášení DNR</p>
  <p>Platné od 1.3.2025</p>
</div>
"""
* provision.type = #permit
* provision.code[0].coding[0].system = $icd10
* provision.code[0].coding[0].code = #I50
* provision.code[0].coding[0].display = "Heart failure"
* provision.code[1].coding[0].system = $orpha
* provision.code[1].coding[0].code = #ORPHA330
* provision.code[1].coding[0].display = "NYHA class IV"
* status = #active
* patient = Reference(Patient-Novak-Petr)

