Instance: medicationSummary2FHIR-cz-hdr
InstanceOf: ConceptMap
Usage: #definition
* url = "https://hl7.cz/fhir/hdr/ConceptMap/medicationSummary2FHIR-cz-hdr"
* name = "MedicationSummary2FHIRCzHdr"
* title = "eHN Medication Summary Model to this guide Map"
* status = #draft
* experimental = true
* description = """eHN HDR Medication Summary Model to this guide Map"""
* group[+].source = "https://hl7.cz/fhir/hdr/StructureDefinition/MedicationSummaryCz"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-Medication"
* group[=].element[+].code = #MedicationSummary.productCode
* group[=].element[=].display = "A.2.8.2.3 - Code"
* group[=].element[=].target.code = #Medication.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Preferred mapping"
* group[=].element[+].code = #MedicationSummary.productName
* group[=].element[=].display = "A.2.8.2.4 - Brand name"
* group[=].element[=].target.code = #Medication.extension:productName
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #MedicationSummary.activeIngredient
* group[=].element[=].display = "A.2.8.2.5 - Active ingredient list"
* group[=].element[=].target.code = #Medication.ingredient.item[x]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.comment = "Medication.ingredient.isActive = true"
* group[=].element[+].code = #MedicationSummary.strength
* group[=].element[=].display = "A.2.8.2.6 - Strength"
* group[=].element[=].target.code = #Medication.ingredient.strength
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #MedicationSummary.doseForm
* group[=].element[=].display = "A.2.8.2.7 - Pharmaceutical dose form"
* group[=].element[=].target.code = #Medication.form
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equal
* group[+].source = "https://hl7.cz/fhir/hdr/StructureDefinition/MedicationSummaryCz"
* group[=].target = "http://hl7.org/fhir/StructureDefinition/MedicationDispense"
* group[=].element[+].code = #MedicationSummary.productCode
* group[=].element[=].display = "A.2.8.2.3 - Code"
* group[=].element[=].target.code = #MedicationDispense.medicationCodeableConcept
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "If no details about the medication are provided"
* group[+].source = "https://hl7.cz/fhir/hdr/StructureDefinition/MedicationSummaryCz"
* group[=].target = "https://hl7.cz/fhir/hdr/StructureDefinition/cz-medicationRequest-hdr"
* group[=].element[+].code = #MedicationSummary.reason
* group[=].element[=].display = "A.2.8.2.1 - Medication reason"
* group[=].element[=].target.code = #MedicationRequest.status
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.comment = "As reason for ordering"
* group[=].element[+].code = #MedicationSummary.changeReason
* group[=].element[=].display = "A.2.8.2.2 - Reason for change"
* group[=].element[=].target.code = #MedicationRequest.statusReason
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #MedicationSummary.productCode
* group[=].element[=].display = "A.2.8.2.3 - Code"
* group[=].element[=].target.code = #MedicationRequest.medicationCodeableConcept
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "If no details about the medication are provided"
* group[=].element[+].code = #MedicationSummary.daysSupplied
* group[=].element[=].display = "A.2.8.2.11 - Days supplied"
* group[=].element[=].target.code = #MedicationDispense.daysSupply
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "https://hl7.cz/fhir/hdr/StructureDefinition/MedicationSummaryCz"
* group[=].target = "http://hl7.org/fhir/StructureDefinition/Dosage"
* group[=].element[+].code = #MedicationSummary.dosageRegimen
* group[=].element[=].display = "A.2.8.2.8 - Dosage Regimen"
* group[=].element[=].target.code = #Dosage
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "MedicationRequest.dosageInstruction or MedicationDispense.dosageInstruction"
* group[=].element[+].code = #MedicationSummary.route
* group[=].element[=].display = "A.2.8.2.9 - Route of administration"
* group[=].element[=].target.code = #Dosage.route
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #MedicationSummary.period
* group[=].element[=].display = "A.2.8.2.10 - Period of treatment"
* group[=].element[=].target.code = #Dosage.timing.repeat.duration
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "CHECK it is used the name period but the imression is that is the duration not the period"
