
Profile: CZ_AddressObligationsHdr
Parent: CZ_Address
Id: cz-address-obl-hdr
Title:    "Address Obligations (HDR CZ)"
Description: "Obligations for Address in Czech Republic - HDR"

* insert SetFmmandStatusRule ( 0, informative)

// Creator Obligations L1 ============>
* extension[addressPoint] insert OblCreator(#SHOULD:populate-if-known,L1)
* extension[permanentResidence] insert OblCreator(#SHOULD:populate-if-known,L1) 
* use insert OblCreator(#SHALL:able-to-populate,L1)
//* text insert OblCreator(#SHALL:able-to-populate,L1)
* line insert OblCreator(#SHALL:able-to-populate,L1)
* line.value insert OblCreator(#SHALL:able-to-populate,L1)
* city insert OblCreator(#SHALL:able-to-populate,L1)
* postalCode insert OblCreator(#SHALL:able-to-populate,L1)  
* country insert OblCreator(#SHALL:able-to-populate,L1) 
* country.extension[countryCode] insert OblCreator(#SHOULD:able-to-populate,L1) 
* country.value insert OblCreator(#SHALL:able-to-populate,L1)

// Consumer Obligations L1 ===========>
* extension[addressPoint] insert OblConsumer(#SHALL:process,L1)
* extension[permanentResidence] insert OblConsumer(#SHOULD:display,L1)      
* use insert OblConsumer(#SHALL:display,L1) // PRAVIDLO NA POUŽITÍ DOMÁCÍ ADRESY
* line insert OblConsumer(#SHALL:display,L1) 
* line.value insert OblConsumer(#SHALL:display,L1)   
* city insert OblConsumer(#SHALL:display,L1)
* postalCode insert OblConsumer(#SHALL:display,L1)
* country insert OblConsumer(#SHALL:display,L1)
* country.extension[countryCode] insert OblConsumer(#SHALL:display,L1)

// Creator Obligations L2 ============>
* extension[addressPoint] insert OblCreator(#SHALL:populate-if-known,L2)
* extension[permanentResidence] insert OblCreator(#SHOULD:populate-if-known,L2) 
* use insert OblCreator(#SHALL:able-to-populate,L2)
* line insert OblCreator(#SHALL:able-to-populate,L2)
* line.value insert OblCreator(#SHALL:able-to-populate,L2)
* line.extension[streetName] insert OblCreator(#SHALL:able-to-populate,L2)
* line.extension[houseNumber] insert OblCreator(#SHALL:able-to-populate,L2)
* line.extension[postBox] insert OblCreator(#SHALL:able-to-populate,L2)
* city insert OblCreator(#SHALL:able-to-populate,L2)
* postalCode insert OblCreator(#SHALL:able-to-populate,L2)
* country insert OblCreator(#SHALL:able-to-populate,L2) 
* country.extension[countryCode] insert OblCreator(#SHOULD:able-to-populate,L2)  
* country.value insert OblCreator(#SHALL:able-to-populate,L2)

// Consumer Obligations L2 ===========>
//* extension[addressPoint] insert OblConsumer(#SHOULD:display,L2)
* extension[addressPoint] insert OblConsumer(#SHALL:process,L2)
* extension[permanentResidence] insert OblConsumer(#SHOULD:display,L2)
* use insert OblConsumer(#SHALL:display,L2) // PRAVIDLO NA POUŽITÍ DOMÁCÍ ADRESY
* line insert OblConsumer(#SHALL:display,L2)
* line.value insert OblConsumer(#SHALL:display,L2)
* line.extension[streetName] insert OblConsumer(#SHALL:display,L2)
* line.extension[houseNumber] insert OblConsumer(#SHALL:display,L2)
* line.extension[postBox] insert OblConsumer(#SHALL:display,L2)
* city insert OblConsumer(#SHALL:display,L2)
* postalCode insert OblConsumer(#SHALL:display,L2)
* country insert OblConsumer(#SHALL:display,L2)
* country.extension[countryCode] insert OblConsumer(#SHALL:display,L2)

// Creator Obligations L3 ============>
* extension[addressPoint] insert OblCreator(#SHALL:populate-if-known,L3)
* extension[permanentResidence] insert OblCreator(#SHOULD:populate-if-known,L2) 
* use insert OblCreator(#SHALL:able-to-populate,L3)
* line insert OblCreator(#SHALL:able-to-populate,L3)
* line.value insert OblCreator(#SHALL:able-to-populate,L3)
* line.extension[streetName] insert OblCreator(#SHALL:able-to-populate,L3)
* line.extension[houseNumber] insert OblCreator(#SHALL:able-to-populate,L3)
* line.extension[postBox] insert OblCreator(#SHALL:able-to-populate,L3)
* city insert OblCreator(#SHALL:able-to-populate,L3)
* postalCode insert OblCreator(#SHALL:able-to-populate,L3)
* country insert OblCreator(#SHALL:able-to-populate,L3) 
* country.extension[countryCode] insert OblCreator(#SHOULD:able-to-populate,L3)  
* country.value insert OblCreator(#SHALL:able-to-populate,L3)

// Consumer Obligations L3 ===========>
* extension[addressPoint] insert OblConsumer(#SHOULD:display,L3)
* extension[permanentResidence] insert OblConsumer(#SHOULD:display,L3)
* use insert OblConsumer(#SHALL:display,L3) // PRAVIDLO NA POUŽITÍ DOMÁCÍ ADRESY
* line insert OblConsumer(#SHALL:display,L3)
* line.value insert OblConsumer(#SHALL:display,L3)
* line.extension[streetName] insert OblConsumer(#SHALL:display,L2)
* line.extension[houseNumber] insert OblConsumer(#SHALL:display,L2)
* line.extension[postBox] insert OblConsumer(#SHALL:display,L2)
* city insert OblConsumer(#SHALL:display,L3)
* postalCode insert OblConsumer(#SHALL:display,L3)
* country insert OblConsumer(#SHALL:display,L3)
* country.extension[countryCode] insert OblConsumer(#SHALL:display,L3)
