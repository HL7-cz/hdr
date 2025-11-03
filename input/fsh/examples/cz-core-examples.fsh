///Taken form CZ Core can be changed in the future

Instance: Mracena2
InstanceOf: CZ_PatientCore
Usage: #example
Description: "Patient, contact information including registering practitioner"

//* contained[+] = RegisteringProviderExample
* identifier[+]
  * system = "https://ncez.mzcr.cz/fhir/sid/rcis"
  * value = "7161264528"
  * use = #official
* identifier[+]
  * system = "https://ncez.mzcr.cz/fhir/sid/rid"
  * value = "4567891235"
* identifier[+]
  * system = "http://hl7.org/fhir/sid/passport-CZE"
  * value = "23476533"
  * use = #official
  * type = $v2-0203#PPN
* identifier[+]
  * system = "http://hl7.org/fhir/sid/passport-SVK"
  * value = "88476522"
  * use = #official
  * type = $v2-0203#PPN

* extension[nationality].extension[code].valueCodeableConcept = urn:iso:std:iso:3166#CZ
* name.use = #usual
* name.family = "Mrakomorová"
* name.given = "Mračena"
* telecom.system = #phone
* telecom.value = "+420603853227"
* telecom.use = #home
* gender = #female
* birthDate = "1971-11-26"
* address[+]
  * use = #home
  * type = #physical
  * text = "Malé náměstí 13a, 150 00, Praha 5"
  * line[+] = "Malé náměstí 13a"
    * extension[streetName].valueString = "Malé náměstí"
    * extension[houseNumber].valueString = "13a"
  * city = "Praha"
  * postalCode = "15000"
  * country = "CZ"

* contact[+].relationship.coding[+] = $v3-RoleCode#MTH "matka"
* contact[=].relationship.coding[+] = $v2-0131#N "Příbuzný"
* contact[=].name[+]
  * use = #usual
  * family = "Mrakomorová"
  * given[+] = "Biologická"
  * given[+] = "Matka"
* contact[=].telecom[+]
  * use = #mobile
  * system = #phone
  * value = "+420604123456"

* contact[+].relationship.coding[+] = $v3-RoleCode#FRND "přítel/přítelkyně"
* contact[=].relationship.coding[+] = $v2-0131#C "Emergentní kontakt"
* contact[=].name.use = #usual
* contact[=].name.family = "Dlouhá"
* contact[=].name.given[0] = "Alena"
* contact[=].telecom.system = #phone
* contact[=].telecom.value = "+420601111111"
* contact[=].telecom.use = #home
* contact[=].address[+].use = #home
* contact[=].address[=].type = #physical
* contact[=].address[=].text = "Horná ulica 18, 123 45, Trenčín, Slovensko"
* contact[=].address[=].line[+] = "Horná ulica 18"
* contact[=].address[=].line[=].extension[streetName].valueString = "Horná ulica"
* contact[=].address[=].line[=].extension[houseNumber].valueString = "18"
* contact[=].address[=].city = "Trenčín"
* contact[=].address[=].postalCode = "12345"
* contact[=].address[=].country = "SK"

* communication[+].language = urn:ietf:bcp:47#cs
* communication[=].preferred = true
* communication[+].language = urn:ietf:bcp:47#en
* communication[+].language = urn:ietf:bcp:47#de

* generalPractitioner.identifier.system = "https://ncez.mzcr.cz/fhir/sid/nrzp"
* generalPractitioner.identifier.value = "123456789"
* generalPractitioner.display = "MUDr. Josef Švejk"

//* extension[registeringProvider][+].extension[value].valueReference = Reference (RegisteringProviderExample)
//* extension[registeringProvider][=].extension[category].valueCodeableConcept = $sct#700232004 "General medical service"
//* extension[registeringProvider][+].extension[value].valueReference = Reference (RegisteringProviderExample)
//* extension[registeringProvider][=].extension[category].valueCodeableConcept = $sct#310060005 "Obstetrics and gynecology service"

Instance: RegisteringProviderExample
InstanceOf: CZ_OrganizationCore
Title: "Organization: Registering healthcare provider example"
Description: "Example of registering healthcare provider"
Usage: #example

* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/ico"
* identifier[=].value = "456789655"
* type[+] = $cz-drzar#320 "Samost. ordinace všeob. prakt. lékaře"
* name = "MUDr. Jana Krásná"
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Samost. ordinace všeob. prakt. lékaře, MUDr. Stanislava Kubšová</div>"
* text.status = #generated


Instance: Organization-1
InstanceOf: CZ_OrganizationCore
Usage: #example
Description: "An example of the organization of a provider"
* id = "ace081ba-e0a8-4b89-a4a7-c5b7cd3c8169"
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/krpzs"
* identifier[=].value = "27520536"
//* type[DRZAR] = $cz-drzar#102 "Nemocnice"
* name = "Nemocnice Chrudim"
* telecom.system = #phone
* telecom.value = "+420603853227"
* telecom.use = #work

* address[+]
  * use = #work
  * type = #both
  * text = "Václavská 570, 537 01, Chrudim"
  * line[+] = "Václavská 570"
  * line[=].extension[streetName].valueString = "Václavská"
  * line[=].extension[houseNumber].valueString = "570"
  * city = "Chrudim"
  * postalCode = "53701"
  * country = "Česká republika"
    * extension[countryCode].valueCoding = urn:iso:std:iso:3166#CZ "Czechia"
//----------------------------------------------------------------------------------------------------------------------------
Instance: Organization-L1
InstanceOf: CZ_OrganizationCore
Usage: #example
Description: "A minimalist example of the organization of a healthcare provider for the purposes of the L1 HDR document. "
* id = "9f7c3d74-2c71-4b92-9a59-2b6f37ecb3d1"
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/krpzs"
* identifier[=].value = "27520561"  //Nemocnice Pardubického kraje, a.s., Chrudimská nemocnice IČ
* name = "Nemocnice Pardubického kraje, a.s., Chrudimská nemocnice"
* telecom.system = #phone
* telecom.value = "+420603853227"
* address[+]
  * use = #work
  * line[+] = "Václavská 570"
  * city = "Chrudim"
  * postalCode = "53701"
  * country = "Česká republika"
    * extension[countryCode].valueCoding = urn:iso:std:iso:3166#CZ "Czechia"

//---------------------------------------------------------------------------------------------------------------
Instance: Organization-L1-Odd
InstanceOf: CZ_OrganizationCore
Usage: #example
Description: "A minimalist example of a subordinate department within a hospital hierarchy for the purposes of the L1 HDR document. "
* id = "af2b3114-e872-43b9-9875-cceb39122f7f"
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/icp"
* identifier[=].value = "12345678"  
* name = "CHIR - Oddělení chirurgie"
* partOf = Reference(urn:uuid:9f7c3d74-2c71-4b92-9a59-2b6f37ecb3d1) "Nemocnice Pardubického kraje, a.s., Chrudimská nemocnice"
* telecom.system = #phone
* telecom.value = "+42060385555"
* address[+]
  * use = #work
  * line[+] = "Václavská 570"
  * city = "Chrudim"
  * postalCode = "53701"
  * country = "Česká republika"
    * extension[countryCode].valueCoding = urn:iso:std:iso:3166#CZ "Czechia"
//---------------------------------------------------------------------------------------------------------------
Instance: Organization-L1-HOSP
InstanceOf: CZ_OrganizationCore
Usage: #example
Description: "A minimalist example of a subordinate department within a hospital hierarchy for the purposes of the L1 HDR document. "
* id = "a4641bd0-34af-4038-a7db-872d08a54df9"
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/icp"
* identifier[=].value = "12345678"  
* name = "CHIR-L2 - Lůžková stanice 2"
* partOf = Reference(urn:uuid:af2b3114-e872-43b9-9875-cceb39122f7f) "Chirurgické oddělení - Nemocnice Pardubického kraje, a.s., Chrudimská nemocnice"
* telecom.system = #phone
* telecom.value = "+42060385111"
* address[+]
  * use = #work
  * line[+] = "Václavská 570"
  * city = "Chrudim"
  * postalCode = "53701"
  * country = "Česká republika"
    * extension[countryCode].valueCoding = urn:iso:std:iso:3166#CZ "Czechia"
