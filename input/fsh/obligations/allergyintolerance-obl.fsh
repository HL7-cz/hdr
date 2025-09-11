// TODO: Profile for alerts obligations

Profile: CZ_AllergyIntoleranceObligationsHdr
Parent: CZ_AllergyIntoleranceHdr
Id: cz-allergyintolerance-obl-hdr
Title:    "Allergy Intolerance Obligations (HDR CZ)"
Description: "This profile defines the obligations for the CZ_AllergyIntoleranceHdr profile used in the HDR CZ project."

* insert SetFmmandStatusRule ( 0, informative)

// Creator Obligations L2 ============>
* text insert OblCreator(#SHALL:able-to-populate,L2)
* code insert OblCreator(#SHOULD:able-to-populate,L2)
* type insert OblCreator(#SHOULD:populate-if-known,L2)
* reaction.manifestation insert OblCreator(#SHOULD:populate-if-known,L2)
* criticality insert OblCreator(#SHOULD:populate-if-known,L2)
* onset[x] insert OblCreator(#SHOULD:populate-if-known,L2)
* extension[abatement] insert OblCreator(#SHOULD:able-to-populate,L2)
* clinicalStatus insert OblCreator(#SHOULD:able-to-populate,L2)
* verificationStatus insert OblCreator(#SHOULD:populate-if-known,L2)
* lastOccurrence insert OblCreator(#SHOULD:populate-if-known,L2)

// Consumer obligations L2
* text insert OblConsumer(#SHALL:display,L2)
* code insert OblConsumer(#SHOULD:display,L2)
* type insert OblConsumer(#SHOULD:display,L2)
* reaction.manifestation insert OblConsumer(#SHOULD:display,L2)
* criticality insert OblConsumer(#SHOULD:display,L2)
* onset[x] insert OblConsumer(#SHOULD:display,L2)
* extension[abatement] insert OblConsumer(#SHOULD:display,L2)
* clinicalStatus insert OblConsumer(#SHOULD:display,L2)
* verificationStatus insert OblConsumer(#SHOULD:display,L2)
* lastOccurrence insert OblConsumer(#SHOULD:display,L2)

// Creator Obligations L3 ============>
* text insert OblCreator(#SHALL:able-to-populate,L3)
* code insert OblCreator(#SHALL:able-to-populate,L3)
* type insert OblCreator(#SHALL:populate-if-known,L3)
* reaction.manifestation insert OblCreator(#SHALL:populate-if-known,L3)
* criticality insert OblCreator(#SHALL:populate-if-known,L3)
* onset[x] insert OblCreator(#SHALL:populate-if-known,L3)
* extension[abatement] insert OblCreator(#SHALL:able-to-populate,L3)
* clinicalStatus insert OblCreator(#SHALL:able-to-populate,L3)
* verificationStatus insert OblCreator(#SHALL:populate-if-known,L3)
* lastOccurrence insert OblCreator(#SHOULD:populate-if-known,L3)

// Consumer obligations L3
* text insert OblConsumer(#SHALL:display,L3)
* code insert OblConsumer(#SHALL:display,L3)
* type insert OblConsumer(#SHALL:display,L3)
* reaction.manifestation insert OblConsumer(#SHALL:display,L3)
* criticality insert OblConsumer(#SHALL:display,L3)
* onset[x] insert OblConsumer(#SHALL:display,L3)
* extension[abatement] insert OblConsumer(#SHALL:display,L3)
* clinicalStatus insert OblConsumer(#SHALL:display,L3)
* verificationStatus insert OblConsumer(#SHALL:display,L3)
* lastOccurrence insert OblConsumer(#SHOULD:display,L3)
