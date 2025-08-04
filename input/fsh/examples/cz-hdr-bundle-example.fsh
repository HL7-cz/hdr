/*// 1. Bundle: Hospital Discharge Report
Instance: DischargeBundle
InstanceOf: CZ_BundleHdr
* meta.profile[0] = "https://hl7.cz/fhir/hdr/StructureDefinition/cz-bundle-hdr"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:c859d718-03c2-43ed-a16c-dbe57a6e34b5"    // unique Bundle ID
* type = #document
* timestamp = "2025-03-10T15:00:00+01:00"

// Bundle Entries (ordered by profile slices):
* entry[0].fullUrl = "urn:uuid:cdae7735-f7ee-4bc7-9cf3-3dc806a4eaaf"
* entry[0].resource = DischargeComposition // Corrected Reference to include the resource type
* entry[0].resource.meta.profile[0] = "https://hl7.cz/fhir/hdr/StructureDefinition/cz-composition-hdr"
* entry[1].fullUrl = "urn:uuid:3f85726c-ad2f-441b-89ce-100000000111"
* entry[1].resource = Mracena2
* entry[2].fullUrl = "urn:uuid:10f5c49e-086d-4016-8dd1-100000000001"
* entry[2].resource = PenicillinAllergy
* entry[3].fullUrl = "urn:uuid:2b7e9637-5018-4542-9faf-100000000002"
* entry[3].resource = StrawberryAllergy
* entry[4].fullUrl = "urn:uuid:35717696-8a99-4f99-a938-100000000003"
* entry[4].resource = MilkAllergy
* entry[5].fullUrl = "urn:uuid:a0ad4739-512c-4bff-8436-100000000004"
* entry[5].resource = AngiodysplasiaCondition
* entry[6].fullUrl = "urn:uuid:6cf80cb1-9766-470f-ac36-100000000005"
* entry[6].resource = IronDeficiencyAnemiaCondition
* entry[7].fullUrl = "urn:uuid:9c913d06-84fe-4d35-b35b-100000000006"
* entry[7].resource = TIACondition
* entry[8].fullUrl = "urn:uuid:47472c99-09bf-4007-bfaa-100000000007"
* entry[8].resource = AtrialFibrillationCondition
* entry[9].fullUrl = "urn:uuid:f34114fc-138f-4bd8-8e1a-100000000008"
* entry[9].resource = HypothyroidismCondition
* entry[10].fullUrl = "urn:uuid:620b1120-cece-44b1-89f5-100000000009"
* entry[10].resource = VaricoseVeinsCondition
* entry[11].fullUrl = "urn:uuid:bf08b62b-0abd-4e88-9092-10000000000a"
* entry[11].resource = OsteoporosisCondition
* entry[12].fullUrl = "urn:uuid:ffb1a62f-9050-4e33-af4b-10000000000b"
* entry[12].resource = HypercholesterolemiaCondition
* entry[13].fullUrl = "urn:uuid:b3f0f517-9c64-4b8f-99d9-10000000000c"
* entry[13].resource = PresbycusisCondition
* entry[14].fullUrl = "urn:uuid:f0b20060-c4a8-4a74-b12a-10000000000d"
* entry[14].resource = Device-Pacemaker
* entry[15].fullUrl = "urn:uuid:6bec5d97-a17e-4015-8fce-10000000000e"
* entry[15].resource = CZ-Encounter-HDR-Example
* entry[16].fullUrl = "urn:uuid:5c2ddf62-9785-493f-80c6-10000000000f"
* entry[16].resource = LevothyroxineMedication
* entry[17].fullUrl = "urn:uuid:7cf304de-5ae3-4621-8531-100000000010"
* entry[17].resource = RivaroxabanMedication
* entry[18].fullUrl = "urn:uuid:5c363e2d-c4e1-436d-bad7-100000000011"
* entry[18].resource = BisoprololMedication
* entry[19].fullUrl = "urn:uuid:4ba395b7-be9e-4bed-bef7-100000000012"
* entry[19].resource = AtorvastatinMedication
* entry[20].fullUrl = "urn:uuid:6c626338-82ba-46a1-bcb8-100000000013"
* entry[20].resource = CalciumD3Medication
* entry[21].fullUrl = "urn:uuid:f95f843e-701f-434a-94c9-100000000014"
* entry[21].resource = IronSupplementMedication
* entry[22].fullUrl = "urn:uuid:a81e74c9-fe94-4eb1-9233-100000000015"
* entry[22].resource = Practitioner-2
* entry[23].fullUrl = "urn:uuid:af4dcfeb-2cb3-4fc8-98e2-100000000016"
* entry[23].resource = PractitionerRole1
* entry[24].fullUrl = "urn:uuid:133cea11-09c6-4147-80af-100000000017"
* entry[24].resource = ColonoscopyProcedure
* entry[25].fullUrl = "urn:uuid:65c49e6d-0951-4e83-8e2c-100000000018"
* entry[25].resource = CZ_OrganizationCore
* entry[26].fullUrl = "urn:uuid:b0001bf8-976a-4d7d-b192-100000000019"
* entry[26].resource = DischargeDocumenPDF
* entry[27].fullUrl = "urn:uuid:e15aeeaf-e288-404c-9704-10000000001a"
* entry[27].resource = DischargeDocumentHTML
* entry[28].fullUrl = "urn:uuid:10f5c49e-086d-4016-8dd1-10000000001b"
* entry[28].resource = CZ-CarePlan-HDR-Example
* entry[29].fullUrl = "urn:uuid:3f85726c-ad2f-441b-89ce-10000000001c"
* entry[29].resource = bloodcount-panel
* entry[30].fullUrl = "urn:uuid:3f85726c-ad2f-441b-89ce-10000000001d"
* entry[30].resource = hb-result
* entry[31].fullUrl = "urn:uuid:3f85726c-ad2f-441b-89ce-10000000001e"
* entry[31].resource = hct-result
* entry[32].fullUrl = "urn:uuid:3f85726c-ad2f-441b-89ce-10000000001f"
* entry[32].resource = rbc-result
* entry[33].fullUrl = "urn:uuid:3f85726c-ad2f-441b-89ce-100000000020"
* entry[33].resource = wbc-result
* entry[34].fullUrl = "urn:uuid:3f85726c-ad2f-441b-89ce-100000000021"
* entry[34].resource = plt-result
* entry[35].fullUrl = "urn:uuid:3f85726c-ad2f-441b-89ce-100000000022"
* entry[35].resource = Location-2
* entry[36].fullUrl = "urn:uuid:3f85726c-ad2f-441b-89ce-100000000023"
* entry[36].resource = Location-3
* entry[37].fullUrl = "urn:uuid:3f85726c-ad2f-441b-89ce-100000000024"
* entry[37].resource = Location-4
* entry[38].fullUrl = "urn:uuid:3f85726c-ad2f-441b-89ce-100000000025"
* entry[38].resource = Location-5
* entry[39].fullUrl = "urn:uuid:3f85726c-ad2f-441b-89ce-100000000026"
* entry[39].resource = CZ-AdvanceDirectives-HDR-DNR
* entry[40].fullUrl = "urn:uuid:3f85726c-ad2f-441b-89ce-100000000027"
* entry[40].resource = Immunization
* entry[41].fullUrl = "urn:uuid:3f85726c-ad2f-441b-89ce-100000000028"
* entry[41].resource = RegisteringProviderExample
* entry[42].fullUrl = "urn:uuid:3f85726c-ad2f-441b-89ce-100000000029"
* entry[42].resource = ExampleSdohAlcohol
* entry[43].fullUrl = "urn:uuid:3f85726c-ad2f-441b-89ce-10000000002a"
* entry[43].resource = ExampleSdohSmoking*/

