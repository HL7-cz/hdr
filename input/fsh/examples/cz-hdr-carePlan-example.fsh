Instance: CZ-CarePlan-HDR-Example
InstanceOf: CarePlan
Usage: #example
Title: "CZ-CarePlan-HDR Example"
Description: "Czech HDR - example of a care plan"

// Care plan details
* status = #active
* intent = #plan
* title = "Post-Discharge Care Plan"
* addresses = Reference(CZ-Condition-HDR-Example)
* description = "Care plan for patient post-discharge following critical heart failure treatment."
* period.start = "2025-01-10T08:00:00+01:00"
* period.end = "2025-06-10T08:00:00+01:00"
* subject = Reference(Mracena2)

// Activity details
* activity.detail.kind = #Appointment
* activity.detail.description = "Follow-up appointment with cardiologist"
* activity.detail.status = #scheduled
// TBD Udělat po procedůře
//* activity.reference = Reference(CZ-Procedure-HDR-Example)

//----------------------------------------
Instance: CarePlan-Novak
InstanceOf: CarePlan
Usage: #example
Title: "CarePlan-Novak-Petr"
Description: "Czech HDR - example of a care plan"
* id = "CarePlan-Novak-Petr"
// Care plan details
* status = #active    //http://hl7.org/fhir/ValueSet/request-status
* intent = #plan    //http://hl7.org/fhir/ValueSet/care-plan-intent
//název
* title = "Plán péče – tříselná kýla"
//řeší (DG)
* addresses = Reference(Condition-K409)
//popis doporučení
* description = "Plán péče zaměřený na chirurgické řešení jednostranné tříselné kýly (K40.9) u stabilního pacienta. Péče zahrnuje pooperační sledování, edukaci o režimu a následnou ambulantní kontrolu."
* period.start = "2025-03-10T08:00:00+01:00"
* subject = Reference(Patient-Novak-Petr)
//další podrobnosti plánu, cíle
* goal = Reference(Goal-hernia-treatment)
// Activity detail
* activity[+].detail.kind = #ServiceRequest
* activity[=].detail.description = "Pooperační sledování, převazy, kontrola rány"
* activity[=].detail.status = #scheduled
* activity[+].detail.kind = #CommunicationRequest
* activity[=].detail.description = "Edukace pacienta o režimu po operaci"
* activity[=].detail.status = #scheduled
* activity[+].detail.kind = #Appointment
* activity[=].detail.description = "Ambulantní kontrola za 14 dní"
* activity[=].detail.status = #scheduled