//-----------------------------------------------------
Instance: cz-practitionerRole-L1
InstanceOf: CZ_PractitionerRoleCore
Title: "Practitioner Role for L1 documentr"
Description: "Author of HDR document (phisician MUDr.Ivan Anděl)"
Usage: #example
* id = "69d34ceb-b556-4f75-9e4c-9184fe8a10c5"
* specialty = $sct#309343006 "Physician"
* practitioner = Reference(urn:uuid:e234a53a-4e0d-4fb8-9403-e0e324a50f64) // ok
* organization = Reference(urn:uuid:a4641bd0-34af-4038-a7db-872d08a54df9) // ok
//-----------------------------------------------------------------------------------------------------------------
Instance: Practitioner-2
InstanceOf: CZ_PractitionerCore
Usage: #example
Description: "Practitioner id(KRZP)=987654321"
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/krzp"
* identifier[=].value = "987654321"
* name.use = #usual
* name.prefix = "MUDr."
* name.family = "Kašková"
* name.given = "Šárka"
* name.suffix = "PhD"

* gender = #female
* communication[+] = urn:ietf:bcp:47#cs
* communication[+] = urn:ietf:bcp:47#en

Instance: Practitioner-L1
InstanceOf: CZ_PractitionerCore
Usage: #example
Description: "Practitioner id(KRZP)=987645454"
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/krzp"
* identifier[=].value = "987645454"
* name.use = #usual
* name.prefix = "MUDr."
* name.family = "Kašková"
* name.given = "Šárka"
* name.suffix = "PhD"

* telecom.system = #phone
* telecom.value = "+420604853784"
* telecom.use = #work

* address[+]
  * use = #work
  * line[+] = "Dlouhá 22"
  * line[=].extension[streetName].valueString = "Dlouhá"
  * line[=].extension[houseNumber].valueString = "22"
  * city = "Pardubice"
  * postalCode = "53701"
  * country = "Česká republika"
    * extension[countryCode].valueCoding = urn:iso:std:iso:3166#CZ "Czechia"


Instance: Location-1
InstanceOf: CZ_LocationCore
Title: "Example Czech Location"
Description: "Example instance of a location conforming to the CZ_LocationCore profile."
Usage: #example

* id = "example-cz-location"
* status = #active
* name = "Nemocnice Praha"
* description = "Hlavní nemocnice v Praze"
* managingOrganization = Reference(Organization-1)
* address
  * use = #work
  * type = #both
  * text = "Vinohradská 800/14, 120 00 Praha 2, Česká republika"
  * line[0] = "Vinohradská 800/14"
  * city = "Praha"
  * postalCode = "120 00"
  * country = "CZ"
* physicalType = $locationType#bu

Instance: rodnecislo_7161264528
InstanceOf: CZ_Rodcis_Identifier
Usage: #inline
Description: "Birth (registration) number"

* system = "https://ncez.mzcr.cz/fhir/sid/rcis"
* value = "7161264528"
* use = #official

//-----------------------------------------------------
Instance: PractitionerRole1
InstanceOf: CZ_PractitionerRoleCore
Usage: #example
Description: "General practitioner's office"

* id = "practitionerrole1"
* meta.profile[0] = "https://hl7.cz/fhir/core/StructureDefinition/cz-practitionerrole-core"
* meta.versionId = "1"
* meta.lastUpdated = "2019-07-01T13:30:55.864+00:00"
* identifier.system = "http://www.acme.org/practitioners"
* identifier.value = "23"
* active = true
* period.start = "2022-08-01T00:00:00.000Z"
* period.end = "2022-12-31T00:00:00.000Z"
* practitioner = Reference(Practitioner/Practitioner-2) "MUDr. Stanislava Kubšová"
* organization = Reference(Organization/Organization-1) "Ordinace praktického lékaře, MUDr. Stanislava Kubšová"
* code = $nrzp_povolani#L00 "Lékař"
* specialty = $sct#419772000 "Family practice (qualifier value)"
* availableTime[0].daysOfWeek[0] = #mon
* availableTime[=].daysOfWeek[+] = #wed
* availableTime[=].availableStartTime = "12:30:00"
* availableTime[=].availableEndTime = "18:30:00"
* availableTime[=].daysOfWeek[0] = #tue
* availableTime[+].daysOfWeek[+] = #thu
* availableTime[=].daysOfWeek[+] = #fri
* availableTime[=].availableStartTime = "07:00:00"
* availableTime[=].availableEndTime = "13:00:00"
* notAvailable.description = "Plánovaná dovolená"
* notAvailable.during.start = "2023-08-01T00:00:00.000Z"
* notAvailable.during.end = "2023-08-20T00:00:00.000Z"
* availabilityExceptions = "Státní svátky"

