Instance: hdrHeader2FHIR-cz-hdr
InstanceOf: ConceptMap
Usage: #definition
* url = "https://hl7.cz/fhir/hdr/ConceptMap/hdrHeader2FHIR-cz-hdr"
* name = "Header2FHIRczHdr"
* title = "CZ Header Model to this guide Map"
* status = #draft
* experimental = true
* description = """CZ HDR Header Model to this guide mapping"""
* group[+].source = "https://hl7.cz/fhir/hdr/StructureDefinition/LMHeaderHdrCz"
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
* group[+].source = "https://hl7.cz/fhir/hdr/StructureDefinition/LMHeaderHdrCz"
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
* group[+].source = "https://hl7.cz/fhir/hdr/StructureDefinition/LMHeaderHdrCz"
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
* group[+].source = "https://hl7.cz/fhir/hdr/StructureDefinition/Header"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-organization-core"
* group[=].element[+].code = #Header.payer.insuranceCode
* group[=].element[=].display = "A.1.3.1 - Health insurance code"
* group[=].element[=].target.code = #Organization.identifier.KP
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Header.payer.insuranceName
* group[=].element[=].display = "A.1.3.2 - Health insurance name"
* group[=].element[=].target.code = #Organization.name
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "https://hl7.cz/fhir/hdr/StructureDefinition/Header"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-coverage"
* group[=].element[+].code = #Header.coverage.insuranceNumber
* group[=].element[=].display = "A.1.3.3 - insuranceNumber"
* group[=].element[=].target.code = #CZ_Coverage.identifer
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "https://hl7.cz/fhir/hdr/StructureDefinition/Header"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-patient-core"
* group[=].element[+].code = #Header.subject
* group[=].element[=].display = "A.1.1 - Identification and A.1.2 - related contact information of the Patient/subject"
* group[=].element[=].target.code = #Patient
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Composition.subject.ofType(Patient).conformsTo('https://hl7.cz/fhir/core/StructureDefinition/cz-patient-core')"
* group[=].element[+].code = #Header.payer.insuranceNumber
* group[=].element[=].display = "A.1.3.3 - Health insurance number"
* group[=].element[=].target.code = #Patient.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "If treated as one of the Patient identifiers; this applies in some jurisdictions."
* group[+].source = "https://hl7.cz/fhir/hdr/StructureDefinition/Header"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-practitionerrole-core"
* group[=].element[+].code = #Header.informationRecipient.identifier
* group[=].element[=].display = "A.1.4.1 - Recipient identifier"
* group[=].element[=].target.code = #PractitionerRole.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Composition.extension:information-recipient.valueReference.resolve()"
* group[=].element[+].code = #Header.author
* group[=].element[=].display = "A.1.5 - Author (by whom the Hospital discharge report was/were authored). Multiple authors could be provided."
* group[=].element[=].target.code = #PractitionerRole
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Composition.author.resolve().ofType(PractitionerRole).confirmsTo('https://hl7.cz/fhir/core/StructureDefinition/cz-practitioner-core')"
* group[=].element[+].code = #Header.author.identifier
* group[=].element[=].display = "A.1.5.1 - Author identifier"
* group[=].element[=].target.code = #PractitionerRole.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Header.author.name
* group[=].element[=].display = "A.1.5.2 - Author name"
* group[=].element[=].target.code = #PractitionerRole.practictioner.name
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "If PractitionerRole"
* group[=].element[+].code = #Header.author.organizationID
* group[=].element[=].display = "A.1.5.3 - Author organisation ID"
* group[=].element[=].target.code = #PractitionerRole.organization.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "If Organization"
* group[=].element[+].code = #Header.author.organization
* group[=].element[=].display = "A.1.5.4 - Author organisation"
* group[=].element[=].target.code = #PractitionerRole.organization
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #Header.attester
* group[=].element[=].display = "A.1.6 - Attester (multiple attesters could be provided)"
* group[=].element[=].target.code = #PractitionerRole
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "where attester.mode = 'professional' AND Composition.attester.party.resolve().ofType(PractitionerRole).confirmsTo('https://hl7.cz/fhir/core/StructureDefinition/cz-practitionerrole-core')"
* group[=].element[+].code = #Header.attester.identifier
* group[=].element[=].display = "A.1.6.1 - Attester identifier"
* group[=].element[=].target.code = #PractitionerRole.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Header.attester.name
* group[=].element[=].display = "A.1.6.2 - Attester name"
* group[=].element[=].target.code = #PractitionerRole.practictioner.name
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Header.attester.organizationID
* group[=].element[=].display = "A.1.6.3 - Attester organisation ID"
* group[=].element[=].target.code = #PractitionerRole.organization.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Header.attester.organization
* group[=].element[=].display = "A.1.6.4 - Attester organisation"
* group[=].element[=].target.code = #PractitionerRole.organization
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Header.legalAuthenticator
* group[=].element[=].display = "A.1.7 - Legal authenticator (The person taking responsibility for the medical content of the document)"
* group[=].element[=].target.code = #PractitionerRole
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "where attester.mode = 'legal' AND Composition.attester.party.resolve().ofType(PractitionerRole).conformsTo('https://hl7.cz/fhir/core/StructureDefinition/cz-practitionerrole-core')"
* group[=].element[+].code = #Header.legalAuthenticator.identifier
* group[=].element[=].display = "A.1.7.1 - Legal authenticator identifier"
* group[=].element[=].target.code = #PractitionerRole.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "where attester.mode = 'legal'"
* group[=].element[+].code = #Header.legalAuthenticator.name
* group[=].element[=].display = "A.1.7.2 - Legal authenticator name"
* group[=].element[=].target.code = #PractitionerRole.practictioner.name
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "where attester.mode = 'legal'"
* group[=].element[+].code = #Header.legalAuthenticator.organizationID
* group[=].element[=].display = "A.1.7.3 - Legal authenticator organisation ID"
* group[=].element[=].target.code = #PractitionerRole.organization.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "where attester.mode = 'legal'"
* group[=].element[+].code = #Header.legalAuthenticator.organization
* group[=].element[=].display = "A.1.7.4 - Legal authenticator organisation"
* group[=].element[=].target.code = #PractitionerRole.organization
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "where attester.mode = 'legal'"
* group[+].source = "https://hl7.cz/fhir/hdr/StructureDefinition/Header"
* group[=].target = "https://hl7.cz/fhir/hdr/StructureDefinition/cz-bundle-hdr"
* group[=].element[+].code = #Header.documentMetadata.identifier
* group[=].element[=].display = "A.1.8.1 - Document ID"
* group[=].element[=].target.code = #Bundle.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "If it is the identifier of a particular report instance"
* group[=].element[+].code = #Header.documentMetadata.dateTime
* group[=].element[=].display = "A.1.8.4 - Report date and time"
* group[=].element[=].target.code = #Bundle.timeStamp
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "If it is when this particular version of  this report has been assembled into a Bundle."
* group[+].source = "https://hl7.cz/fhir/hdr/StructureDefinition/Header"
* group[=].target = "https://hl7.cz/fhir/hdr/StructureDefinition/cz-composition-hdr"
* group[=].element[+].code = #Header.subject
* group[=].element[=].display = "A.1.1 - Identification and A.1.2 - related contact information of the Patient/subject"
* group[=].element[=].target.code = #Composition.subject
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Header.payer
* group[=].element[=].display = "A.1.3 - Health insurance and payment information - Health insurance information is not always required, however, in some jurisdictions, the insurance number is also used as the patient identifier. It is necessary not just for identification but also forms access to funding for care."
* group[=].element[=].target.code = #Composition.extension:basedOn:order
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "To be disucssed if the payor data are conveyed with the request or thorugh other means. Check also the extension to be used."
* group[=].element[+].code = #Header.payer
* group[=].element[=].display = "A.1.3 - Health insurance and payment information - Health insurance information is not always required, however, in some jurisdictions, the insurance number is also used as the patient identifier. It is necessary not just for identification but also forms access to funding for care."
* group[=].element[=].target.code = #Composition.section:sectionPayers.entry
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Composition.section:sectionPayers.entry.ofType(Coverage).conformsTo('https://hl7.cz/fhir/core/StructureDefinition/cz-coverage')"
* group[=].element[+].code = #Header.informationRecipient
* group[=].element[=].display = "A.1.4 - Information recipient - (intended recipient or recipients of the report), if applicable"
* group[=].element[=].target.code = #Composition.extension:information-recipient
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Composition.extension:information-recipient.valueReference.resolve().ofType(PracittionerRole)"
* group[=].element[+].code = #Header.informationRecipient.name
* group[=].element[=].display = "A.1.4.2 - Recipient name"
* group[=].element[=].target.code = #PractitionerRole.practitioner.name
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Header.informationRecipient.organizationID
* group[=].element[=].display = "A.1.4.3 - Recipient organisation ID"
* group[=].element[=].target.code = #PractitionerRole.practitioner.organization.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Header.informationRecipient.organization
* group[=].element[=].display = "A.1.4.4 - Recipient organisation"
* group[=].element[=].target.code = #PractitionerRole.practitioner.organization
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #Header.informationRecipient.address
* group[=].element[=].display = "A.1.4.5 - Address"
* group[=].element[=].target.code = #PractitionerRole.address
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #Header.informationRecipient.country
* group[=].element[=].display = "A.1.4.6 - Country"
* group[=].element[=].target.code = #PractitionerRole.country
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #Header.informationRecipient.telecom
* group[=].element[=].display = "A.1.4.7 - Telecom"
* group[=].element[=].target.code = #PractitionerRole.telecom
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #Header.author
* group[=].element[=].display = "A.1.5 - Author (by whom the Hospital discharge report was/were authored). Multiple authors could be provided."
* group[=].element[=].target.code = #Composition.author
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Header.author.dateTime
* group[=].element[=].display = "A.1.5.5 - Date Time"
* group[=].element[=].target.code = #Composition.date
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Header.attester
* group[=].element[=].display = "A.1.6 - Attester (multiple attesters could be provided)"
* group[=].element[=].target.code = #Composition.attester.party
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "where attester.mode = 'professional'"
* group[=].element[+].code = #Header.attester.dateTime
* group[=].element[=].display = "A.1.6.5 - Approval date and time"
* group[=].element[=].target.code = #Composition.attester.time
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #Header.legalAuthenticator
* group[=].element[=].display = "A.1.7 - Legal authenticator (The person taking responsibility for the medical content of the document)"
* group[=].element[=].target.code = #Composition.attester.party
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "where attester.mode = 'legal'"
* group[=].element[+].code = #Header.legalAuthenticator.dateTime
* group[=].element[=].display = "A.1.7.5 - Authentication date and time"
* group[=].element[=].target.code = #Composition.attester.time
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.comment = "where attester.mode = 'legal'"
* group[=].element[+].code = #Header.documentMetadata
* group[=].element[=].display = "A.1.8 - Document metadata"
* group[=].element[=].target.code = #Composition
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #Header.documentMetadata.type
* group[=].element[=].display = "A.1.8.2 - Document type"
* group[=].element[=].target.code = #Composition.type
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Header.documentMetadata.status
* group[=].element[=].display = "A.1.8.3 - Document status"
* group[=].element[=].target.code = #Composition.status
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Header.documentMetadata.dateTime
* group[=].element[=].display = "A.1.8.4 - Report date and time"
* group[=].element[=].target.code = #Composition.date
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "If it is when this document has been created (indipendently by its version)"
* group[=].element[+].code = #Header.documentMetadata.title
* group[=].element[=].display = "A.1.8.5 - Document title"
* group[=].element[=].target.code = #Composition.title
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Header.documentMetadata.custodian
* group[=].element[=].display = "A.1.8.6 - Report custodian"
* group[=].element[=].target.code = #Composition.custodian
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Header.documentMetadata.confidentiality
* group[=].element[=].display = "A.1.8.7 - Confidentiality"
* group[=].element[=].target.code = #Composition.confidentiality
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Header.documentMetadata.language
* group[=].element[=].display = "A.1.8.8 - Language"
* group[=].element[=].target.code = #Composition.language
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #Header.documentMetadata.version
* group[=].element[=].display = "A.1.8.9 - Version"
* group[=].element[=].target.code = #Composition.extension:versionNumber.valueString
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "As business version, not as resource version"

