// TODO: Profile for consent obligation

Profile: CZ_ConsentObligationsHdr
Parent: CZ_ConsentHdr
Id: cz-consent-obl-hdr
Title:    "Consent Obligations (HDR CZ)"
Description: "This profile defines the obligations for the CZ_ConsentHdr profile used in the HDR CZ project."

* insert SetFmmandStatusRule ( 0, informative)

// Creator Obligations L2 ============>
* text insert OblCreator(#SHOULD:populate-if-known,L2)

// Consumer obligations L2
* text insert OblConsumer(#SHOULD:display,L2)

// Creator Obligations L3 ============>
* text insert OblCreator(#SHALL:populate-if-known,L3)

// Consumer obligations L3
* dateTime insert OblConsumer(#SHALL:display,L3)
* category insert OblConsumer(#SHALL:display,L3)
* text insert OblConsumer(#SHALL:display,L3)
* scope insert OblConsumer(#SHALL:display,L3)
* verification.verified insert OblConsumer(#SHALL:Display,L3)
* verification.verifiedWith insert OblConsumer(#SHALL:Display,L3)