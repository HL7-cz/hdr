Instance: subject2FHIR-cz-hdr
InstanceOf: ConceptMap
Usage: #definition
* url = "https://hl7.cz/fhir/hdr/ConceptMap/subject2FHIR-cz-hdr"
* name = "Subject2FHIRCzHdr"
* title = "eHN Subject Model to this guide Map"
* status = #draft
* experimental = true
* description = """eHN HDR Subject Model to this guide mapping"""
* group[+].source = "https://hl7.cz/fhir/hdr/StructureDefinition/SubjectCz"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-patient-core"
* group[=].element[+].code = #subjectIdentification
* group[=].element[=].display = "A.1.1 - Identification of the patient/subject"
* group[=].element[=].target.code = #Patient
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #subjectIdentification.given
* group[=].element[=].display = "A.1.1.1 - Given name"
* group[=].element[=].target.code = #Patient.name.given					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equal					
* group[=].element[+].code = #subjectIdentification.family
* group[=].element[=].display = "A.1.1.2 - Family name/surname"
* group[=].element[=].target.code = #Patient.name.family					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equal					
* group[=].element[+].code = #subjectIdentification.birthDate
* group[=].element[=].display = "A.1.1.3 - Date of birth"
* group[=].element[=].target.code = #Patient.birthDate					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equal					
* group[=].element[+].code = #subjectIdentification.identifier
* group[=].element[=].display = "A.1.1.4 - National healthcare patient ID"
* group[=].element[=].target.code = #Patient.identifier					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equal					
* group[=].element[+].code = #subjectIdentification.Citizenship
* group[=].element[=].display = "A.1.1.5 - Citizenship"
* group[=].element[=].target.code = #Patient.extension:Citizenship.valueCodeableConcept		
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #subjectIdentification.gender
* group[=].element[=].display = "A.1.1.6 - Gender"
* group[=].element[=].target.code = #Patient.gender					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equal					
* group[=].element[+].code = #subjectIdentification.Communication
* group[=].element[=].display = "A.1.1.7 - Communication - Language"
* group[=].element[=].target.code = #Patient.Communication
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equal					
* group[=].element[+].code = #subjectContact
* group[=].element[=].display = "A.1.2 - Patient/subject related contact information"
* group[=].element[=].target.code = #Patient					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #subjectContact.personalContact
* group[=].element[=].display = "A.1.2.1 - Patient address"
* group[=].element[=].target.code = #Patient					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #subjectContact.personalContact.address
* group[=].element[=].display = "A.1.2.1.1 - Address"
* group[=].element[=].target.code = #Patient.address					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #subjectContact.personalContact.telecom
* group[=].element[=].display = "A.1.2.1.2 - Telecom"
* group[=].element[=].target.code = #Patient.telecom					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #subjectContact.preferredHP
* group[=].element[=].display = "A.1.2.2 - Preferred health professional (HP) - This section can be repeated and linked to any specific information in the document, for example a link between a rare disease problem and the rare disease specialist responsible for the care of the individual patient (this section)."
* group[=].element[=].target.code = #Patient.generalPractitioner					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #subjectContact.contactPerson
* group[=].element[=].display = "A.1.2.3 - Contact person/ legal guardian (multiple contacts could be provided)"
* group[=].element[=].target.code = #Patient.contact					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #subjectContact.contactPerson.role
* group[=].element[=].display = "A.1.2.3.1 - Role of that person"
* group[=].element[=].target.code = #Patient.contact.relationship:role					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #subjectContact.contactPerson.relationship
* group[=].element[=].display = "A.1.2.3.2 - Relationship level"
* group[=].element[=].target.code = #Patient.contact.relationship:type				
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #subjectContact.contactPerson.given
* group[=].element[=].display = "A.1.2.3.4 - Given name"
* group[=].element[=].target.code = #Patient.contact.name.given					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #subjectContact.contactPerson.family
* group[=].element[=].display = "A.1.2.3.5 - Family name/surname"
* group[=].element[=].target.code = #Patient.contact.name.family					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equal					
* group[=].element[+].code = #subjectContact.contactPerson.address
* group[=].element[=].display = "A.1.2.3.6 - Address"
* group[=].element[=].target.code = #Patient.contact.address					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #subjectContact.contactPerson.telecom
* group[=].element[=].display = "A.1.2.3.7 - Telecom"
* group[=].element[=].target.code = #Patient.contact.telecom					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #subjectContact.contactPerson.organization
* group[=].element[=].display = "A.1.2.3.8 - Contact person organisation"
* group[=].element[=].target.code = #Patient.contact					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[+].source = "https://hl7.cz/fhir/hdr/StructureDefinition/SubjectCz"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-practitioner-core"
* group[=].element[+].code = #subjectContact.preferredHP
* group[=].element[=].display = "A.1.2.2 - Preferred health professional (HP) - This section can be repeated and linked to any specific information in the document, for example a link between a rare disease problem and the rare disease specialist responsible for the care of the individual patient (this section)."
* group[=].element[=].target.code = #Practictioner
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #subjectContact.preferredHP.identifier
* group[=].element[=].display = "A.1.2.2.1 - Identifier of the HP"
* group[=].element[=].target.code = #Practictioner.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #subjectContact.preferredHP.name
* group[=].element[=].display = "A.1.2.2.2 - Name of the HP"
* group[=].element[=].target.code = #Practictioner.name					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #subjectContact.preferredHP.address
* group[=].element[=].display = "A.1.2.2.5 - Address"
* group[=].element[=].target.code = #Practictioner.address
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #subjectContact.preferredHP.telecom
* group[=].element[=].display = "A.1.2.2.6 - Telecom"
* group[=].element[=].target.code = #Practictioner.telecom
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[+].source = "https://hl7.cz/fhir/hdr/StructureDefinition/SubjectCz"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-practitionerrole-core"
* group[=].element[+].code = #subjectContact.preferredHP
* group[=].element[=].display = "A.1.2.2 - Preferred health professional (HP) - This section can be repeated and linked to any specific information in the document, for example a link between a rare disease problem and the rare disease specialist responsible for the care of the individual patient (this section)."
* group[=].element[=].target.code = #PractictionerRole
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "preferred"
* group[=].element[+].code = #subjectContact.preferredHP.identifier
* group[=].element[=].display = "A.1.2.2.1 - Identifier of the HP"
* group[=].element[=].target.code = #PractictionerRole.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "preferred"
* group[=].element[+].code = #subjectContact.preferredHP.name
* group[=].element[=].display = "A.1.2.2.2 - Name of the HP"
* group[=].element[=].target.code = #PractictionerRole.practictioner.name					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "preferred"
* group[=].element[+].code = #subjectContact.preferredHP.role
* group[=].element[=].display = "A.1.2.2.3 - Role of the HP"
* group[=].element[=].target.code = #PractictionerRole.code					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #subjectContact.preferredHP.organization
* group[=].element[=].display = "A.1.2.2.4 - HP Organisation"
* group[=].element[=].target.code = #PractictionerRole.organization					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #subjectContact.preferredHP.address
* group[=].element[=].display = "A.1.2.2.5 - Address"
* group[=].element[=].target.code = #PractictionerRole.address
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "preferred"
* group[=].element[+].code = #subjectContact.preferredHP.telecom
* group[=].element[=].display = "A.1.2.2.6 - Telecom"
* group[=].element[=].target.code = #PractictionerRole.telecom
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "preferred"

