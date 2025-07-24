Instance: actor-creator-hdr
InstanceOf: ActorDefinition
Title: "Actor HDR Creator"
Description: """HDR Creator: a system generating and sending/providing a HDR to a Consumer for report storage and sharing."""
Usage: #example

* url = "http://hl7.cz/fhir/hdr/actor-creator-hdr"
* name = "HdrCreator"
* status = #active
* type = #system
// * type = #entity
* documentation = """This actor represents the HDR creators. That is the actor creating the report that can be sent to a consumer for report storage and sharing."""

Instance: actor-consumer-hdr
InstanceOf: ActorDefinition
Title: "Actor HDR Consumer"
Description: """HDR Consumer: a system receiving/querying and using a HDR."""
Usage: #example

* url = "http://hl7.cz/fhir/hdr/actor-consumer-hdr"
* name = "HdrConsumer"
* status = #active
* type = #system
// * type = #entity
* documentation = """This actor represents the HDR consumers. That is the system using the report received or retrieved.
Using includes, but is not limited to, the report display, storage or processing."""