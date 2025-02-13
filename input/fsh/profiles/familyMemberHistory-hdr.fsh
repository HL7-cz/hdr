Profile: CZ_FamilyMemberHistoryHdr
Parent: FamilyMemberHistory
Id: czh-familyMemberHistory-hdr
Title: "FamilyMemberHistory (HDR CZ)"
Description: "This profile represents the constraints applied to the FamilyMemberHistory resource by this guide."


// * status ^short = "Status of the family history record"
* dataAbsentReason ^short = "Reason for missing data"
* patient 1..1 
* patient only Reference(CZ_PatientCore)

* relationship ^short = "Relationship to the subject."

* bornDate ^short = "Date of birth of the relative"

* deceasedAge ^short = "(Approximate) age at death of the relative"
* deceasedDate ^short = "Date of death of the relative"

* condition
  * code 1..1 
  * code only $CodeableConcept-uv-ips
  * code from ConditionHdrVS (preferred)
  * note ^short = "Extra information about this condition"