//----------------------------------------------------------------
// 2. Bundle: Hospital Discharge Report - Novák Petr
Instance: DischargeBundle-Novak-Petr
InstanceOf: CZ_BundleHdr
Description: "Example Bundle for Hospital Discharge Report for patient Novák Petr"
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:c859d718-03c2-43ed-a16c-dbe57a6e34b5"    // unique Bundle ID
* type = #document
* timestamp = "2025-03-10T15:00:00+01:00"
// Bundle Entries (ordered by profile slices):
* entry[composition][0].fullUrl = "urn:uuid:cdae7735-f7ee-4bc7-9cf3-3dc806a4eaaf"
* entry[composition][=].resource = DischargeComposition-Novak-Petr
* entry[patient][+].fullUrl = "urn:uuid:3f85726c-ad2f-441b-89ce-100000000000"
* entry[patient][=].resource = Patient-Novak-Petr
* entry[encounter][+].fullUrl = "urn:uuid:10f5c49e-086d-4016-8dd1-b555306bf620"
* entry[encounter][=].resource = HospitalEncounter-Novak-Petr
* entry[practitionerRole][+].fullUrl = "urn:uuid:2b7e9637-5018-4542-9faf-d5abdee7b849"
* entry[practitionerRole][=].resource = Practitioner-Author-detail
* entry[condition][+].fullUrl = "urn:uuid:35717696-8a99-4f99-a938-ec0ec88a65a2"
* entry[condition][=].resource = Condition-K409
* entry[condition][+].fullUrl = "urn:uuid:fdf9e92d-ac48-4706-b15b-d2eaca85f45f"
* entry[condition][=].resource = Condition-E890-Novak
* entry[allergyIntolerance][+].fullUrl = "urn:uuid:6cf80cb1-9766-470f-ac36-b1d3d8950f1b"
* entry[allergyIntolerance][=].resource = Allergy-Strawberry-Novak
* entry[carePlan][+].fullUrl = "urn:uuid:9c913d06-84fe-4d35-b35b-8b0c7965f535"
* entry[carePlan][=].resource = CarePlan-Novak
* entry[medicationStatement][+].fullUrl = "urn:uuid:47472c99-09bf-4007-bfaa-16c9665ae090"
* entry[medicationStatement][=].resource = MedicationStatement-Euthyrox-Novak
* entry[medicationStatement][+].fullUrl = "urn:uuid:f34114fc-138f-4bd8-8e1a-804d14ec9986"
* entry[medicationStatement][=].resource = MedicationStatement-Paracetamol-Novak
* entry[goal][+].fullUrl = "urn:uuid:620b1120-cece-44b1-89f5-20413054eb1d"
* entry[goal][=].resource = Goal-hernia-treatment
* entry[medicationStatement][+].fullUrl = "urn:uuid:bf08b62b-0abd-4e88-9092-ce0228382e51"
* entry[medicationStatement][=].resource = MedicationStatement-Ibalgin400-Novak
* entry[procedure][+].fullUrl = "urn:uuid:ffb1a62f-9050-4e33-af4b-4cdb8203c9e5"
* entry[procedure][=].resource = Procedure-inguinal-hernia
* entry[consent][+].fullUrl = "urn:uuid:b3f0f517-9c64-4b8f-99d9-72183cfd9ef0"
* entry[consent][=].resource = CZ-AdvanceDirectives-HDR-DNR
* entry[observation][+].fullUrl = "urn:uuid:f0b20060-c4a8-4a74-b12a-6c8f0b2d4e3a"
* entry[observation][=].resource = ExampleBMI
* entry[observation][+].fullUrl = "urn:uuid:6bec5d97-a17e-4015-8fce-7b1c0c3a2f4b"
* entry[observation][=].resource = ExampleChestCircumference
* entry[observation][+].fullUrl = "urn:uuid:5c2ddf62-9785-493f-80c6-8b0d1e3a4b2c"
* entry[observation][=].resource = ExampleHeadCircumference
* entry[observation][+].fullUrl = "urn:uuid:7cf304de-5ae3-4621-8531-9c8f0b2d4e3a"
* entry[observation][=].resource = ExampleAbdominalCircumference
* entry[observation][+].fullUrl = "urn:uuid:5c363e2d-c4e1-436d-bad7-0b3f8c6a9f1d"
* entry[observation][=].resource = ExampleHeight
* entry[observation][+].fullUrl = "urn:uuid:4ba395b7-be9e-4bed-bef7-1c8f0b2d4e3a"
* entry[observation][=].resource = ExampleWeight
* entry[observation][+].fullUrl = "urn:uuid:6c626338-82ba-46a1-bcb8-2c8f0b2d4e3a"
* entry[observation][=].resource = ExampleBloodPressure
* entry[observation][+].fullUrl = "urn:uuid:f95f843e-701f-434a-94c9-3c8f0b2d4e3a"
* entry[observation][=].resource = Observation-TravelHistory-Madagaskar
* entry[practitioner][+].fullUrl = "urn:uuid:a81e74c9-fe94-4eb1-9233-4c8f0b2d4e3a"
* entry[practitioner][=].resource = Practitioner-Author
* entry[observation][+].fullUrl = "urn:uuid:af4dcfeb-2cb3-4fc8-98e2-5c8f0b2d4e3a"
* entry[observation][=].resource = Observation-InfectiousContact
* entry[medicationDispense][+].fullUrl = "urn:uuid:133cea11-09c6-4147-80af-6c8f0b2d4e3a"
* entry[medicationDispense][=].resource = MedicationDispense-Euthyrox
* entry[medicationDispense][+].fullUrl = "urn:uuid:65c49e6d-0951-4e83-8e2c-7c8f0b2d4e3a"
* entry[medicationDispense][=].resource = MedicationDispense-Paracetamol
* entry[medicationDispense][+].fullUrl = "urn:uuid:b0001bf8-976a-4d7d-b192-8c8f0b2d4e3a"
* entry[medicationDispense][=].resource = MedicationDispense-Ibalgin400
* entry[observation][+].fullUrl = "urn:uuid:e15aeeaf-e288-404c-9704-9c8f0b2d4e3a"
* entry[observation][=].resource = Observation-UZV-Novak
* entry[observation][+].fullUrl = "urn:uuid:10f5c49e-086d-4016-8dd1-10000000001b"
* entry[observation][=].resource = Observation-CRP-Novak
* entry[observation][+].fullUrl = "urn:uuid:3f85726c-ad2f-441b-89ce-10000000001c"
* entry[observation][=].resource = ExampleSdohSmoking
* entry[observation][+].fullUrl = "urn:uuid:3f85726c-ad2f-441b-89ce-10000000001d"
* entry[observation][=].resource = ExampleSdohAlcohol
* entry[immunization][+].fullUrl = "urn:uuid:3f85726c-ad2f-441b-89ce-10000000001e"
* entry[immunization][=].resource = Immunization
* entry[deviceUseStatement][+].fullUrl = "urn:uuid:3f85726c-ad2f-441b-89ce-10000000001f"
* entry[deviceUseStatement][=].resource = DeviceUseStatement-Pacemaker
* entry[procedure][+].fullUrl = "urn:uuid:3f85726c-ad2f-441b-89ce-100000000020"
* entry[procedure][=].resource = Procedure-Insert-Pacemaker2
* entry[observation][+].fullUrl = "urn:uuid:3f85726c-ad2f-441b-89ce-100000000021"
* entry[observation][=].resource = Observation-DischargeCondition
* entry[observation][+].fullUrl = "urn:uuid:3f85726c-ad2f-441b-89ce-100000000022"
* entry[observation][=].resource = Observation-Participation-in-society
* entry[observation][+].fullUrl = "urn:uuid:3f85726c-ad2f-441b-89ce-100000000023"
* entry[observation][=].resource = Observation-Work-situation
* entry[observation][+].fullUrl = "urn:uuid:3f85726c-ad2f-441b-89ce-100000000024"
* entry[observation][=].resource = Observation-Hobby
* entry[observation][+].fullUrl = "urn:uuid:3f85726c-ad2f-441b-89ce-100000000025"
* entry[observation][=].resource = Observation-Social-network
* entry[observation][+].fullUrl = "urn:uuid:3f85726c-ad2f-441b-89ce-100000000026"
* entry[observation][=].resource = Observation-Education-level
* entry[observation][+].fullUrl = "urn:uuid:3f85726c-ad2f-441b-89ce-100000000027"
* entry[observation][=].resource = Observation-Education
* entry[organization][+].fullUrl = "urn:uuid:ace081ba-e0a8-4b89-a4a7-c5b7cd3c8169"
* entry[organization][=].resource = Organization-1
* entry[documentReference][+].fullUrl = "urn:uuid:66678621-df93-47ca-a36c-2a39a92472e7"
* entry[documentReference][=].resource = DischargeDocumenPDF
* entry[provenance][+].fullUrl = "urn:uuid:cdae7735-f7ee-4bc7-9cf3-3dc806a4eabb"
* entry[provenance][=].resource = signature-L3


