//====================================
// COMMON SECTIONS
//====================================
RuleSet: AlertSectionRules
// Alert Section used for the HDR and PS composition
* section contains sectionAlert ..1
* section[sectionAlert]
  * insert SectionComRules (
    Health Concern Section, // SHORT
      This section contains data describing an interest or worry about a health state or process that could possibly require attention\, intervention\, or management. A Health Concern is a health related matter that is of interest\, importance or worry to someone\, who may be the patient\, patient's family or patient's health care provider. Health concerns are derived from a variety of sources within an EHR\, such as Problem List\, Family History\, Social Histor\, Social Worker Note\, etc. Health concerns can be medical\, surgical\, nursing\, allied health or patient-reported concerns. Problem Concerns are a subset of Health Concerns that have risen to the level of importance that they typically would belong on a classic “Problem List”\, such as “Diabetes Mellitus” or “Family History of Melanoma” or “Tobacco abuse”. These are of broad interest to multiple members of the care team. Examples of other Health Concerns that might not typically be considered a Problem Concern include “Risk of Hyperkalemia” for a patient taking an ACE-inhibitor medication\, or “Transportation difficulties” for someone who doesn't drive and has trouble getting to appointments\, or “Under-insured” for someone who doesn't have sufficient insurance to properly cover their medical needs such as medications. These are typically most important to just a limited number of care team members, // DESC
      http://loinc.org#75310-3 )   // CODE
  * entry 0..
  * insert SectionEntrySliceComRules(Alerts, Alerts)
  // entry slices
  * insert SectionEntrySliceDefRules (flag, 0.. , Flags , Flags , CZ_FlagHdr)
  * insert SectionEntrySliceDefRules (detectedIssue, 0.. ,  Detected Issue,
    Indicates an actual or potential clinical issue with or between one or more active or proposed clinical actions for a patient; e.g. Drug-drug interaction\, Ineffective treatment frequency\, Procedure-condition conflict\, etc. ,
    DetectedIssue)

  * insert SectionEntrySliceDefRules (riskAssessment, 0.. , Risk Assessment,
    An assessment of the likely outcomes for a patient or other subject as well as the likelihood of each outcome. ,
    RiskAssessment)

//========================================================

RuleSet: sectionCareTeamRules
* section contains sectionCareTeam ..1

* section[sectionCareTeam]
  * insert SectionComRules (
      Care Team Section, // SHORT
      The Care Team Section is used to share historical and current Care Team information., // DESC
      http://loinc.org#85847-2 )   // CODE

  * entry 0..
  * insert SectionEntrySliceComRules(Care Teams, Care Teams)
  * insert SectionEntrySliceDefRules (cteam, 0.. , Care Team , Care Team , CareTeam)
  * insert NoSubSectionsRules



RuleSet: EvaluationSubSectionRules
* section
  * title 1..
  * text 1..
  * text only Narrative
  * section ..0
* insert SectionSliceComRules (Objective findings, Findings made by healthcare practitioner)

// ==> TO BE REVIEWED
* section contains sectionAnthropometry 0..1
* section[sectionAnthropometry]
  * insert SectionComRules (
    Anthropometric observations,
    Anthropometric Observations sub-section,
    $sct#248326004) // to be updated
  * entry 1..
  * entry only Reference(CZ_ObservationAbdominalCircumferenceHdr or CZ_ObservationHeightHdr or CZ_ObservationWeightHdr or CZ_ObservationBMIHdr or CZ_ObservationHeadCircumferenceHdr or CZ_ObservationChestCircumferenceHdr or Observation) 
    * ^short = "Entry used to represent anthropometric measurements"
    * ^definition = "It describes findings from anthropometric measurements of the patient, such as height, weight, BMI, head circumference, chest circumference, abdominal circumference"
  /* * entry only Reference(BodyHeightXpandh or BodyWeightXpandh or BMIProfileXpandh or SkinfoldThicknessXpandh or CircumferenceMeasurementXpandh)
   */

// ==> TO BE REVIEWED
* section contains sectionVitalSigns 0..1
* section[sectionVitalSigns]
  * insert SectionComRules (
    Vital signs,
    The Vital signs section includes blood pressure\, body temperature\, heart rate\, and respiratory rate. It may also include other clinical findings\, such as height\, weight\, body mass index\, head circumference\, and pulse oximetry. In particular\, notable vital signs or physical findings such as the most recent\, maximum and/or minimum\, baseline\, or relevant trends may be included,
    $loinc#8716-3)
/*   * title = "Vital signs"
  * code = $sct#1184593002 "Vital sign document section (record artifact)" */
  * entry 1..
  * entry only Reference(Observation) ///HON Tady by to chtělo dodělat profily pro jednotlivé vital signs
    * ^short = "Entry used to represent vital sign measurements"
    * ^definition = "It describes findings from vital sign measurements of the patient. Profiles to express structured vital sign measurements will be specified by future versions of this guide."


  /* * entry only Reference(BloodPressureXpandh or HeartRateXpandh or RespiratoryRateXpandh or BodyTemperatureXpandh or OxygenSaturationXpandh )
 */

// ==> TO BE REVIEWED
* section contains sectionPhysicalExamination 0..1  // ToDo: add structure
* section[sectionPhysicalExamination]
  * title = "Somatické vyšetření"
  * code = $sct#425044008 "Physical exam section (record artifact)"
  * text 1..    // now only textual section, should we use questionnair resource for structuring per body part? Maybe as on option?
  * entry 0..   // now only textual section, should we use questionnair response or Observation for structuring per body part?
  * entry only Reference(ClinicalImpression or Observation or DocumentReference or QuestionnaireResponse)
    * ^short = "Optional entry used to represent physical examination findings"
    * ^definition = "It describes findings from physical examination of the patient. Profiles to express structured physical examination findings will be specified by future versions of this guide."

* section contains sectionFunctionalStatus 0..1
* section[sectionFunctionalStatus]
  * insert SectionComRules (
    Functional status,
    The functional status section shall contain a narrative description of capability of the patient to perform acts of daily living\, including possible needs of the patient to be continuously assessed by third parties. The invalidity status may in fact influence decisions about how to administer treatments.\r\nProfiles to express disabilities and functional assessments will be specified by future versions of this guide.,
    $loinc#47420-5) // Functional status assessment note

/*   * code = $sct#1184588000 "Functional status document section (record artifact)" */
  /* * entry only Reference(FunctionalStatusAssessment) */

  * entry only Reference(CZ_ConditionHdr or ClinicalImpression or Observation or DocumentReference or QuestionnaireResponse)
    * ^short = "Optional entry used to represent disabilities and functional assessments"
    * ^definition = "It describes capabilities of the patient to perform acts of daily living, including possible needs of the patient to be continuously assessed by third parties. The invalidity status may in fact influence decisions about how to administer treatments.\r\nProfiles to express disabilities and functional assessments will be specified by future versions of this guide."

  // => add slices for disability or functional assessment ?

RuleSet: PatientHxSubsectionRules
* section
  * title 1..
  * text 1.. 
  * text only Narrative
  * section ..0
* insert SectionSliceComRules (Patient History, History reported by the patient or caregiver)

* section contains sectionInfectiousContacts ..1
* section[sectionInfectiousContacts]
  * insert SectionComRules (
    Infectious contacts,
    Infectious contacts of the patient,
     TemporaryHDRSystem#infection-contact ) // $sct#444071008"Exposure to organism (event\)"
  * entry 0..*
  * entry only Reference(CZ_ObservationInfectiousContactHdr)
    * ^short = "Exposure to an infectious agent."
    * ^definition = "Information about a suspected infectious agent or agents the person was exposed to."
  * section ..0

* section contains sectionTravelHx ..1
* section[sectionTravelHx]
  * insert SectionComRules (
        Travel History Section,
        This Section describes the travel history relevant for the Patient Summary\, e.g.recent travel in a region of high prevalence of a specific infectious disease like Malaria,
        $loinc#10182-4 )

// -------------------------------------
// Social History Section
// -------------------------------------
* section contains sectionSocialHistory ..1
* section[sectionSocialHistory]
  * insert SectionComRules (
    Social History Section,
    The social history section contains a description of the person Health related lifestyle factors or lifestyle observations.   E.g. smoke habits; alcohol consumption; diets\, risky habits.,
    $loinc#29762-2  )   // CODE

// \’s Health related lifestyle factors or lifestyle observations.   E.g. smoke habits; alcohol consumption; diets\, risky habits.,

  * entry 0..
  * entry only Reference(CZ_ObservationSdohHdr or DocumentReference)    // or $Observation-alcoholuse-uv-ips or $Observation-tobaccouse-uv-ips)

  // -------------------------------------
// History of Past Illness Section 0 … 1
// -------------------------------------

* section contains sectionPastIllnessHx ..1
* section[sectionPastIllnessHx] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionPastIllnessHx] ^extension[0].valueString = "Section"
* section[sectionPastIllnessHx] ^short = "HDR History of Past Illness Section"
* section[sectionPastIllnessHx] ^definition = "The History of Past Illness section contains a narrative description and coded entries of the conditions the patient suffered in the past"
* section[sectionPastIllnessHx].title 1..
* section[sectionPastIllnessHx].code 1..
* section[sectionPastIllnessHx].code only $CodeableConcept-uv-ips
* section[sectionPastIllnessHx].code = http://loinc.org#11348-0 (exactly)
* section[sectionPastIllnessHx].text 1..
* section[sectionPastIllnessHx].entry 1..
* section[sectionPastIllnessHx].entry only Reference($Condition-uv-ips-cz)
* section[sectionPastIllnessHx].entry ^short = "Conditions the patient suffered in the past."
* section[sectionPastIllnessHx].entry ^definition = "It contains a description of the conditions the patient suffered in the past."
/* * section[sectionPastIllnessHx].emptyReason ..0
* section[sectionPastIllnessHx].emptyReason ^mustSupport = false */

// -------------------------------------
// History of Procedures Section 0 … 1
// -------------------------------------
* section contains sectionProceduresHx ..1
* section[sectionProceduresHx]
  * insert SectionComRules (
    History of Procedures Section,
      The History of Procedures Section contains a description of the patient past procedures that are pertinent to the scope of this document.\r\nProcedures may refer for example to:\r\n1. Invasive Diagnostic procedure:e.g. Cardiac catheterization; (the results of these procedure are documented in the results section\)\r\n2. Therapeutic procedure: e.g. dialysis;\r\n3. Surgical procedure: e.g. appendectomy
      ,$loinc#47519-4)   // CODE  "History of Procedures Document"
  * entry 1..
  * entry only Reference(Procedure
                          or DocumentReference  )
  * insert SectionEntrySliceComRules(Patient past procedures pertinent to the scope of this document.,
    It lists the patient past procedures that are pertinent to the scope of this document.\r\nProcedures may refer for example to:\r\n1. Invasive Diagnostic procedure:e.g. Cardiac catheterization; (the results of these procedure are documented in the results section\)\r\n2. Therapeutic procedure: e.g. dialysis;\r\n3. Surgical procedure: e.g. appendectomy. This entry shall be used to document that no information about past procedures is available\, or that no relevant past procedures are known.)
  // entry slices
  //* insert SectionEntrySliceDefRules (procedure, 0.. , Past Procedure entry ,  Past Procedure entry  , $Procedure-uv-ips-cz)
  * insert SectionEntrySliceDefRules (procedure, 0.. , Past Procedure entry ,  Past Procedure entry  , CZ_ProcedureHdr)


// -------------------------------------
// Immunizations Section 0 … 1
// -------------------------------------

* section contains sectionImmunizations ..1

* section[sectionImmunizations]
  * insert SectionComRules (
    Immunizations Section,
      The Immunizations Section defines a patient's current immunization status and pertinent immunization history.\r\nThe primary use case for the Immunization Section is to enable communication of a patient's immunization status.\r\nThe section includes current immunization status\, and may contain the entire immunization history that is relevant to the period of time being summarized.
      , $loinc#11369-6 )   // CODE "History of Immunization Narrative"
  * entry 1..
  * entry only Reference(CZ_ImmunizationHdr  or ImmunizationRecommendationEuHdr
                          or DocumentReference  )
  * insert SectionEntrySliceComRules ( Patient's immunization status and pertinent history.
    , It defines the patient's current immunization status and pertinent immunization history.\r\nThe primary use case for the Immunization Section is to enable communication of a patient's immunization status.\r\n It may contain the entire immunization history that is relevant to the period of time being summarized. This entry shall be used to document that no information about immunizations is available\, or that no immunizations are known. ) //'


  // entry slices
  * insert SectionEntrySliceDefRules (immunization, 0.. , Immunization entry ,
    Immunization entry  , CZ_ImmunizationHdr)


// -------------------------------------
// Family History Section 0 … 1
// -------------------------------------
* section contains sectionFamilyHistory ..1
* section[sectionFamilyHistory]
  * insert SectionComRules (
    Family History Section,
      This section contains data defining the patient’s genetic relatives in terms of possible or relevant health risk factors that have a potential impact on the patient’s healthcare risk profile.
      ,  http://loinc.org#10157-6  )   // CODE
  * entry 0..
  * entry only Reference(CZ_FamilyMemberHistoryHdr)
  * entry ^short = "Family History"
  * entry ^definition = "Family History"

// -------------------------------------
// Use of substances Section
// -------------------------------------
* section contains sectionSubstanceUse ..1
* section[sectionSubstanceUse]
  * insert SectionComRules (
    Use of Substances Section,
    The Use of Substances Section contains a description of the use abuse of substances E.g. tobacco; alcohol; drugs,
    TemporaryHDRSystem#substance-use  )   // CODE
  * entry 0..
  * entry only Reference(Observation) // or $Observation-alcoholuse-uv-ips or $Observation-tobaccouse-uv-ips

// -------------------------------------
// Alcohol use Section
// -------------------------------------
* section contains sectionAlcoholUse ..1
* section[sectionAlcoholUse]
  * insert SectionComRules (
    Alcohol use Section,
    The Alcohol use Section contains a description of the use abuse of alcohol,
    $loinc#11331-6  )   // History of Alcohol use
  * entry 0..
  * entry only Reference(Observation)

// -------------------------------------
// Tobacco use Section
// -------------------------------------
* section contains sectionTobaccoUse ..1
* section[sectionTobaccoUse]
  * insert SectionComRules (
    Tobacco use Section,
    The Tobacco use Section contains a description of the use abuse of tobacco,
    $loinc#11367-0  )   // History of Tobacco use
  * entry 0..
  * entry only Reference(Observation)

// -------------------------------------
// Drug use Section
// -------------------------------------
* section contains sectionDrugUse ..1
* section[sectionDrugUse]
  * insert SectionComRules (
    Drug use Section,
    The Drug use Section contains a description of the use abuse of drugs,
    $loinc#11343-1  )   // History of Other nonmedical drug use
  * entry 0..
  * entry only Reference(Observation)

// -------------------------------------
// Problem List Section 0 … 1
// covers the active part of the History of Past Illness heading
// -------------------------------------


// -------------------------------------
* section contains sectionHistoryMedicalDevices 0..1
* section[sectionHistoryMedicalDevices]
  * insert SectionComRules (
    History of Medical devices and implants,
    The medical devices section contains narrative text and coded entries describing the patient history of medical device use.,
    $loinc#46264-8) // History of medical device use
    // $sct#1184586001) //"Medical device document section (record artifact\)
  * entry 0..
  * entry only Reference(CZ_DeviceUseStatementHdr or CZ_ProcedureHdr ) // DeviceUseStatementEuHdr also ?
  * section ..0