Profile: CZ_OrganizationObligationsHdr
Parent: CZ_OrganizationCore
Id: cz-organization-obl-hdr
Title:    "Organization: Obligations"
Description: "This profile defines obligations for."
// * ^publisher = "HL7 Europe"
// * ^copyright = "HL7 Europe"
* insert SetFmmandStatusRule ( 0, informative)

// Creator Obligations L1 ============>
* identifier insert OblCreator(#SHALL:able-to-populate,L1)
* identifier:KRPZS insert OblCreator(#SHOULD:able-to-populate,L1)
* name insert OblCreator(#SHALL:able-to-populate,L1)
//* contact insert OblCreator(#SHOULD:able-to-populate,L1)
* telecom insert OblCreator(#SHOULD:able-to-populate,L1)
* address insert OblCreator(#SHOULD:able-to-populate,L1)


// Consumer obligations L1
* identifier insert OblConsumer(#SHOULD:display,L1)
* name insert OblConsumer(#SHALL:display,L1)
//* contact insert OblConsumer(#SHALL:display,L1)
* telecom insert OblConsumer(#SHALL:display,L1)
* address insert OblConsumer(#SHOULD:display,L1)



// Creator Obligations L2 ============>
* identifier insert OblCreator(#SHALL:able-to-populate,L2)
* identifier:KRPZS insert OblCreator(#SHOULD:able-to-populate,L2)
* name insert OblCreator(#SHALL:able-to-populate,L2)
* telecom insert OblCreator(#SHOULD:able-to-populate,L2)
* address insert OblCreator(#SHOULD:able-to-populate,L2)
// Consumer obligations L2
* name insert OblConsumer(#SHALL:display,L2)
* identifier insert OblConsumer(#SHOULD:display,L2)
* telecom insert OblConsumer(#SHALL:display,L2)
* address insert OblConsumer(#SHOULD:display,L2)
/*// Creator Obligations L3 ============>
* name insert OblCreator(#SHALL:able-to-populate,L3)
* identifier insert OblCreator(#SHOULD:able-to-populate,L3)
// Consumer obligations L3
* identifier insert OblConsumer(#SHOULD:display,L3)
* name insert OblConsumer(#SHALL:display,L3)*/