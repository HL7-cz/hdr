Instance: alerts2FHIR-cz-hdr
InstanceOf: ConceptMap
Usage: #definition
* url = "https://hl7.cz/fhir/hdr/ConceptMap/alerts2FHIR-cz-hdr"
* name = "Alerts2FHIRCzHdr"
* title = "CZ Alerts Model to this guide Map"
* status = #draft
* experimental = true
* description = """eHN HDR Alerts Model to this guide mapping"""
* group[+].source = "https://hl7.cz/fhir/hdr/StructureDefinition/AlertsCz"
* group[=].target = "https://hl7.cz/fhir/hdr/StructureDefinition/cz-allergyIntolerance-hdr"

* group[=].element[+].code = #Alerts.allergy
* group[=].element[=].display = "A.2.2.1 - Allergy and Intolerance"
* group[=].element[=].target.code = #AllergyIntolerance
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #Alerts.allergy.description
* group[=].element[=].display = "A.2.2.1.1 - Allergy description"
* group[=].element[=].target.code = #AllergyIntolerance.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #Alerts.allergy.agent
* group[=].element[=].display = "A.2.2.1.2 - Agent or Allergen"
* group[=].element[=].target.code = #AllergyIntolerance.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #Alerts.allergy.typeOfPropensity
* group[=].element[=].display = "A.2.2.1.3 - Type of propensity"
* group[=].element[=].target.code = #AllergyIntolerance.type
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #Alerts.allergy.manifestation
* group[=].element[=].display = "A.2.2.1.4 - Allergy manifestation"
* group[=].element[=].target.code = #AllergyIntolerance.reaction.manifestation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto

* group[=].element[+].code = #Alerts.allergy.criticality
* group[=].element[=].display = "A.2.2.1.5 - Criticality"
* group[=].element[=].target.code = #AllergyIntolerance.criticality
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #Alerts.allergy.onsetDate
* group[=].element[=].display = "A.2.2.1.6 - Onset date"
* group[=].element[=].target.code = #AllergyIntolerance.onset[x]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #Alerts.allergy.endDate
* group[=].element[=].display = "A.2.2.1.7 - End date"
* group[=].element[=].target.code = #AllergyIntolerance.extension:abatement-datetime
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #Alerts.allergy.status
* group[=].element[=].display = "A.2.2.1.8 - Status"
* group[=].element[=].target.code = #AllergyIntolerance.clinicalStatus
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #Alerts.allergy.certainty
* group[=].element[=].display = "A.2.2.1.9 - Certainty"
* group[=].element[=].target.code = #AllergyIntolerance.verificationStatus
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #Alerts.allergy.lastOccurrence
* group[=].element[=].display = "A.2.2.1.10 - Last Occurence"
* group[=].element[=].target.code = #AllergyIntolerance.lastOccurrence
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent


* group[+].source = "https://hl7.cz/fhir/hdr/StructureDefinition/AlertsCz"
* group[=].target = "https://hl7.cz/fhir/hdr/StructureDefinition/cz-composition-hdr"
* group[=].element[+].code = #Alerts.allergy
* group[=].element[=].display = "A.2.2.1 - Allergy and Intolerance"
* group[=].element[=].target.code = #Composition.section:sectionAllergies
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto

* group[=].element[+].code = #Alerts.medicalAlerts
* group[=].element[=].display = "A.2.2.2 - Medical alerts (relevant for the respective hospital stay)"
* group[=].element[=].target.code = #Composition.section:sectionAlerts
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto

* group[=].element[+].code = #Alerts.medicalAlerts.description
* group[=].element[=].display = "A.2.2.2.1 - Healthcare alert description"
* group[=].element[=].target.code = #Composition.section:sectionAlerts.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto


* group[+].source = "https://hl7.cz/fhir/hdr/StructureDefinition/AlertsCz"
* group[=].target = "https://hl7.cz/fhir/hdr/StructureDefinition/cz-flag-hdr"
* group[=].element[+].code = #Alerts.medicalAlerts.description
* group[=].element[=].display = "A.2.2.2.1 - Healthcare alert description"
* group[=].element[=].target.code = #Flag.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "TO BE checked"

* group[=].element[+].code = #Alerts.medicalAlerts.description
* group[=].element[=].display = "A.2.2.2.1 - Healthcare alert description"
* group[=].element[=].target.code = #Flag.code.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "TO BE checked"

* group[=].element[+].code = #Alerts.medicalAlerts.code
* group[=].element[=].display = "A.2.2.2.3 - Healthcare alert code(s)"
* group[=].element[=].target.code = #Flag.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "TO BE checked (cardinality)"

* group[=].element[+].code = #Alerts.medicalAlerts.specialistPhysician
* group[=].element[=].display = "A.2.2.2.4 - Healthcare alert specialist physician"
* group[=].element[=].target.code = #Flag.author
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "TO BE checked"

* group[=].element[+].code = #Alerts.medicalAlerts.comment
* group[=].element[=].display = "A.2.2.2.5 - Healthcare alert comment"
* group[=].element[=].target.code = #Flag.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "TO BE checked"

* group[=].element[+].code = #Alerts.medicalAlerts.priority
* group[=].element[=].display = "A.2.2.2.6 - Healthcare alert priority"
* group[=].element[=].target.code = #Flag.extension:flagPriorityExt
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "TO BE checked"

* group[=].element[+].code = #Alerts.medicalAlerts.period
* group[=].element[=].display = "A.2.2.2.7 - Healthcare alert period"
* group[=].element[=].target.code = #Flag.period
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "TO BE checked"