// 2. Bundle: Hospital Discharge Report - Novák Petr
Instance: DischargeBundle-Novak-Petr-L1
InstanceOf: CZ_BundleHdr
Description: "Example Bundle for Hospital Discharge Report for patient Novák Petr"
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:c859d718-03c2-43ed-a16c-dbe57a6e34b5"    // unique Bundle ID
* type = #document
* timestamp = "2025-03-10T15:00:00+01:00"
// Bundle Entries (ordered by profile slices):
* entry[composition][0].fullUrl = "urn:uuid:cdae7735-f7ee-4bc7-9cf3-3dc806a4eaaf"
* entry[composition][=].resource = DischargeComposition-Novak-Petr
* entry[patient][+].fullUrl = "urn:uuid:3f85726c-ad2f-441b-89ce-100000000000"
* entry[patient][=].resource = Patient-Novak-Petr
* entry[practitioner][+].fullUrl = "urn:uuid:a81e74c9-fe94-4eb1-9233-4c8f0b2d4e3a"
* entry[practitioner][=].resource = Practitioner-Author
* entry[practitionerRole][+].fullUrl = "urn:uuid:2b7e9637-5018-4542-9faf-d5abdee7b849"
* entry[practitionerRole][=].resource = Practitioner-Author-detail
* entry[organization][+].fullUrl = "urn:uuid:ace081ba-e0a8-4b89-a4a7-c5b7cd3c8169"
* entry[organization][=].resource = Organization-1
* entry[documentReference][+].fullUrl = "urn:uuid:66678621-df93-47ca-a36c-2a39a92472e7"
* entry[documentReference][=].resource = DischargeDocumenPDF
* entry[provenance][+].fullUrl = "urn:uuid:cdae7735-f7ee-4bc7-9cf3-3dc806a4eaab"
* entry[provenance][=].resource = signature-L1











