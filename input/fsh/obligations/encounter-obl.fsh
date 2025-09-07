Profile: CZ_EncounterObligationsHdr
Parent: CZ_EncounterHdr
Id: cz-encounter-obl-hdr
Title:    "Encounter: Obligations"
Description: "This profile defines obligations for an Encounter in FHIR for the purpose of this guide."
// * ^publisher = "HL7 Europe"
// * ^copyright = "HL7 Europe"
* insert SetFmmandStatusRule ( 0, informative)

//L1 Creator Obligations L1 ============>
* class insert OblCreator(#SHALL:able-to-populate,L1)
* period.start insert OblCreator(#SHALL:able-to-populate,L1)
* period.end insert OblCreator(#SHALL:able-to-populate,L1)

//L1 Consumer obligations L1 ============>
* class insert OblConsumer(#SHALL:display,L1)
* period.start insert OblConsumer(#SHALL:display,L1)
* period.end insert OblConsumer(#SHALL:display,L1)

//L2 Creator Obligations L2 ============>
* class insert OblCreator(#SHALL:able-to-populate,L2)
* period.start insert OblCreator(#SHALL:able-to-populate,L2)
* period.end insert OblCreator(#SHALL:able-to-populate,L2)
//* extension[note] insert OblCreator(#SHOULD:populate-if-known,L2) - není mapováno
* reasonCode.text insert OblCreator(#SHOULD:populate-if-known,L2)

//L2 Consumer obligations L2 ============>
* class insert OblConsumer(#SHALL:display,L2)
* period.start insert OblConsumer(#SHALL:display,L2)
* period.end insert OblConsumer(#SHALL:display,L2)
//* extension[note] insert OblConsumer(#SHOULD:display,L2)
* reasonCode.text insert OblConsumer(#SHOULD:display,L2)