//-----------------------------------------------------
Instance: RegisteringProviderExample-gynecology
InstanceOf: CZ_OrganizationCore
Title: "Organization: Registering healthcare provider example"
Description: "Example of registering healthcare provider"
Usage: #example
* id = "RegisteringProviderExample-gynecology"
* meta.profile[0] = "https://hl7.cz/fhir/core/StructureDefinition/cz-organization-core"
* identifier[+].system = $cz-organization-ico
* identifier[=].value = "456789857"
* identifier[+].system = $cz-organization-icz
* identifier[=].value = "12345000"
* identifier[+].system = $cz-organization-icp
* identifier[=].value = "12345678"
* type[+] = $cz-drzar#323 "Samostatná ordinace PL - gynekologa"
* name = "MUDr. Jana Kouzelná"
* telecom.system = #phone
* telecom.value = "+420603853227"
* telecom.use = #work
* address.line = "Krátká 11, 70500 Ostrava"
* address.city = "Ostrava"
* address.postalCode = "70500"
* address.country = "CZ"

//-----------------------------------------------------
Instance: Practitioner-Admitter
InstanceOf: CZ_PractitionerCore
Usage: #example
Description: "Participant Admitter HDR"
* id = "Practitioner-Admitter"
* meta.profile[0] = "https://hl7.cz/fhir/core/StructureDefinition/cz-practitioner-core"
* identifier[+].system = $cz-practitioner-NRZP
* identifier[=].value = "987654321"
//* identifier[+].system = $cz-practitioner-CLK
//* identifier[=].value = "4567891230"
* name.use = #usual
* name.text = "MUDr. Karel Volný"
* telecom[+].system = #phone
* telecom[=].value = "+420603853227"
* telecom[=].use = #work

//------------------------------------------------------
Instance: Practitioner-Referrer
InstanceOf: CZ_PractitionerCore
Usage: #example
Description: "Participant Referrer HDR"

* id = "Practitioner-Referrer"
* meta.profile[0] = "https://hl7.cz/fhir/core/StructureDefinition/cz-practitioner-core"
* identifier[+].system = $cz-practitioner-NRZP
* identifier[=].value = "987654777"
//* identifier[+].system = $cz-practitioner-CLK
//* identifier[=].value = "4567891777"
* name.use = #usual
* name.text = "MUDr. Jiří Zdvořilý"
* telecom[+].system = #phone
* telecom[=].value = "+420603777227"
* telecom[=].use = #work


//-----------------------------------------------------
Instance: Practitioner-Referrer-detail
InstanceOf: CZ_PractitionerRoleCore
Usage: #example
Description: "practitioner's detail"
* id = "Practitioner-Referrer-detail"
* meta.profile[0] = "https://hl7.cz/fhir/core/StructureDefinition/cz-practitionerrole-core"
* practitioner = Reference(Practitioner-Referrer) "MUDr. Jiří Zdvořilý"
* organization = Reference(Organization-Referrer) "Ambulance interního lékařství, MUDr. Jiří Zdvořilý"
* code = $cz-nrzp_povolani#L00 "Lékař"
* specialty = $sct#419192003 "Internal medicine"
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Ambulance interního lékařství, MUDr. Jiří Zdvořilý</div>"
* text.status = #generated

//-----------------------------------------------------
Instance: Patient-Novak-Petr-L1
InstanceOf: CZ_PatientCore
Usage: #example
Description: "Example of patient Petr Novak with identification by czech national identifiers (RID, RCIS), registrating healthcare provider and contact information"

* id = "48a9d440-4194-42c1-87ad-b5a39020a4d0"
//* meta.profile[0] = "https://hl7.cz/fhir/core/StructureDefinition/cz-patient-core"
* identifier[+]
  * system = $cz-patient-rid
  * value = "1597778923"
