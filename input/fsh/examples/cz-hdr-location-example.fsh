Instance: Location-5
InstanceOf: CZ_LocationCore
Title: "Sample Czech Location 1"
Description: "Example instance of a location conforming to the CZ_LocationCore profile."
Usage: #example
//* id = "sample-cz-location-5"
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
* physicalType = $locationType#bu

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
* physicalType = $locationType#bu
//add partOf to the main hospital
* partOf = Reference(Location-5)
* partOf.display = "Klinika Chirurgie"

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
* physicalType = $locationType#bu
* partOf = Reference(Location-5)
* partOf.display = "Klinika Chirurgie"

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
* physicalType = $locationType#bu
* partOf = Reference(Location-5)
* partOf.display = "Klinika Chirurgie"

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
* managingOrganization = Reference(Organization-1)
//add telephone contact
* telecom[0].system = #phone
* telecom[0].value = "+420 123 456 789"
* telecom[0].use = #work
* physicalType = $locationType#bu
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
* managingOrganization = Reference(Organization-1)
//add telephone contact
* telecom[0].system = #phone
* telecom[0].value = "+420 123 456 888"
* telecom[0].use = #work
* physicalType = $locationType#bu
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Oddělení CHIR-JIP nemocnice Chrudim</div>" 
* text.status = #generated


//---------------------------------------------------------
Instance: Location-Brno-Hospital
InstanceOf: CZ_LocationCore
Title: "Mestska nemocnice Brno - areal"
Description: "Main hospital location for fictional Brno provider."
Usage: #example
* id = "6c2932f4-fe42-4aea-87b3-182ca2e3670e"
* status = #active
* name = "Mestska nemocnice Brno"
* description = "Hlavni areal Mestske nemocnice Brno"
* managingOrganization = Reference(Organization-Brno-Hospital)
* telecom[0].system = #phone
* telecom[0].value = "+420543111222"
* telecom[0].use = #work
* address
  * use = #work
  * type = #both
  * text = "Kvetna 15, 60200 Brno, Ceska republika"
  * line[0] = "Kvetna 15"
  * city = "Brno"
  * postalCode = "60200"
  * country = "CZ"
* physicalType = $locationType#bu

Instance: Location-Brno-MaternityWard
InstanceOf: CZ_LocationCore
Title: "Porodni oddeleni Brno"
Description: "Maternity ward in the fictional Brno hospital."
Usage: #example
* id = "0f4953dc-59db-4ada-b9b9-3d80ffc5c657"
* status = #active
* name = "Porodni oddeleni"
* description = "Porodni oddeleni - Mestska nemocnice Brno"
* managingOrganization = Reference(Organization-Brno-Maternity)
* partOf = Reference(Location-Brno-Hospital)
* partOf.display = "Mestska nemocnice Brno"
* physicalType = $locationType#wa

Instance: Location-Brno-Maternity-Room3
InstanceOf: CZ_LocationCore
Title: "Porodni oddeleni - pokoj 3"
Description: "Room 3 at maternity ward."
Usage: #example
* id = "dffe5c17-dd39-40d7-9278-9cce85e2daa1"
* status = #active
* name = "Pokoj 3"
* description = "Pokoj 3 na porodni oddeleni"
* managingOrganization = Reference(Organization-Brno-Maternity)
* partOf = Reference(Location-Brno-MaternityWard)
* partOf.display = "Porodni oddeleni"
* physicalType = $locationType#ro

Instance: Location-Brno-Maternity-Room3-Bed01
InstanceOf: CZ_LocationCore
Title: "Porodni oddeleni - pokoj 3 luzko 01"
Description: "Bed 01 in room 3 at maternity ward."
Usage: #example
* id = "c2a20e75-20b6-48cc-b908-1be68597de1b"
* status = #active
* name = "Luzko 01"
* description = "Luzko 01, pokoj 3, porodni oddeleni"
* managingOrganization = Reference(Organization-Brno-Maternity)
* partOf = Reference(Location-Brno-Maternity-Room3)
* partOf.display = "Pokoj 3"
* physicalType = $locationType#bd
