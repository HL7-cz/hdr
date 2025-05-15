Instance: CZ-Condition-HDR-Example
InstanceOf: CZ_ConditionHdr
Usage: #example
Title: "CZ-Condition-HDR Example"
Description: "Czech HDR - example of a condition (Heart Failure)"

* clinicalStatus = #active
* verificationStatus = #confirmed
* category[0] = $condition-category#encounter-diagnosis "Encounter Diagnosis"
* severity = $sct#24484000 "Severe"
* code = $icd10#I50 "Heart failure"
* subject = Reference(Mracena2)
* onsetDateTime = "2025-01-01T08:00:00+01:00"
* note.text = "Patient diagnosed with heart failure during hospital stay."
* category[1] = $sct#278307001 "On admission"
* category[2] = $sct#25265005 "Not received therapy or drug for"


// Condition note
* note[0].text = "Patient diagnosed with heart failure during hospital stay."

Instance: CZ-Condition-HDR-Example-2
InstanceOf: CZ_ConditionHdr
Usage: #example
Title: "CZ-Condition-HDR Example 2"
Description: "Czech HDR - example of a condition (Cardiac arrhythmia - Brugada Syndrome)"

* clinicalStatus = #active
* verificationStatus = #confirmed
* category[0] = $sct#64572001 "Disease"
* severity = $sct#6736007 "Moderate"
* code = urn:oid:1.2.203.24341.11.2.1#I498 "Jiné určené srdeční arytmie"
* subject = Reference(Mracena2)
* onsetDateTime = "2013-01-09T00:00:00+01:00"
* note.text = "Brugada Syndrom diagnostikován v roce 2013."
* category[1] = $sct#278307001 "On admission"
* category[2] = $sct#25265005 "Not received therapy or drug for"

Instance: CZ-Condition-HDR-Example-3
InstanceOf: CZ_ConditionHdr
Usage: #example
Title: "CZ-Condition-HDR Example 3"
Description: "Czech HDR - example of a condition (Postoperative Hypothyroidism)"

* clinicalStatus = #active
* verificationStatus = #confirmed
* category[0] = $sct#64572001 "Disease"
* code = urn:oid:1.2.203.24341.11.2.1#E890 "Hypotyreóza po operačních a jiných výkonech"
* subject = Reference(Mracena2)
* onsetDateTime = "1997-10-06T00:00:00+02:00"
* note.text = "Hypotyreóza po operaci karcinomu štítné žlázy. Zadáno všeobecným lékařem."
* category[1] = $sct#278307001 "On admission"
* category[2] = $sct#25265005 "Not received therapy or drug for"
