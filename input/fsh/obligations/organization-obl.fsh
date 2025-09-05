Profile: CZ_OrganizationObligationsHdr
Parent: CZ_OrganizationCore
Id: cz-organization-obl-hdr
Title:    "Organization: Obligations"
Description: "This profile defines obligations for."
// * ^publisher = "HL7 Europe"
// * ^copyright = "HL7 Europe"
* insert SetFmmandStatusRule ( 0, informative)

// Creator Obligations L1 ============>
* name insert OblCreator(#SHALL:able-to-populate,L1)


// Consumer obligations L1
* name insert OblConsumer(#SHALL:display,L1)