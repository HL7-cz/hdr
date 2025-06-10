///Taken form CZ Core can be changed in the future

Instance: Mracena2
InstanceOf: CZ_PatientCore
Usage: #example
Description: "Patient, contact information and practitioner"

* contained[+] = RegisteringProviderExample
* identifier[+]
  * system = "https://ncez.mzcr.cz/fhir/sid/rcis"
  * value = "7161264528"
  * use = #official
* identifier[+]
  * system = "https://ncez.mzcr.cz/fhir/sid/rid"
  * value = "456789123"
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
* telecom.value = "+420 603 853 227"
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
* contact[=].name.use = #usual
* contact[=].name.family = "Mrakomorová"
* contact[=].name.given[+] = "Biologická"
* contact[=].name.given[+] = "Matka"
* contact[=].telecom[+].use = #mobile
* contact[=].telecom[=].system = #phone
* contact[=].telecom[=].value = "+420 604 123 456"

* contact[+].relationship.coding[+] = $v3-RoleCode#FRND "přítel/přítelkyně"
* contact[=].relationship.coding[+] = $v2-0131#C "Emergentní kontakt"
* contact[=].name.use = #usual
* contact[=].name.family = "Dlouhá"
* contact[=].name.given[0] = "Alena"
* contact[=].telecom.system = #phone
* contact[=].telecom.value = "+420 601 111 111"
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

* extension[registeringProvider][+].extension[value].valueReference = Reference (RegisteringProviderExample)
* extension[registeringProvider][=].extension[category].valueCodeableConcept = $sct#700232004 "Všeobecné lékařské služby"
* extension[registeringProvider][+].extension[value].valueReference = Reference (RegisteringProviderExample)
* extension[registeringProvider][=].extension[category].valueCodeableConcept = $sct#310060005 "Gynekologické a porodnické služby"

Instance: RegisteringProviderExample
InstanceOf: CZ_OrganizationCore
Title: "Organization: Registering healthcare provider example"
Description: "Example of registering healthcare provider"
Usage: #inline

* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/ico"
* identifier[=].value = "456789655"
* type[+] = $cz-drzar#320 "Samost. ordinace všeob. prakt. lékaře"
* name = "MUDr. Stanislava Kubšová"
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Samost. ordinace všeob. prakt. lékaře, MUDr. Stanislava Kubšová</div>"
* text.status = #generated  


Instance: Organization-1
InstanceOf: CZ_OrganizationCore
Usage: #example
Description: "An example of the organization of a provider"
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/ico"
* identifier[=].value = "27520536"
* type[DRZAR] = $cz-drzar#102 "Nemocnice"
* name = "Nemocnice Chrudim"
* telecom.system = #phone
* telecom.value = "+420 603 853 227"
* telecom.use = #work

* address[+].use = #work
* address[=].type = #both
* address[=].text = "Václavská 570, 537 01, Chrudim"
* address[=].line[+] = "Václavská 570"
* address[=].line[=].extension[streetName].valueString = "Václavská"
* address[=].line[=].extension[houseNumber].valueString = "570"
* address[=].city = "Chrudim"
* address[=].postalCode = "53701"
* address[=].country = "CZ"


Instance: Practitioner-2
InstanceOf: CZ_PractitionerCore
Usage: #example
Description: "Practitioner id(NRZP)=987654321"
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/nrzp"
* identifier[=].value = "987654321"
//* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/clk"
//* identifier[=].value = "4567891230"
* name.use = #usual
* name.prefix = "MUDr."
* name.family = "Kubšová"
* name.given = "Stanislava"

* gender = #female
* communication[+] = urn:ietf:bcp:47#cs
* communication[+] = urn:ietf:bcp:47#en

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
* physicalType = #bu

Instance: rodnecislo_7161264528
InstanceOf: CZ_Rodcis_Identifier
Usage: #inline
Description: "Birth (registration) number"

* system = "https://ncez.mzcr.cz/fhir/sid/rcis"
* value = "7161264528"
* use = #official

