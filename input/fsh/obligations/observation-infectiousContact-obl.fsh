Profile: CZ_ObservationInfectiousContactHdrObligations
Parent: Observation
Id: cz-observation-ic-obl-hdr
Title:    "Observations: Infectious Contact obligations"
Description: "This profile defines obligations for an Infectious Contact in FHIR for the purpose of this guide."
// * ^publisher = "HL7 Europe"
// * ^copyright = "HL7 Europe"
* insert SetFmmandStatusRule ( 0, informative)

// TEST OBLIGATIONS  ====>
// Creator Obligations L2 ============>
* status insert OblCreator(#SHOULD:populate-if-known,L2)
* code insert OblCreator(#SHOULD:populate-if-known,L2)
* text insert OblCreator(#SHOULD:populate-if-known,L2)
* subject insert OblCreator(#SHOULD:able-to-populate,L2)
* effective[x] insert OblCreator(#SHOULD:populate-if-known,L2)
* performer insert OblCreator(#SHOULD:able-to-populate,L2)
* value[x] insert OblCreator(#SHOULD:populate-if-known,L2)

// Consumer obligations L2
* status insert OblConsumer(#SHOULD:display,L2)
* code insert OblConsumer(#SHOULD:display,L2)
* text insert OblConsumer(#SHOULD:display,L2)
* subject insert OblConsumer(#SHOULD:display,L2)
* effective[x] insert OblConsumer(#SHOULD:display,L2)
* performer insert OblConsumer(#SHOULD:display,L2)
* value[x] insert OblConsumer(#SHOULD:display,L2)


// Creator Obligations L3 ============>
* status insert OblCreator(#SHOULD:populate-if-known,L3)
* code insert OblCreator(#SHOULD:populate-if-known,L3)
* text insert OblCreator(#SHOULD:populate-if-known,L3)
* subject insert OblCreator(#SHOULD:able-to-populate,L3)
* effective[x] insert OblCreator(#SHOULD:populate-if-known,L3)
* performer insert OblCreator(#SHOULD:able-to-populate,L3)
* value[x] insert OblCreator(#SHOULD:populate-if-known,L3)

// Consumer obligations L3
* status insert OblConsumer(#SHOULD:display,L3)
* code insert OblConsumer(#SHOULD:display,L3)
* text insert OblConsumer(#SHOULD:display,L3)
* subject insert OblConsumer(#SHOULD:display,L3)
* effective[x] insert OblConsumer(#SHOULD:display,L3)
* performer insert OblConsumer(#SHOULD:display,L3)
* value[x] insert OblConsumer(#SHOULD:display,L3)