* name.text = "Ing. Petr Novák, Ph.D."
* name.family = "Novák"
* name.given[0] = "Petr"
* name.given[+] = "Pavel"
* telecom[+].system = #phone
* telecom[=].value = "+420777111222"
* telecom[+].system = #email
* telecom[=].value = "novak@example.com"
* gender = #male
* birthDate = "1985-06-15"
* address[+]
  * use = #home
  //* type = #physical
  * text = "Pavlovova 1424/11, 568 02 Svitavy - Předměstí"
  * line[+] = "Pavlovova 1424/11"
  * city = "Svitavy - Předměstí"
  * postalCode = "56802"
  * country = "Česko"
    * extension[countryCode].valueCoding = urn:iso:std:iso:3166#CZ "Czechia"


//-----------------------------------------------------
Instance: Patient-Novak-Petr
InstanceOf: CZ_PatientCore
Usage: #example
Description: "Example of patient Petr Novak with identification by czech national identifiers (RID, RCIS), registrating healthcare provider and contact information"
/** contained[+] = practitionerrole1
* contained[+] = Practitioner-2
* contained[+] = Organization-1
*/
// Patient details identification
* id = "3f85726c-ad2f-441b-89ce-100000000000"
* meta.profile[0] = "https://hl7.cz/fhir/core/StructureDefinition/cz-patient-core"
* identifier[+]
  * system = $cz-patient-rcis
  * value = "8506150015"
  * use = #official
* identifier[+]
  * system = $cz-patient-rid
  * value = "1597778923"
//Patient citizenship
//* extension[citizenship].extension[code].valueCodeableConcept = urn:iso:std:iso:3166#CZ
//Patient nationality
/** extension[nationality].extension[code].valueCodeableConcept = urn:iso:std:iso:3166#CZ*/
//Patient name, address and contact information
* name.use = #usual
* name.family = "Novák"
* name.given = "Petr"
* name.prefix = "Ing."
* name.suffix = "Ph.D."
* telecom[+].system = #phone
* telecom[=].value = "+420777111222"
* telecom[=].use = #home
* telecom[+].system = #phone
* telecom[=].value = "+420333111777"
* telecom[=].use = #mobile
* telecom[+].system = #email
* telecom[=].value = "novak@example.com"
* telecom[=].use = #home
* address[+]
  * use = #home
  * type = #physical
  * text = "Pavlovova 1424/11, 568 02 Svitavy - Předměstí"
  * line[+] = "Pavlovova 1424/11"
    * extension[streetName].valueString = "Pavlovova"
    * extension[houseNumber].valueString = "1424/11"
  * city = "Svitavy - Předměstí"
  * postalCode = "56802"
  * country = "CZ"