//----------------------------------------------------------------------------------------
Instance: Device-Pacemaker
InstanceOf: CZ_MedicalDevice
Usage: #example
Description: "Heart pacemaker Medtronic W1DR01"
* id = "Device-Pacemaker"
* meta.profile[0] = "https://hl7.cz/fhir/core/StructureDefinition/cz-medical-device"
* manufacturer = "Medtronic"
* modelNumber = "W1DR01"
* type = $sct#14106009 "Kardiostimulátor"
* patient = Reference(Patient/Mracena) "Pokusný pacient Mračena"

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
* specialty = $sct#419772000 "Rodinná praxe"
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
* telecom.value = "+420 603 853 227"
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
* telecom[=].value = "+420 603 853 227"
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
* telecom[=].value = "+420 603 777 227"
* telecom[=].use = #work


//-----------------------------------------------------
Instance: Practitioner-Referrer-detail
InstanceOf: CZ_PractitionerRoleCore
Usage: #example
Description: "practitioner's detail"
* id = "Practitioner-Referrer-detail"
* meta.profile[0] = "https://hl7.cz/fhir/core/StructureDefinition/cz-practitionerrole-core"
* practitioner = Reference(CZ_PractitionerCore/Practitioner-Referrer) "MUDr. Jiří Zdvořilý"
* organization = Reference(CZ_OrganizationCore/Organization-Referrer) "Ambulance interního lékařství, MUDr. Jiří Zdvořilý"
* code = $cz-nrzp_povolani#L00 "Lékař"
* specialty = $sct#419192003 "Interní lékařství"
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Ambulance interního lékařství, MUDr. Jiří Zdvořilý</div>"
* text.status = #generated  

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
* id = "Novak-Petr"
* meta.profile[0] = "https://hl7.cz/fhir/core/StructureDefinition/cz-patient-core"
* identifier[+]
  * system = $cz-patient-rcis
  * value = "8506150015"
  * use = #official
* identifier[+]
  * system = $cz-patient-rid
  * value = "1597778923"
//Patient citizenship
* extension[citizenship].extension[code].valueCodeableConcept = urn:iso:std:iso:3166#CZ
//Patient nationality
/** extension[nationality].extension[code].valueCodeableConcept = urn:iso:std:iso:3166#CZ*/
//Patient name, address and contact information
* name.use = #usual
* name.family = "Novák"
* name.given = "Petr"
* name.prefix = "Ing."
* name.suffix = "Ph.D."
* telecom[+].system = #phone
* telecom[=].value = "+420 777 111 222"
* telecom[=].use = #home
* telecom[+].system = #phone
* telecom[=].value = "+420 333 111 777"
* telecom[=].use = #mobile
* telecom[+].system = #email   
* telecom[=].value = "novak@example.com"
* telecom[=].use = #home
* address[+]
  * use = #home
  * type = #physical
  * text = "Pavlovova 1424/11, 568 02 Svitavy - Předměstí "
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
* contact[=].relationship.coding[+] = $v2-0131#N "Kontaktní osoba"
* contact[=].name.use = #usual
* contact[=].name.family = "Nováková"
* contact[=].name.given[0] = "Alena"
* contact[=].telecom.system = #phone
* contact[=].telecom.value = "+420 601 111 111"
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
* contact[=].relationship.coding[+] = $v2-0131#N "Kontaktní osoba"
* contact[=].name.use = #usual
* contact[=].name.family = "Dlouhá"
* contact[=].name.given[0] = "Alena"
* contact[=].telecom.system = #phone
* contact[=].telecom.value = "+420 601 333 333"
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
* extension[registeringProvider][+].extension[value].valueReference = Reference (RegisteringProviderExample)
* extension[registeringProvider][=].extension[category].valueCodeableConcept = $sct#700232004 "Všeobecné lékařské služby"
/** extension[registeringProvider][+].extension[value].valueReference = Reference (RegisteringProviderExample-gynecology)
* extension[registeringProvider][=].extension[category].valueCodeableConcept = $sct#310060005 "Gynekologické a porodnické služby"*/

