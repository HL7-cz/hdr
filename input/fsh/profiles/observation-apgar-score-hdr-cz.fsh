Profile: CZ_ObservationApgarScore
Parent: Observation
Id: cz-observation-apgar-score
Title: "Observation: APGAR Score (CZ)"
Description: "Profile for recording a single APGAR score observation for a newborn at a defined postnatal time point."

* ^experimental = false
* obeys apgar-0-10

* status = #final
* status ^short = "Final APGAR score observation"

* code 1..1
* code ^short = "LOINC code for APGAR score at a specific minute"

* subject 1..1
* subject only Reference(CZ_PatientCore)
* subject ^short = "The newborn"

* effective[x] 1..1
* effective[x] only dateTime
* effectiveDateTime ^short = "Date and time of APGAR assessment"

* value[x] 1..1
* value[x] only integer
* valueInteger ^short = "APGAR score from 0 to 10"

Profile: CZ_ObservationApgarScore1Min
Parent: CZ_ObservationApgarScore
Id: cz-observation-apgar-score-1min
Title: "Observation: APGAR Score at 1 Minute (CZ)"
Description: "APGAR score of the newborn assessed at 1 minute after birth."

* code = $loinc#9272-6 "Apgar score 1 minute"
* code ^short = "LOINC: APGAR score at 1 minute"

Profile: CZ_ObservationApgarScore5Min
Parent: CZ_ObservationApgarScore
Id: cz-observation-apgar-score-5min
Title: "Observation: APGAR Score at 5 Minutes (CZ)"
Description: "APGAR score of the newborn assessed at 5 minutes after birth."

* code = $loinc#9274-2 "Apgar score 5 minute"
* code ^short = "LOINC: APGAR score at 5 minutes"

Profile: CZ_ObservationApgarScore10Min
Parent: CZ_ObservationApgarScore
Id: cz-observation-apgar-score-10min
Title: "Observation: APGAR Score at 10 Minutes (CZ)"
Description: "APGAR score of the newborn assessed at 10 minutes after birth."

* code = $loinc#9271-8 "Apgar score 10 minute"
* code ^short = "LOINC: APGAR score at 10 minutes"

Invariant: apgar-0-10
Description: "APGAR score must be an integer from 0 to 10."
Severity: #error
Expression: "valueInteger >= 0 and valueInteger <= 10"
