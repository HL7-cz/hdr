Instance: Location-2
InstanceOf: CZ_LocationCore
Title: "Sample Czech Location 2"
Description: "Example instance of a location conforming to the CZ_LocationCore profile."
Usage: #example

// TODO Identifikátor ičp / NRZPS (KRZPS)
* id = "sample-cz-location-2"
* status = #active
* name = "Nemocnice Praha - Oddělení A"
* description = "Oddělení A v hlavní nemocnici v Praze"
* managingOrganization = Reference(Organization-1)
//add telephone contact
* telecom[0].system = #phone
* telecom[0].value = "+420 123 456 789"
* telecom[0].use = #work
* address
  * use = #work
  * type = #both
  * text = "Vinohradská 800/14, 120 00 Praha 2, Česká republika"
  * line[0] = "Vinohradská 800/14"
  * city = "Praha"
  * postalCode = "120 00"
  * country = "CZ"
* physicalType = #bu
//add partOf to the main hospital
* partOf = Reference(Location-5)
* partOf.display = "Klinika Chirurgie"
* partOf.reference = "Location-5"
* partOf.type = #location

Instance: Location-3
InstanceOf: CZ_LocationCore
Title: "Sample Czech Location 3"
Description: "Example instance of a location conforming to the CZ_LocationCore profile."
Usage: #example

* id = "sample-cz-location-3"
* status = #active
* name = "Nemocnice Praha - Oddělení B"
* description = "Oddělení B v hlavní nemocnici v Praze"
* managingOrganization = Reference(Organization-1)
* telecom[0].system = #phone
* telecom[0].value = "+420 123 456 789"
* telecom[0].use = #work
* address
  * use = #work
  * type = #both
  * text = "Vinohradská 800/14, 120 00 Praha 2, Česká republika"
  * line[0] = "Vinohradská 800/14"
  * city = "Praha"
  * postalCode = "120 00"
  * country = "CZ"
* physicalType = #bu
* partOf = Reference(Location-5)
* partOf.display = "Klinika Chirurgie"
* partOf.reference = "Location-5"
* partOf.type = #location

Instance: Location-4
InstanceOf: CZ_LocationCore
Title: "Sample Czech Location 4"
Description: "Example instance of a location conforming to the CZ_LocationCore profile."
Usage: #example

* id = "sample-cz-location-4"
* status = #active
* name = "Nemocnice Praha - Oddělení C"
* description = "Oddělení C v hlavní nemocnici v Praze"
* managingOrganization = Reference(Organization-1)
* telecom[0].system = #phone
* telecom[0].value = "+420 123 456 789"
* telecom[0].use = #work
* address
  * use = #work
  * type = #both
  * text = "Vinohradská 800/14, 120 00 Praha 2, Česká republika"
  * line[0] = "Vinohradská 800/14"
  * city = "Praha"
  * postalCode = "120 00"
  * country = "CZ"
* physicalType = #bu
* partOf = Reference(Location-5)
* partOf.display = "Klinika Chirurgie"
* partOf.reference = "Location-5"
* partOf.type = #location

Instance: Location-5
InstanceOf: CZ_LocationCore
Title: "Sample Czech Location 5"
Description: "Example instance of a location conforming to the CZ_LocationCore profile."
Usage: #example
* id = "sample-cz-location-5"
* status = #active
* name = "Nemocnice Praha - Klinika Chirurgie"
* description = "Klinika Chirurgie v hlavní nemocnici v Praze"
* managingOrganization = Reference(Organization-1)
* telecom[0].system = #phone
* telecom[0].value = "+420 123 456 789"
* telecom[0].use = #work
* address
  * use = #work
  * type = #both
  * text = "Vinohradská 800/14, 120 00 Praha 2, Česká republika"
  * line[0] = "Vinohradská 800/14"
  * city = "Praha"
  * postalCode = "120 00"
  * country = "CZ"
* physicalType = #bu

//--------------------------------------------
Instance: Location-Chrudim-Chir1
InstanceOf: CZ_LocationCore
Title: "Sample Czech Location 2"
Description: "Example instance of a location conforming to the CZ_LocationCore profile."
Usage: #example

// TODO Identifikátor ičp / NRZPS (KRZPS)
* id = "cz-Location-Chrudim-Chir1"
* status = #active
* name = "Nemocnice Chrudim - Oddělení CHIR1"
* description = "Oddělení chirurgie 1 v nemocnici v Chrudimi"
* managingOrganization = Reference(CZ_OrganizationCore/Organization-1)
//add telephone contact
* telecom[0].system = #phone
* telecom[0].value = "+420 123 456 789"
* telecom[0].use = #work
* physicalType = #bu
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Oddělení CHIR1 nemocnice Chrudim</div>" 
* text.status = #generated
//---------------------------------------------------------

Instance: Location-Chrudim-ChirJIP
InstanceOf: CZ_LocationCore
Title: "Sample Czech Location 2"
Description: "Example instance of a location conforming to the CZ_LocationCore profile."
Usage: #example

// TODO Identifikátor ičp / NRZPS (KRZPS)
* id = "cz-Location-Chrudim-ChirJIP"
* status = #active
* name = "Nemocnice Chrudim - Oddělení CHIR-JIP"
* description = "Oddělení chirurgie JIP v nemocnici v Chrudimi"
* managingOrganization = Reference(CZ_OrganizationCore/Organization-1)
//add telephone contact
* telecom[0].system = #phone
* telecom[0].value = "+420 123 456 888"
* telecom[0].use = #work
* physicalType = #bu
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Oddělení CHIR-JIP nemocnice Chrudim</div>" 
* text.status = #generated

