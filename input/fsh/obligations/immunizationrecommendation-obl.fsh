// TODO: Profile for immunizationRecommendation obligation (anaméza)

Profile: CZ_ImmunizationRecommendationObligationsHdr
Parent: CZ_ImmunizationRecommendationHdr
Id: cz-immunizationrecommendation-obl-hdr
Title:   "Immunization Recommendation Obligations (HDR CZ)"
Description: "This profile defines the obligations for the ImmunizationRecommendation resource used in the HDR CZ project."

* insert SetFmmandStatusRule ( 0, informative)


//PatientHistory.medicalHistory.vaccination.nextVaccinationDate (A.2.6.1.4.8 - Next vaccination date)	is related to	ImmunizationRecommendation.recommendation.dateCriterion[nextDose].value
//A.2.6.1.4.8	Datum příští vakcinace	Datum doporučeného přeočkování/podání další dávky


// Obligation není pro tuto položku defionána - v případě potřeby je připraveno

// Creator Obligations L2 ============>
// * recommendation.dateCriterion[nextDose].value insert OblCreator(#SHALL:able-to-populate,L2)


// Consumer obligations L2
// * recommendation.dateCriterion[nextDose].value insert OblConsumer(#SHALL:display,L2)


// Creator Obligations L3 ============>
// * recommendation.dateCriterion[nextDose].value insert OblCreator(#SHALL:able-to-populate,L3)


// Consumer obligations L3
// * recommendation.dateCriterion[nextDose].value insert OblConsumer(#SHALL:display,L3)

