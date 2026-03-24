
Profile: CZ_CompositionObligationsHdr
Parent: CZ_CompositionHdr
Id: cz-composition-obl-hdr
Title:    "Composition: Obligations"
Description: "This profile defines obligations for a composition in FHIR for the purpose of this guide."
// * ^publisher = "HL7 Europe"
// * ^copyright = "HL7 Europe"
* insert SetFmmandStatusRule ( 0, informative)

//L1 Creator Obligations L1 ============>
//* meta insert OblCreator(#SHALL:able-to-populate,L1)
* language insert OblCreator(#SHALL:able-to-populate,L1)
//* identifier insert OblCreator(#SHALL:able-to-populate,L1)
//* extension[information-recipient] insert OblCreator(#SHOULD:able-to-populate,L1)
// * status insert OblCreator(#SHALL:able-to-populate,L1)
* type insert OblCreator(#SHALL:able-to-populate,L1)
* category insert OblCreator(#SHALL:able-to-populate,L1)
// * subject insert OblCreator(#SHALL:able-to-populate,L1)
// * encounter insert OblCreator(#SHALL:able-to-populate,L1)
// * date insert OblCreator(#SHALL:able-to-populate,L1)
// * author insert OblCreator(#SHALL:able-to-populate,L1)
// * title insert OblCreator(#SHALL:able-to-populate,L1)
* confidentiality insert OblCreator(#SHALL:able-to-populate,L1)
* attester insert OblCreator(#SHALL:able-to-populate,L1)
* attester.party insert OblCreator(#SHALL:able-to-populate,L1)
* custodian insert OblCreator(#SHOULD:able-to-populate,L1)
//* section[sectionPayers] insert OblCreator(#SHALL:able-to-populate,L1)
* extension[compositionVersionR5] insert OblCreator(#SHALL:able-to-populate,L1)
// * extension[presentedForm] insert OblCreator(#SHALL:able-to-populate,L1)
* section[sectionHospitalCourse].text insert OblCreator(#SHALL:able-to-populate,L1)

//L1 Consumer obligations L1
//* meta insert OblConsumer(#SHALL:display,L1)
//* language insert OblConsumer(#SHALL:display,L1)
* extension[presentedForm] insert OblConsumer(#SHALL:display,L1)
//* identifier insert OblConsumer(#SHALL:display,L1)
//* extension[information-recipient] insert OblConsumer(#SHOULD:display,L1)
* status insert OblConsumer(#SHALL:display,L1)
* type insert OblConsumer(#SHALL:display,L1)
// * category insert OblConsumer(#SHALL:display,L1)
* subject insert OblConsumer(#SHALL:display,L1)
* encounter insert OblConsumer(#SHALL:display,L1)
* date insert OblConsumer(#SHALL:display,L1)
* author insert OblConsumer(#SHALL:display,L1)
* title insert OblConsumer(#SHALL:display,L1)
* confidentiality insert OblConsumer(#SHALL:display,L1)
* attester insert OblConsumer(#SHALL:display,L1)
* attester.party insert OblConsumer(#SHALL:display,L1)
* custodian insert OblConsumer(#SHOULD:display,L1)
//* section[sectionPayers] insert OblConsumer(#SHALL:display,L1)
* extension[compositionVersionR5] insert OblConsumer(#SHALL:display,L1)
* section[sectionHospitalCourse].text insert OblConsumer(#SHALL:display,L1)

//L2 Creator Obligations L2 ============>
//* meta insert OblCreator(#SHALL:able-to-populate,L2)
* language insert OblCreator(#SHALL:able-to-populate,L2)
//* identifier insert OblCreator(#SHALL:able-to-populate,L2)
// * extension[information-recipient] insert OblCreator(#SHOULD:able-to-populate,L2)
// * status insert OblCreator(#SHALL:able-to-populate,L2)
* type insert OblCreator(#SHALL:able-to-populate,L2)
* category insert OblCreator(#SHALL:able-to-populate,L2)
// * subject insert OblCreator(#SHALL:able-to-populate,L2)
// * encounter insert OblCreator(#SHALL:able-to-populate,L2)
// * date insert OblCreator(#SHALL:able-to-populate,L2)
// * author insert OblCreator(#SHALL:able-to-populate,L2)
// * title insert OblCreator(#SHALL:able-to-populate,L2)
* confidentiality insert OblCreator(#SHALL:able-to-populate,L2)
* attester insert OblCreator(#SHALL:able-to-populate,L2)
* attester.party insert OblCreator(#SHALL:able-to-populate,L2)
* custodian insert OblCreator(#SHOULD:able-to-populate,L2)
* section[sectionPayers] insert OblCreator(#SHALL:able-to-populate,L2)
* extension[compositionVersionR5] insert OblCreator(#SHALL:able-to-populate,L2)
// * extension[presentedForm] insert OblCreator(#SHALL:able-to-populate,L2)

//======================================================================
// L2 CREATOR — SUBSECTIONS (TEXT ONLY, NO ENTRY)
//======================================================================

// --- Stav při příjmu (Admission Evaluation) ---
* section[sectionAdmissionEvaluation] insert OblCreator(#SHALL:able-to-populate,L2)
* section[sectionAdmissionEvaluation].text insert OblCreator(#SHALL:able-to-populate,L2)

* section[sectionAdmissionEvaluation].section[sectionAnthropometry] insert OblCreator(#SHALL:able-to-populate,L2)
* section[sectionAdmissionEvaluation].section[sectionAnthropometry].text insert OblCreator(#SHALL:able-to-populate,L2)

* section[sectionAdmissionEvaluation].section[sectionVitalSigns] insert OblCreator(#SHALL:able-to-populate,L2)
* section[sectionAdmissionEvaluation].section[sectionVitalSigns].text insert OblCreator(#SHALL:able-to-populate,L2)

* section[sectionAdmissionEvaluation].section[sectionPhysicalExamination] insert OblCreator(#SHALL:able-to-populate,L2)
* section[sectionAdmissionEvaluation].section[sectionPhysicalExamination].text insert OblCreator(#SHALL:able-to-populate,L2)


// --- Stav při propuštění (Discharge Details) ---
* section[sectionDischargeDetails] insert OblCreator(#SHALL:able-to-populate,L2)
* section[sectionDischargeDetails].text insert OblCreator(#SHALL:able-to-populate,L2)

* section[sectionDischargeDetails].section[sectionAnthropometry] insert OblCreator(#SHALL:able-to-populate,L2)
* section[sectionDischargeDetails].section[sectionAnthropometry].text insert OblCreator(#SHALL:able-to-populate,L2)

* section[sectionDischargeDetails].section[sectionVitalSigns] insert OblCreator(#SHALL:able-to-populate,L2)
* section[sectionDischargeDetails].section[sectionVitalSigns].text insert OblCreator(#SHALL:able-to-populate,L2)

* section[sectionDischargeDetails].section[sectionPhysicalExamination] insert OblCreator(#SHALL:able-to-populate,L2)
* section[sectionDischargeDetails].section[sectionPhysicalExamination].text insert OblCreator(#SHALL:able-to-populate,L2)


* section[sectionAllergies] insert OblCreator(#SHALL:able-to-populate,L2)
* section[sectionAllergies].text insert OblCreator(#SHALL:able-to-populate,L2)
* section[sectionAdvanceDirectives] insert OblCreator(#SHALL:able-to-populate,L2)
* section[sectionAlert] insert OblCreator(#SHALL:able-to-populate,L2)
* section[sectionAdmissionEvaluation] insert OblCreator(#SHALL:able-to-populate,L2)
* section[sectionAdmissionEvaluation].text insert OblCreator(#SHALL:able-to-populate,L2)
* section[sectionVitalSigns] insert OblCreator(#SHALL:able-to-populate,L2)
* section[sectionPhysicalExamination] insert OblCreator(#SHALL:able-to-populate,L2)
* section[sectionFunctionalStatus] insert OblCreator(#SHALL:able-to-populate,L2)
* section[sectionDischargeDetails] insert OblCreator(#SHALL:able-to-populate,L2)    //A.2.7.1 - Objective findings
* section[sectionPatientHx].section[sectionFamilyHistory] insert OblCreator(#SHALL:able-to-populate,L2)
* section[sectionPatientHx].section[sectionFamilyHistory].text insert OblCreator(#SHALL:able-to-populate,L2)
* section[sectionPatientHx].section[sectionSocialHistory] insert OblCreator(#SHALL:able-to-populate,L2)
* section[sectionPatientHx].section[sectionSocialHistory].text insert OblCreator(#SHALL:able-to-populate,L2)
* section[sectionPatientHx].section[sectionTravelHx] insert OblCreator(#SHALL:able-to-populate,L2)
* section[sectionPatientHx].section[sectionTravelHx].text insert OblCreator(#SHALL:able-to-populate,L2)
* section[sectionPatientHx].section[sectionInfectiousContacts] insert OblCreator(#SHALL:able-to-populate,L2)
* section[sectionPatientHx].section[sectionInfectiousContacts].text insert OblCreator(#SHALL:able-to-populate,L2)
* section[sectionPatientHx].section[sectionPastIllnessHx] insert OblCreator(#SHALL:able-to-populate,L2)
* section[sectionPatientHx].section[sectionPastIllnessHx].text insert OblCreator(#SHALL:able-to-populate,L2)
* section[sectionPatientHx].section[sectionProceduresHx] insert OblCreator(#SHALL:able-to-populate,L2)
* section[sectionPatientHx].section[sectionProceduresHx].text insert OblCreator(#SHALL:able-to-populate,L2)
* section[sectionPatientHx].section[sectionImmunizations] insert OblCreator(#SHALL:able-to-populate,L2)
* section[sectionPatientHx].section[sectionImmunizations].text insert OblCreator(#SHALL:able-to-populate,L2)
* section[sectionPatientHx].section[sectionSubstanceUse] insert OblCreator(#SHALL:able-to-populate,L2)
* section[sectionPatientHx].section[sectionSubstanceUse].text insert OblCreator(#SHALL:able-to-populate,L2)
* section[sectionPatientHx].section[sectionAlcoholUse] insert OblCreator(#SHALL:able-to-populate,L2)
* section[sectionPatientHx].section[sectionAlcoholUse].text insert OblCreator(#SHALL:able-to-populate,L2)
* section[sectionPatientHx].section[sectionTobaccoUse] insert OblCreator(#SHALL:able-to-populate,L2)
* section[sectionPatientHx].section[sectionTobaccoUse].text insert OblCreator(#SHALL:able-to-populate,L2)
* section[sectionPatientHx].section[sectionDrugUse] insert OblCreator(#SHALL:able-to-populate,L2)
* section[sectionPatientHx].section[sectionDrugUse].text insert OblCreator(#SHALL:able-to-populate,L2)
* section[sectionPatientHx].section[sectionHistoryMedicalDevices] insert OblCreator(#SHALL:able-to-populate,L2)
* section[sectionPatientHx].section[sectionHistoryMedicalDevices].text insert OblCreator(#SHALL:able-to-populate,L2)
* section[sectionDiagnosticSummary] insert OblCreator(#SHALL:able-to-populate,L2)   
* section[sectionSignificantProcedures] insert OblCreator(#SHALL:able-to-populate,L2)
* section[sectionMedicalDevices] insert OblCreator(#SHALL:able-to-populate,L2)
* section[sectionPharmacotherapy] insert OblCreator(#SHALL:able-to-populate,L2)
* section[sectionSignificantResults] insert OblCreator(#SHALL:able-to-populate,L2)
* section[sectionHospitalCourse] insert OblCreator(#SHALL:able-to-populate,L2)
* section[sectionPlanOfCare] insert OblCreator(#SHALL:able-to-populate,L2)         
* section[sectionDischargeMedications] insert OblCreator(#SHALL:able-to-populate,L2)    
* section[sectionDischargeInstructions] insert OblCreator(#SHALL:able-to-populate,L2)  
* section[sectionSynthesis] insert OblCreator(#SHALL:able-to-populate,L2)
* section[sectionAttachments] insert OblCreator(#SHALL:able-to-populate,L2)

//L2 Consumer obligations L2
//* meta insert OblConsumer(#SHALL:display,L2)
//* language insert OblConsumer(#SHALL:display,L2)
// * identifier insert OblConsumer(#SHALL:display,L2)
* extension[information-recipient]  
* status insert OblConsumer(#SHALL:display,L2)
* type insert OblConsumer(#SHALL:display,L2)
// * category insert OblConsumer(#SHALL:display,L2)
* subject insert OblConsumer(#SHALL:display,L2)
* encounter insert OblConsumer(#SHALL:display,L2)   
* date insert OblConsumer(#SHALL:display,L2)
* author insert OblConsumer(#SHALL:display,L2)
* title insert OblConsumer(#SHALL:display,L2)
* confidentiality insert OblConsumer(#SHALL:display,L2)
* attester insert OblConsumer(#SHALL:display,L2)
* attester.party insert OblConsumer(#SHALL:display,L2)
* custodian insert OblConsumer(#SHOULD:display,L2)
* section[sectionPayers] insert OblConsumer(#SHALL:display,L2)
* extension[compositionVersionR5] insert OblConsumer(#SHALL:display,L2)
* extension[presentedForm] insert OblConsumer(#SHALL:display,L2)

* section[sectionAllergies] insert OblConsumer(#SHALL:display,L2)
* section[sectionAllergies].text insert OblConsumer(#SHALL:display,L2)
* section[sectionAdvanceDirectives] insert OblConsumer(#SHALL:display,L2)
* section[sectionAdvanceDirectives].text insert OblConsumer(#SHALL:display,L2)
* section[sectionAlert] insert OblConsumer(#SHALL:display,L2)
* section[sectionAlert].text insert OblConsumer(#SHALL:display,L2)
* section[sectionAdmissionEvaluation] insert OblConsumer(#SHALL:display,L2)
* section[sectionAdmissionEvaluation].text insert OblConsumer(#SHALL:display,L2)
* section[sectionVitalSigns] insert OblConsumer(#SHALL:display,L2)
* section[sectionVitalSigns].text insert OblConsumer(#SHALL:display,L2)
* section[sectionPhysicalExamination] insert OblConsumer(#SHALL:display,L2)
* section[sectionPhysicalExamination].text insert OblConsumer(#SHALL:display,L2)
* section[sectionFunctionalStatus] insert OblConsumer(#SHALL:display,L2)
* section[sectionFunctionalStatus].text insert OblConsumer(#SHALL:display,L2)
* section[sectionDischargeDetails] insert OblConsumer(#SHALL:display,L2)    //A.2.7.1 - Objective findings
* section[sectionDischargeDetails].text insert OblConsumer(#SHALL:display,L2)
* section[sectionPatientHx] insert OblConsumer(#SHALL:display,L2)
* section[sectionPatientHx].text insert OblConsumer(#SHALL:display,L2)
* section[sectionPatientHx].section[sectionFamilyHistory] insert OblConsumer(#SHALL:display,L2)
* section[sectionPatientHx].section[sectionFamilyHistory].text insert OblConsumer(#SHALL:display,L2)
* section[sectionPatientHx].section[sectionSocialHistory] insert OblConsumer(#SHALL:display,L2)
* section[sectionPatientHx].section[sectionSocialHistory].text insert OblConsumer(#SHALL:display,L2)
* section[sectionPatientHx].section[sectionTravelHx] insert OblConsumer(#SHALL:display,L2)
* section[sectionPatientHx].section[sectionTravelHx].text insert OblConsumer(#SHALL:display,L2)
* section[sectionPatientHx].section[sectionInfectiousContacts] insert OblConsumer(#SHALL:display,L2)
* section[sectionPatientHx].section[sectionInfectiousContacts].text insert OblConsumer(#SHALL:display,L2)
* section[sectionPatientHx].section[sectionPastIllnessHx] insert OblConsumer(#SHALL:display,L2)
* section[sectionPatientHx].section[sectionPastIllnessHx].text insert OblConsumer(#SHALL:display,L2)
* section[sectionPatientHx].section[sectionProceduresHx] insert OblConsumer(#SHALL:display,L2)
* section[sectionPatientHx].section[sectionProceduresHx].text insert OblConsumer(#SHALL:display,L2)
* section[sectionPatientHx].section[sectionImmunizations] insert OblConsumer(#SHALL:display,L2)
* section[sectionPatientHx].section[sectionImmunizations].text insert OblConsumer(#SHALL:display,L2)
* section[sectionPatientHx].section[sectionSubstanceUse] insert OblConsumer(#SHALL:display,L2)
* section[sectionPatientHx].section[sectionSubstanceUse].text insert OblConsumer(#SHALL:display,L2)
* section[sectionPatientHx].section[sectionAlcoholUse] insert OblConsumer(#SHALL:display,L2)
* section[sectionPatientHx].section[sectionAlcoholUse].text insert OblConsumer(#SHALL:display,L2)
* section[sectionPatientHx].section[sectionTobaccoUse] insert OblConsumer(#SHALL:display,L2)
* section[sectionPatientHx].section[sectionTobaccoUse].text insert OblConsumer(#SHALL:display,L2)
* section[sectionPatientHx].section[sectionDrugUse] insert OblConsumer(#SHALL:display,L2)
* section[sectionPatientHx].section[sectionDrugUse].text insert OblConsumer(#SHALL:display,L2)
* section[sectionPatientHx].section[sectionHistoryMedicalDevices] insert OblConsumer(#SHALL:display,L2)
* section[sectionPatientHx].section[sectionHistoryMedicalDevices].text insert OblConsumer(#SHALL:display,L2)
* section[sectionDiagnosticSummary] insert OblConsumer(#SHALL:display,L2)  
* section[sectionDiagnosticSummary].text insert OblConsumer(#SHALL:display,L2)
* section[sectionSignificantProcedures] insert OblConsumer(#SHALL:display,L2)
* section[sectionSignificantProcedures].text insert OblConsumer(#SHALL:display,L2)
* section[sectionMedicalDevices] insert OblConsumer(#SHALL:display,L2)
* section[sectionMedicalDevices].text insert OblConsumer(#SHALL:display,L2)
* section[sectionPharmacotherapy] insert OblConsumer(#SHALL:display,L2)
* section[sectionPharmacotherapy].text insert OblConsumer(#SHALL:display,L2)
* section[sectionSignificantResults] insert OblConsumer(#SHALL:display,L2)
* section[sectionSignificantResults].text insert OblConsumer(#SHALL:display,L2)
* section[sectionHospitalCourse] insert OblConsumer(#SHALL:display,L2)
* section[sectionHospitalCourse].text insert OblConsumer(#SHALL:display,L2)
* section[sectionPlanOfCare] insert OblConsumer(#SHALL:display,L2)          
* section[sectionPlanOfCare].text insert OblConsumer(#SHALL:display,L2)
* section[sectionDischargeMedications] insert OblConsumer(#SHALL:display,L2)    
* section[sectionDischargeMedications].text insert OblConsumer(#SHALL:display,L2)
* section[sectionDischargeInstructions] insert OblConsumer(#SHALL:display,L2)  
* section[sectionDischargeInstructions].text insert OblConsumer(#SHALL:display,L2)
* section[sectionSynthesis] insert OblConsumer(#SHALL:display,L2)
* section[sectionSynthesis].text insert OblConsumer(#SHALL:display,L2)
* section[sectionAttachments] insert OblConsumer(#SHALL:display,L2)
* section[sectionAttachments].text insert OblConsumer(#SHALL:display,L2)

//======================================================================
// L2 CONSUMER — SUBSECTIONS (TEXT ONLY, NO ENTRY)
//======================================================================

// --- Admission Evaluation ---
* section[sectionAdmissionEvaluation] insert OblConsumer(#SHALL:display,L2)
* section[sectionAdmissionEvaluation].text insert OblConsumer(#SHALL:display,L2)

* section[sectionAdmissionEvaluation].section[sectionAnthropometry] insert OblConsumer(#SHALL:display,L2)
* section[sectionAdmissionEvaluation].section[sectionAnthropometry].text insert OblConsumer(#SHALL:display,L2)

* section[sectionAdmissionEvaluation].section[sectionVitalSigns] insert OblConsumer(#SHALL:display,L2)
* section[sectionAdmissionEvaluation].section[sectionVitalSigns].text insert OblConsumer(#SHALL:display,L2)

* section[sectionAdmissionEvaluation].section[sectionPhysicalExamination] insert OblConsumer(#SHALL:display,L2)
* section[sectionAdmissionEvaluation].section[sectionPhysicalExamination].text insert OblConsumer(#SHALL:display,L2)


// --- Discharge Details ---
* section[sectionDischargeDetails] insert OblConsumer(#SHALL:display,L2)
* section[sectionDischargeDetails].text insert OblConsumer(#SHALL:display,L2)

* section[sectionDischargeDetails].section[sectionAnthropometry] insert OblConsumer(#SHALL:display,L2)
* section[sectionDischargeDetails].section[sectionAnthropometry].text insert OblConsumer(#SHALL:display,L2)

* section[sectionDischargeDetails].section[sectionVitalSigns] insert OblConsumer(#SHALL:display,L2)
* section[sectionDischargeDetails].section[sectionVitalSigns].text insert OblConsumer(#SHALL:display,L2)

* section[sectionDischargeDetails].section[sectionPhysicalExamination] insert OblConsumer(#SHALL:display,L2)
* section[sectionDischargeDetails].section[sectionPhysicalExamination].text insert OblConsumer(#SHALL:display,L2)

//L3 Creator Obligations L3 ============>

* language insert OblCreator(#SHALL:able-to-populate,L3)
* type insert OblCreator(#SHALL:able-to-populate,L3)
* category insert OblCreator(#SHALL:able-to-populate,L3)
* confidentiality insert OblCreator(#SHALL:able-to-populate,L3)
* attester insert OblCreator(#SHALL:able-to-populate,L3)
* attester.party insert OblCreator(#SHALL:able-to-populate,L3)
* custodian insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionPayers] insert OblCreator(#SHALL:able-to-populate,L3)
* extension[compositionVersionR5] insert OblCreator(#SHALL:able-to-populate,L3)


//======================================================================
// L3 CREATOR — MAIN SECTIONS
//======================================================================

* section[sectionPayers] insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionPayers].text insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionPayers].entry insert OblCreator(#SHALL:able-to-populate,L3)

* section[sectionAdvanceDirectives] insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionAdvanceDirectives].text insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionAdvanceDirectives].entry insert OblCreator(#SHALL:able-to-populate,L3)

* section[sectionAlert] insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionAlert].text insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionAlert].entry insert OblCreator(#SHALL:able-to-populate,L3)


//======================================================================
// L3 CREATOR — ADMISSION EVALUATION + SUBSECTIONS
//======================================================================

* section[sectionAdmissionEvaluation] insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionAdmissionEvaluation].text insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionAdmissionEvaluation].entry insert OblCreator(#SHALL:able-to-populate,L3)

* section[sectionAdmissionEvaluation].section[sectionAnthropometry] insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionAdmissionEvaluation].section[sectionAnthropometry].text insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionAdmissionEvaluation].section[sectionAnthropometry].entry insert OblCreator(#SHALL:able-to-populate,L3)

* section[sectionAdmissionEvaluation].section[sectionVitalSigns] insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionAdmissionEvaluation].section[sectionVitalSigns].text insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionAdmissionEvaluation].section[sectionVitalSigns].entry insert OblCreator(#SHALL:able-to-populate,L3)

* section[sectionAdmissionEvaluation].section[sectionPhysicalExamination] insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionAdmissionEvaluation].section[sectionPhysicalExamination].text insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionAdmissionEvaluation].section[sectionPhysicalExamination].entry insert OblCreator(#SHALL:able-to-populate,L3)


//======================================================================
// L3 CREATOR — DISCHARGE DETAILS + SUBSECTIONS
//======================================================================

* section[sectionDischargeDetails] insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionDischargeDetails].text insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionDischargeDetails].entry insert OblCreator(#SHALL:able-to-populate,L3)

* section[sectionDischargeDetails].section[sectionAnthropometry] insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionDischargeDetails].section[sectionAnthropometry].text insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionDischargeDetails].section[sectionAnthropometry].entry insert OblCreator(#SHALL:able-to-populate,L3)

* section[sectionDischargeDetails].section[sectionVitalSigns] insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionDischargeDetails].section[sectionVitalSigns].text insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionDischargeDetails].section[sectionVitalSigns].entry insert OblCreator(#SHALL:able-to-populate,L3)

* section[sectionDischargeDetails].section[sectionPhysicalExamination] insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionDischargeDetails].section[sectionPhysicalExamination].text insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionDischargeDetails].section[sectionPhysicalExamination].entry insert OblCreator(#SHALL:able-to-populate,L3)


//======================================================================
// L3 CREATOR — PATIENT HISTORY (FULL SUBTREE)
//======================================================================

* section[sectionPatientHx] insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionPatientHx].text insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionPatientHx].entry insert OblCreator(#SHALL:able-to-populate,L3)

* section[sectionPatientHx].section[sectionFamilyHistory] insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionPatientHx].section[sectionFamilyHistory].text insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionPatientHx].section[sectionFamilyHistory].entry insert OblCreator(#SHALL:able-to-populate,L3)

* section[sectionPatientHx].section[sectionSocialHistory] insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionPatientHx].section[sectionSocialHistory].text insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionPatientHx].section[sectionSocialHistory].entry insert OblCreator(#SHALL:able-to-populate,L3)

* section[sectionPatientHx].section[sectionTravelHx] insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionPatientHx].section[sectionTravelHx].text insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionPatientHx].section[sectionTravelHx].entry insert OblCreator(#SHALL:able-to-populate,L3)

* section[sectionPatientHx].section[sectionInfectiousContacts] insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionPatientHx].section[sectionInfectiousContacts].text insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionPatientHx].section[sectionInfectiousContacts].entry insert OblCreator(#SHALL:able-to-populate,L3)

* section[sectionPatientHx].section[sectionPastIllnessHx] insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionPatientHx].section[sectionPastIllnessHx].text insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionPatientHx].section[sectionPastIllnessHx].entry insert OblCreator(#SHALL:able-to-populate,L3)

* section[sectionPatientHx].section[sectionProceduresHx] insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionPatientHx].section[sectionProceduresHx].text insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionPatientHx].section[sectionProceduresHx].entry insert OblCreator(#SHALL:able-to-populate,L3)

* section[sectionPatientHx].section[sectionImmunizations] insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionPatientHx].section[sectionImmunizations].text insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionPatientHx].section[sectionImmunizations].entry insert OblCreator(#SHALL:able-to-populate,L3)

* section[sectionPatientHx].section[sectionSubstanceUse] insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionPatientHx].section[sectionSubstanceUse].text insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionPatientHx].section[sectionSubstanceUse].entry insert OblCreator(#SHALL:able-to-populate,L3)

* section[sectionPatientHx].section[sectionAlcoholUse] insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionPatientHx].section[sectionAlcoholUse].text insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionPatientHx].section[sectionAlcoholUse].entry insert OblCreator(#SHALL:able-to-populate,L3)

* section[sectionPatientHx].section[sectionTobaccoUse] insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionPatientHx].section[sectionTobaccoUse].text insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionPatientHx].section[sectionTobaccoUse].entry insert OblCreator(#SHALL:able-to-populate,L3)

* section[sectionPatientHx].section[sectionDrugUse] insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionPatientHx].section[sectionDrugUse].text insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionPatientHx].section[sectionDrugUse].entry insert OblCreator(#SHALL:able-to-populate,L3)

* section[sectionPatientHx].section[sectionHistoryMedicalDevices] insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionPatientHx].section[sectionHistoryMedicalDevices].text insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionPatientHx].section[sectionHistoryMedicalDevices].entry insert OblCreator(#SHALL:able-to-populate,L3)


//======================================================================
// L3 CREATOR — REMAINING SECTIONS (NO SUBSECTIONS)
//======================================================================

* section[sectionAllergies] insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionAllergies].text insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionAllergies].entry insert OblCreator(#SHALL:able-to-populate,L3)

* section[sectionDiagnosticSummary] insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionDiagnosticSummary].text insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionDiagnosticSummary].entry insert OblCreator(#SHALL:able-to-populate,L3)

* section[sectionSignificantProcedures] insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionSignificantProcedures].text insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionSignificantProcedures].entry insert OblCreator(#SHALL:able-to-populate,L3)

* section[sectionMedicalDevices] insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionMedicalDevices].text insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionMedicalDevices].entry insert OblCreator(#SHALL:able-to-populate,L3)

* section[sectionPharmacotherapy] insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionPharmacotherapy].text insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionPharmacotherapy].entry insert OblCreator(#SHALL:able-to-populate,L3)

* section[sectionSignificantResults] insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionSignificantResults].text insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionSignificantResults].entry insert OblCreator(#SHALL:able-to-populate,L3)

* section[sectionHospitalCourse] insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionHospitalCourse].text insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionHospitalCourse].entry insert OblCreator(#SHALL:able-to-populate,L3)

* section[sectionPlanOfCare] insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionPlanOfCare].text insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionPlanOfCare].entry insert OblCreator(#SHALL:able-to-populate,L3)

* section[sectionDischargeMedications] insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionDischargeMedications].text insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionDischargeMedications].entry insert OblCreator(#SHALL:able-to-populate,L3)

* section[sectionDischargeInstructions] insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionDischargeInstructions].text insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionDischargeInstructions].entry insert OblCreator(#SHALL:able-to-populate,L3)

* section[sectionSynthesis] insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionSynthesis].text insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionSynthesis].entry insert OblCreator(#SHALL:able-to-populate,L3)

* section[sectionAttachments] insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionAttachments].text insert OblCreator(#SHALL:able-to-populate,L3)
* section[sectionAttachments].entry insert OblCreator(#SHALL:able-to-populate,L3)

//======================================================================
// L3 Consumer Obligations L3
//======================================================================

* status insert OblConsumer(#SHALL:display,L3)
* type insert OblConsumer(#SHALL:display,L3)
* subject insert OblConsumer(#SHALL:display,L3)
* encounter insert OblConsumer(#SHALL:display,L3)
* date insert OblConsumer(#SHALL:display,L3)
* author insert OblConsumer(#SHALL:display,L3)
* title insert OblConsumer(#SHALL:display,L3)
* confidentiality insert OblConsumer(#SHALL:display,L3)
* attester insert OblConsumer(#SHALL:display,L3)
* attester.party insert OblConsumer(#SHALL:display,L3)
* custodian insert OblConsumer(#SHALL:display,L3)
* section[sectionPayers] insert OblConsumer(#SHALL:display,L3)
* extension[compositionVersionR5] insert OblConsumer(#SHALL:display,L3)
* extension[presentedForm] insert OblConsumer(#SHALL:display,L3)


//======================================================================
// L3 CONSUMER — MAIN SECTIONS
//======================================================================

* section[sectionPayers] insert OblConsumer(#SHALL:display,L3)
* section[sectionPayers].text insert OblConsumer(#SHALL:display,L3)
* section[sectionPayers].entry insert OblConsumer(#SHALL:display,L3)

* section[sectionAdvanceDirectives] insert OblConsumer(#SHALL:display,L3)
* section[sectionAdvanceDirectives].text insert OblConsumer(#SHALL:display,L3)
* section[sectionAdvanceDirectives].entry insert OblConsumer(#SHALL:display,L3)

* section[sectionAlert] insert OblConsumer(#SHALL:display,L3)
* section[sectionAlert].text insert OblConsumer(#SHALL:display,L3)
* section[sectionAlert].entry insert OblConsumer(#SHALL:display,L3)


//======================================================================
// L3 CONSUMER — ADMISSION EVALUATION + SUBSECTIONS
//======================================================================

* section[sectionAdmissionEvaluation] insert OblConsumer(#SHALL:display,L3)
* section[sectionAdmissionEvaluation].text insert OblConsumer(#SHALL:display,L3)
* section[sectionAdmissionEvaluation].entry insert OblConsumer(#SHALL:display,L3)

* section[sectionAdmissionEvaluation].section[sectionAnthropometry] insert OblConsumer(#SHALL:display,L3)
* section[sectionAdmissionEvaluation].section[sectionAnthropometry].text insert OblConsumer(#SHALL:display,L3)
* section[sectionAdmissionEvaluation].section[sectionAnthropometry].entry insert OblConsumer(#SHALL:display,L3)

* section[sectionAdmissionEvaluation].section[sectionVitalSigns] insert OblConsumer(#SHALL:display,L3)
* section[sectionAdmissionEvaluation].section[sectionVitalSigns].text insert OblConsumer(#SHALL:display,L3)
* section[sectionAdmissionEvaluation].section[sectionVitalSigns].entry insert OblConsumer(#SHALL:display,L3)

* section[sectionAdmissionEvaluation].section[sectionPhysicalExamination] insert OblConsumer(#SHALL:display,L3)
* section[sectionAdmissionEvaluation].section[sectionPhysicalExamination].text insert OblConsumer(#SHALL:display,L3)
* section[sectionAdmissionEvaluation].section[sectionPhysicalExamination].entry insert OblConsumer(#SHALL:display,L3)


//======================================================================
// L3 CONSUMER — DISCHARGE DETAILS + SUBSECTIONS
//======================================================================

* section[sectionDischargeDetails] insert OblConsumer(#SHALL:display,L3)
* section[sectionDischargeDetails].text insert OblConsumer(#SHALL:display,L3)
* section[sectionDischargeDetails].entry insert OblConsumer(#SHALL:display,L3)

* section[sectionDischargeDetails].section[sectionAnthropometry] insert OblConsumer(#SHALL:display,L3)
* section[sectionDischargeDetails].section[sectionAnthropometry].text insert OblConsumer(#SHALL:display,L3)
* section[sectionDischargeDetails].section[sectionAnthropometry].entry insert OblConsumer(#SHALL:display,L3)

* section[sectionDischargeDetails].section[sectionVitalSigns] insert OblConsumer(#SHALL:display,L3)
* section[sectionDischargeDetails].section[sectionVitalSigns].text insert OblConsumer(#SHALL:display,L3)
* section[sectionDischargeDetails].section[sectionVitalSigns].entry insert OblConsumer(#SHALL:display,L3)

* section[sectionDischargeDetails].section[sectionPhysicalExamination] insert OblConsumer(#SHALL:display,L3)
* section[sectionDischargeDetails].section[sectionPhysicalExamination].text insert OblConsumer(#SHALL:display,L3)
* section[sectionDischargeDetails].section[sectionPhysicalExamination].entry insert OblConsumer(#SHALL:display,L3)


//======================================================================
// L3 CONSUMER — PATIENT HISTORY (FULL SUBTREE)
//======================================================================

* section[sectionPatientHx] insert OblConsumer(#SHALL:display,L3)
* section[sectionPatientHx].text insert OblConsumer(#SHALL:display,L3)
* section[sectionPatientHx].entry insert OblConsumer(#SHALL:display,L3)

* section[sectionPatientHx].section[sectionFamilyHistory] insert OblConsumer(#SHALL:display,L3)
* section[sectionPatientHx].section[sectionFamilyHistory].text insert OblConsumer(#SHALL:display,L3)
* section[sectionPatientHx].section[sectionFamilyHistory].entry insert OblConsumer(#SHALL:display,L3)

* section[sectionPatientHx].section[sectionSocialHistory] insert OblConsumer(#SHALL:display,L3)
* section[sectionPatientHx].section[sectionSocialHistory].text insert OblConsumer(#SHALL:display,L3)
* section[sectionPatientHx].section[sectionSocialHistory].entry insert OblConsumer(#SHALL:display,L3)

* section[sectionPatientHx].section[sectionTravelHx] insert OblConsumer(#SHALL:display,L3)
* section[sectionPatientHx].section[sectionTravelHx].text insert OblConsumer(#SHALL:display,L3)
* section[sectionPatientHx].section[sectionTravelHx].entry insert OblConsumer(#SHALL:display,L3)

* section[sectionPatientHx].section[sectionInfectiousContacts] insert OblConsumer(#SHALL:display,L3)
* section[sectionPatientHx].section[sectionInfectiousContacts].text insert OblConsumer(#SHALL:display,L3)
* section[sectionPatientHx].section[sectionInfectiousContacts].entry insert OblConsumer(#SHALL:display,L3)

* section[sectionPatientHx].section[sectionPastIllnessHx] insert OblConsumer(#SHALL:display,L3)
* section[sectionPatientHx].section[sectionPastIllnessHx].text insert OblConsumer(#SHALL:display,L3)
* section[sectionPatientHx].section[sectionPastIllnessHx].entry insert OblConsumer(#SHALL:display,L3)

* section[sectionPatientHx].section[sectionProceduresHx] insert OblConsumer(#SHALL:display,L3)
* section[sectionPatientHx].section[sectionProceduresHx].text insert OblConsumer(#SHALL:display,L3)
* section[sectionPatientHx].section[sectionProceduresHx].entry insert OblConsumer(#SHALL:display,L3)

* section[sectionPatientHx].section[sectionImmunizations] insert OblConsumer(#SHALL:display,L3)
* section[sectionPatientHx].section[sectionImmunizations].text insert OblConsumer(#SHALL:display,L3)
* section[sectionPatientHx].section[sectionImmunizations].entry insert OblConsumer(#SHALL:display,L3)

* section[sectionPatientHx].section[sectionSubstanceUse] insert OblConsumer(#SHALL:display,L3)
* section[sectionPatientHx].section[sectionSubstanceUse].text insert OblConsumer(#SHALL:display,L3)
* section[sectionPatientHx].section[sectionSubstanceUse].entry insert OblConsumer(#SHALL:display,L3)

* section[sectionPatientHx].section[sectionAlcoholUse] insert OblConsumer(#SHALL:display,L3)
* section[sectionPatientHx].section[sectionAlcoholUse].text insert OblConsumer(#SHALL:display,L3)
* section[sectionPatientHx].section[sectionAlcoholUse].entry insert OblConsumer(#SHALL:display,L3)

* section[sectionPatientHx].section[sectionTobaccoUse] insert OblConsumer(#SHALL:display,L3)
* section[sectionPatientHx].section[sectionTobaccoUse].text insert OblConsumer(#SHALL:display,L3)
* section[sectionPatientHx].section[sectionTobaccoUse].entry insert OblConsumer(#SHALL:display,L3)

* section[sectionPatientHx].section[sectionDrugUse] insert OblConsumer(#SHALL:display,L3)
* section[sectionPatientHx].section[sectionDrugUse].text insert OblConsumer(#SHALL:display,L3)
* section[sectionPatientHx].section[sectionDrugUse].entry insert OblConsumer(#SHALL:display,L3)

* section[sectionPatientHx].section[sectionHistoryMedicalDevices] insert OblConsumer(#SHALL:display,L3)
* section[sectionPatientHx].section[sectionHistoryMedicalDevices].text insert OblConsumer(#SHALL:display,L3)
* section[sectionPatientHx].section[sectionHistoryMedicalDevices].entry insert OblConsumer(#SHALL:display,L3)


//======================================================================
// L3 CONSUMER — REMAINING SECTIONS (NO SUBSECTIONS)
//======================================================================

* section[sectionAllergies] insert OblConsumer(#SHALL:display,L3)
* section[sectionAllergies].text insert OblConsumer(#SHALL:display,L3)
* section[sectionAllergies].entry insert OblConsumer(#SHALL:display,L3)

* section[sectionDiagnosticSummary] insert OblConsumer(#SHALL:display,L3)
* section[sectionDiagnosticSummary].text insert OblConsumer(#SHALL:display,L3)
* section[sectionDiagnosticSummary].entry insert OblConsumer(#SHALL:display,L3)

* section[sectionSignificantProcedures] insert OblConsumer(#SHALL:display,L3)
* section[sectionSignificantProcedures].text insert OblConsumer(#SHALL:display,L3)
* section[sectionSignificantProcedures].entry insert OblConsumer(#SHALL:display,L3)

* section[sectionMedicalDevices] insert OblConsumer(#SHALL:display,L3)
* section[sectionMedicalDevices].text insert OblConsumer(#SHALL:display,L3)
* section[sectionMedicalDevices].entry insert OblConsumer(#SHALL:display,L3)

* section[sectionPharmacotherapy] insert OblConsumer(#SHALL:display,L3)
* section[sectionPharmacotherapy].text insert OblConsumer(#SHALL:display,L3)
* section[sectionPharmacotherapy].entry insert OblConsumer(#SHALL:display,L3)

* section[sectionSignificantResults] insert OblConsumer(#SHALL:display,L3)
* section[sectionSignificantResults].text insert OblConsumer(#SHALL:display,L3)
* section[sectionSignificantResults].entry insert OblConsumer(#SHALL:display,L3)

* section[sectionHospitalCourse] insert OblConsumer(#SHALL:display,L3)
* section[sectionHospitalCourse].text insert OblConsumer(#SHALL:display,L3)
* section[sectionHospitalCourse].entry insert OblConsumer(#SHALL:display,L3)

* section[sectionPlanOfCare] insert OblConsumer(#SHALL:display,L3)
* section[sectionPlanOfCare].text insert OblConsumer(#SHALL:display,L3)
* section[sectionPlanOfCare].entry insert OblConsumer(#SHALL:display,L3)

* section[sectionDischargeMedications] insert OblConsumer(#SHALL:display,L3)
* section[sectionDischargeMedications].text insert OblConsumer(#SHALL:display,L3)
* section[sectionDischargeMedications].entry insert OblConsumer(#SHALL:display,L3)

* section[sectionDischargeInstructions] insert OblConsumer(#SHALL:display,L3)
* section[sectionDischargeInstructions].text insert OblConsumer(#SHALL:display,L3)
* section[sectionDischargeInstructions].entry insert OblConsumer(#SHALL:display,L3)

* section[sectionSynthesis] insert OblConsumer(#SHALL:display,L3)
* section[sectionSynthesis].text insert OblConsumer(#SHALL:display,L3)
* section[sectionSynthesis].entry insert OblConsumer(#SHALL:display,L3)

* section[sectionAttachments] insert OblConsumer(#SHALL:display,L3)
* section[sectionAttachments].text insert OblConsumer(#SHALL:display,L3)
* section[sectionAttachments].entry insert OblConsumer(#SHALL:display,L3)