//Patient gender, birthday
* gender = #male
* birthDate = "1985-06-15"
//Contact persons and their details
//guardian -contact person
* contact[+].relationship.coding[+] = $cz-patient-relationship#MTH "Matka"
* contact[=].relationship.coding[+] = $v2-0131#N "příbuzný"
* contact[=].name.use = #usual
* contact[=].name.family = "Nováková"
* contact[=].name.given[0] = "Alena"
* contact[=].telecom.system = #phone
* contact[=].telecom.value = "+420601111111"
* contact[=].telecom.use = #home
* contact[=].address[+].use = #home
* contact[=].address[=].type = #physical
* contact[=].address[=].text = "Krátká 18, 708 00, Ostrava, Česká Republika"
* contact[=].address[=].line[+] = "Krátká 18"
* contact[=].address[=].line[=].extension[streetName].valueString = "Krátká"
* contact[=].address[=].line[=].extension[houseNumber].valueString = "18"
* contact[=].address[=].city = "Ostrava"
* contact[=].address[=].postalCode = "70800"
* contact[=].address[=].country = "CZ"
//contact person
* contact[+].relationship.coding[+] = $cz-patient-relationship#FRND "přítel/přítelkyně"
* contact[=].relationship.coding[+] = $v2-0131#N "příbuzný"
* contact[=].name.use = #usual
* contact[=].name.family = "Dlouhá"
* contact[=].name.given[0] = "Alena"
* contact[=].telecom.system = #phone
* contact[=].telecom.value = "+420601333333"
* contact[=].telecom.use = #home
* contact[=].address[+].use = #home
* contact[=].address[=].type = #physical
* contact[=].address[=].text = "Horná ulica 18, 123 45, Trenčín, Slovensko"
* contact[=].address[=].line[+] = "Horná ulica 18"
* contact[=].address[=].line[=].extension[streetName].valueString = "Horná ulica"
* contact[=].address[=].line[=].extension[houseNumber].valueString = "18"
* contact[=].address[=].city = "Trenčín"
* contact[=].address[=].postalCode = "12345"
* contact[=].address[=].country = "SK"
//Patient communication
* communication[+].language = urn:ietf:bcp:47#cs
* communication[=].preferred = true
* communication[+].language = urn:ietf:bcp:47#en
//Patient general practitioner
//* extension[registeringProvider][+].extension[value].valueReference = Reference (RegisteringProviderExample)
//* extension[registeringProvider][=].extension[category].valueCodeableConcept = $sct#700232004 "General medical service"
/** extension[registeringProvider][+].extension[value].valueReference = Reference (RegisteringProviderExample-gynecology)
* extension[registeringProvider][=].extension[category].valueCodeableConcept = $sct#310060005 "Gynekologické a porodnické služby"*/

//------------------------------------------------------
Instance: Practitioner-Author
InstanceOf: CZ_PractitionerCore
Usage: #example
Description: "Participant Referrer HDR"

* id = "a81e74c9-fe94-4eb1-9233-4c8f0b2d4e3a"
* meta.profile[0] = "https://hl7.cz/fhir/core/StructureDefinition/cz-practitioner-core"
//* identifier[+].system = $cz-practitioner-NRZP
//* identifier[=].value = "151607357"
//* identifier[+].system = $cz-practitioner-CLK
//* identifier[=].value = "4567891777"
* name.use = #usual
* name.text = "MUDr. Ivan Anděl"
* telecom[+].system = #phone
* telecom[=].value = "+420603777227"
* telecom[=].use = #work
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">MUDr. Ivan Anděl, interní lékař, Nemocnice Chrudim, Václavská 570, 537 01 Chrudim, tel: +420 603 777 227</div>"
* text.status = #generated

//------------------------------------------------------
Instance: Practitioner-Author-L1
InstanceOf: CZ_PractitionerCore
Usage: #example
Description: "Author of hospital discharge report for document L1"

* id = "e234a53a-4e0d-4fb8-9403-e0e324a50f64"
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/krzp"
* identifier[=].value = "123456789"
* name.text = "MUDr. Ivan Anděl"
* telecom[+].system = #phone
* telecom[=].value = "+420603777227"

//-----------------------------------------------------
Instance: Practitioner-Author-detail
InstanceOf: CZ_PractitionerRoleCore
Usage: #example
Description: "practitioner's detail"

* id = "2b7e9637-5018-4542-9faf-d5abdee7b849"
* meta.profile[0] = "https://hl7.cz/fhir/core/StructureDefinition/cz-practitionerrole-core"
* practitioner = Reference(urn:uuid:a81e74c9-fe94-4eb1-9233-4c8f0b2d4e3a) "MUDr. Ivan Anděl"
* organization = Reference(urn:uuid:ace081ba-e0a8-4b89-a4a7-c5b7cd3c8169) "Nemocnice Chrudim"
* code = $cz-nrzp_povolani#L00 "Lékař"
* specialty = $sct#419192003 "Internal medicine"
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">MUDr. Ivan Anděl, interní lékař, Nemocnice Chrudim, Václavská 570, 537 01 Chrudim, tel: +420 603 777 227</div>"
* text.status = #generated

//-----------------------------------------------------
Instance: Organization-Referrer
InstanceOf: CZ_OrganizationCore
Title: "Ambulance interního lékařství, MUDr. Jiří Zdvořilý"
Description: "Example of ambulatory physician"
Usage: #example

