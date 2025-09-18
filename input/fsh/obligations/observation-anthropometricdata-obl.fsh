Profile: CZ_ObservationAnthropometricDataHdrObligations
Parent: Observation
Id: cz-observation-anthropometricdata-obl-hdr
Title:    "Observations: Anthropometric Data obligations"
Description: "This profile defines obligations for an Anthropometric Data in FHIR for the purpose of this guide."
// * ^publisher = "HL7 Europe"
// * ^copyright = "HL7 Europe"
* insert SetFmmandStatusRule ( 0, informative)

// TEST OBLIGATIONS  ====>
// Creator Obligations L2 ============>
* status insert OblCreator(#SHALL:able-to-populate,L2)
* code insert OblCreator(#SHALL:able-to-populate,L2)
* text insert OblCreator(#SHALL:able-to-populate,L2)
* subject insert OblCreator(#SHALL:able-to-populate,L2)
* effective[x] insert OblCreator(#SHALL:able-to-populate,L2)
* performer insert OblCreator(#SHALL:able-to-populate,L2)
* value[x] insert OblCreator(#SHALL:able-to-populate,L2)

// Consumer obligations L2
* status insert OblConsumer(#SHALL:display,L2)
* code insert OblConsumer(#SHALL:display,L2)
* text insert OblConsumer(#SHALL:display,L2)
* subject insert OblConsumer(#SHALL:display,L2)
* effective[x] insert OblConsumer(#SHALL:display,L2)
* performer insert OblConsumer(#SHALL:display,L2)
* value[x] insert OblConsumer(#SHALL:display,L2)


// Creator Obligations L3 ============>
* status insert OblCreator(#SHALL:able-to-populate,L3)
* code insert OblCreator(#SHALL:able-to-populate,L3)
* text insert OblCreator(#SHALL:able-to-populate,L3)
* subject insert OblCreator(#SHALL:able-to-populate,L3)
* effective[x] insert OblCreator(#SHALL:able-to-populate,L3)
* performer insert OblCreator(#SHALL:able-to-populate,L3)
* value[x] insert OblCreator(#SHALL:able-to-populate,L3)

// Consumer obligations L3
* status insert OblConsumer(#SHALL:display,L3)
* code insert OblConsumer(#SHALL:display,L3)
* text insert OblConsumer(#SHALL:display,L3)
* subject insert OblConsumer(#SHALL:display,L3)
* effective[x] insert OblConsumer(#SHALL:display,L3)
* performer insert OblConsumer(#SHALL:display,L3)
* value[x] insert OblConsumer(#SHALL:display,L3)

