Profile: CZ_CoverageObligationsHdr
Parent: CZ_Coverage
Id: cz-coverage-obl-hdr
Title:    "Coverage: Obligations"
Description: "This profile defines obligations for a coverage in FHIR for the purpose of this guide."

* insert SetFmmandStatusRule ( 0, informative)
// Creator Obligations L2 ============>
* payor insert OblCreator(#SHALL:able-to-populate,L2)
* identifier insert OblCreator(#SHALL:able-to-populate,L2)

// Consumer obligations L2 ===========>
* payor insert OblConsumer(#SHALL:display,L2)
* identifier insert OblConsumer(#SHALL:display,L2)

// Creator Obligations L3 ============>
* payor insert OblCreator(#SHALL:able-to-populate,L3)
* identifier insert OblCreator(#SHALL:able-to-populate,L3)

// Consumer obligations L3 ===========>
* payor insert OblConsumer(#SHALL:display,L3)
* identifier insert OblConsumer(#SHALL:display,L3)