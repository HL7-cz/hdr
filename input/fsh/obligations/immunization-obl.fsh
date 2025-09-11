// TODO: Profile for immunization obligation

Profile: CZ_ImmunizationObligationsHdr
Parent: CZ_ImmunizationHdr
Id: cz-immunization-obl-hdr
Title: "Immunization Recommendation Obligations: HDR CZ"
Description: "Profile for Immunization Recommendation Obligations in the Czech Republic Health Data Repository (HDR CZ)."

* insert SetFmmandStatusRule ( 0, informative)


// Creator Obligations L3 ============>
* vaccineCode insert OblCreator(#SHOULD:able-to-populate,L3)
* occurrence[x] insert OblCreator(#SHOULD:able-to-populate,L3)