//------------------------------------------------------
Instance: Practitioner-Author
InstanceOf: CZ_PractitionerCore
Usage: #example
Description: "Participant Referrer HDR"

* id = "Practitioner-Author"
* meta.profile[0] = "https://hl7.cz/fhir/core/StructureDefinition/cz-practitioner-core"
* identifier[+].system = $cz-practitioner-NRZP
* identifier[=].value = "151607357"
//* identifier[+].system = $cz-practitioner-CLK
//* identifier[=].value = "4567891777"
* name.use = #usual
* name.text = "MUDr. Ivan Anděl"
* telecom[+].system = #phone
* telecom[=].value = "+420 603 777 227"
* telecom[=].use = #work
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">MUDr. Ivan Anděl, interní lékař, Nemocnice Chrudim, Václavská 570, 537 01 Chrudim, tel: +420 603 777 227</div>"
* text.status = #generated

//-----------------------------------------------------
Instance: Practitioner-Author-detail
InstanceOf: CZ_PractitionerRoleCore
Usage: #example
Description: "practitioner's detail"

* id = "Practitioner-Author-detail"
* meta.profile[0] = "https://hl7.cz/fhir/core/StructureDefinition/cz-practitionerrole-core"
* practitioner = Reference(CZ_PractitionerCore/Practitioner-Author) "MUDr. Ivan Anděl"
* organization = Reference(CZ_OrganizationCore/Organization-1) "Nemocnice Chrudim"
* code = $cz-nrzp_povolani#L00 "Lékař"
* specialty = $sct#419192003 "Interní lékařství"
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">MUDr. Ivan Anděl, interní lékař, Nemocnice Chrudim, Václavská 570, 537 01 Chrudim, tel: +420 603 777 227</div>"
* text.status = #generated

//-----------------------------------------------------
Instance: Organization-Referrer
InstanceOf: CZ_OrganizationCore
Title: "Ambulance interního lékařství, MUDr. Jiří Zdvořilý"
Description: "Example of ambulatory physician"
Usage: #inline

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
* telecom.value = "+420 603 853 888"
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
* id = "Practitioner-UZV"
* meta.profile[0] = "https://hl7.cz/fhir/core/StructureDefinition/cz-practitioner-core"
* identifier[+].system = $cz-practitioner-NRZP
* identifier[=].value = "987654322"
//* identifier[+].system = $cz-practitioner-CLK 
//* identifier[=].value = "4567891231"
* name.use = #usual
* name.text = "MUDr. Karel Janák"
* telecom[+].system = #phone
* telecom[=].value = "+420 603 853 287"
* telecom[=].use = #work

//-----------------------------------------------------
Instance: Vseobecna-Zdravotni-Pojistovna
InstanceOf: CZ_OrganizationCore
Usage: #example
Description: "Example of health insurance company Všeobecná zdravotní pojišťovna"
* id = "Vseobecna-Zdravotni-Pojistovna"
* meta.profile[0] = "https://hl7.cz/fhir/core/StructureDefinition/cz-organization-core"
* identifier[KP].system = $cz-OrganizationCore-system-ZP 
* identifier[KP].value = "111"

//-----------------------------------------------------
Instance: Pojisteni-Novak-Petr
InstanceOf: CZ_Coverage
Usage: #example
Description: "Example of insurance coverage for patient Petr Novak"
* id = "Pojisteni-Novak-Petr"
* meta.profile[0] = "https://hl7.cz/fhir/core/StructureDefinition/cz-coverage"
* status = #active
* payor[+].reference = "CZ_OrganizationCore/Vseobecna-Zdravotni-Pojistovna"
* payor[=].display = "Všeobecná zdravotní pojišťovna"
* beneficiary = Reference(CZ_PatientCore/Patient-Novak-Petr) "Petr Novak"