* id = "Organization-Referrer"
* meta.profile[0] = "https://hl7.cz/fhir/core/StructureDefinition/cz-organization-core"
* identifier[+].system = $cz-organization-ico
* identifier[=].value = "456789811"
* identifier[+].system = $cz-organization-icz
* identifier[=].value = "12345000"
* identifier[+].system = $cz-organization-icp
* identifier[=].value = "12345699"
* type[+] = $cz-drzar#300 "Sdružení ambulantních zařízení"
* name = "Ambulance interního lékařství, MUDr. Jiří Zdvořilý"
* telecom.system = #phone
* telecom.value = "+420603853888"
* telecom.use = #work
* address.line = "Krátká 29, 70500 Ostrava"
* address.city = "Ostrava"
* address.postalCode = "70500"
* address.country = "CZ"
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Ambulance interního lékařství, MUDr. Jiří Zdvořilý, Krátká 29, 70500 Ostrava, tel: +420 603 853 888</div>"
* text.status = #generated

//-----------------------------------------------------
Instance: Practitioner-UZV
InstanceOf: CZ_PractitionerCore
Usage: #example
Description: "Participant UZV HDR"
* id = "860c684f-aba1-40d9-94cf-721d70237b52"
* meta.profile[0] = "https://hl7.cz/fhir/core/StructureDefinition/cz-practitioner-core"
* identifier[+].system = $cz-practitioner-NRZP
* identifier[=].value = "987654322"
//* identifier[+].system = $cz-practitioner-CLK
//* identifier[=].value = "4567891231"
* name.use = #usual
* name.text = "MUDr. Karel Janák"
* telecom[+].system = #phone
* telecom[=].value = "+420603853287"
* telecom[=].use = #work

Instance: signature-L1
InstanceOf: CZ_Provenance
Title: "Signature of image order"
Usage: #example
Description: "Czech national profile on Signature holds an electronic representation of a signature or timestamp and its supporting context in a FHIR accessible form."
* id = "cdae7735-f7ee-4bc7-9cf3-3dc806a4eaab"
* target.identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/ico"
* target.identifier[=].value = "27520536"
* target.display = "Reference(DischargeBundle-Novak-Petr-L1)"
* recorded = "2023-04-05T17:23:07Z"
* agent.role = $v3-ParticipationType#AUT
* agent.who = Reference(Practitioner/Practitioner-2) "MUDr. Hana Doktorová"
* signature.type = urn:iso-astm:E1762-95:2013#1.2.840.10065.1.12.1.1 "Author's Signature"
* signature.when = "2023-04-05T17:23:07Z"
* signature.who.identifier[+].system = "http://example.org/exampleSystem"
* signature.who.identifier[=].value = "MUDr. Hana Doktorová"
* signature.who = Reference(Practitioner/Practitioner-2) "MUDr. Hana Doktorová"
* signature.targetFormat = #application/fhir+xml
* signature.sigFormat = #application/signature+xml
* signature.data = "dGhpcyBibG9iIGlzIHNuaXBwZWQ="

Instance: signature-L3
InstanceOf: CZ_Provenance
Title: "Signature of image order"
Usage: #example
Description: "Czech national profile on Signature holds an electronic representation of a signature or timestamp and its supporting context in a FHIR accessible form."
* id = "cdae7735-f7ee-4bc7-9cf3-3dc806a4eabb"
* target.identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/ico"
* target.identifier[=].value = "27520536"
* target.display = "Reference(DischargeBundle-Novak-Petr)"
* recorded = "2023-04-05T17:23:07Z"
* agent.role = $v3-ParticipationType#AUT
* agent.who = Reference(Practitioner/Practitioner-2) "MUDr. Hana Doktorová"
* signature.type = urn:iso-astm:E1762-95:2013#1.2.840.10065.1.12.1.1 "Author's Signature"
* signature.when = "2023-04-05T17:23:07Z"
* signature.who.identifier[+].system = "http://example.org/exampleSystem"
* signature.who.identifier[=].value = "MUDr. Hana Doktorová"
* signature.who = Reference(Practitioner/Practitioner-2) "MUDr. Hana Doktorová"
* signature.targetFormat = #application/fhir+xml
* signature.sigFormat = #application/signature+xml
* signature.data = "dGhpcyBibG9iIGlzIHNuaXBwZWQ="