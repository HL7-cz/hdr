Instance: Flag1
InstanceOf: CZ_FlagHdr
Usage: #example
Title: "Cardiac Arrest Flag"
Description: "A flag indicating that the patient has a history of cardiac arrest."

* status = #active
* code.coding[0].system = $icd10
* code.coding[0].code = #I46.9
* code.coding[0].display = "Cardiac arrest, unspecified"
* code.text = "History of cardiac arrest"
* period.start = "2023-10-01"
* subject = Reference(Mracena)

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Flag indicating a history of cardiac arrest from 2023-10-01.</div>"
* author = Reference(Sova)



// Flag.author

// Flag.extension:flagPriorityExt

Instance: Sova
InstanceOf: CZ_PractitionerCore
Usage: #example
Description: "Practitioner"
* name.use = #usual
* name.prefix = "MUDr."
* name.family = "Karel"
* name.given = "Sova"
* name.suffix = "PhD."