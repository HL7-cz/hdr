Instance: DeviceUseStatement-Pacemaker
InstanceOf: CZ_DeviceUseStatementHdr
Usage: #example
Title: "Použití kardiostimulátoru"
Description: "Záznam o implantaci kardiostimulátoru z důvodu bradykardie"
* status = #active
* subject = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000)
* device = Reference(Device-Pacemaker)
* timingDateTime = "2023-04-10"
* reasonCode[0] = $icd10#I50 "Heart failure"
* reasonReference[0] = Reference(CZ-Condition-HDR-Example) "Bradykardie"
* bodySite = $sct#51185008 "Thorax"

//----------------------------------------------------------------------------------------
Instance: Device-Pacemaker
InstanceOf: CZ_MedicalDevice
Usage: #example
Description: "Heart pacemaker Medtronic W1DR01"
* id = "Device-Pacemaker"
* meta.profile[0] = "https://hl7.cz/fhir/core/StructureDefinition/cz-medical-device"
* manufacturer = "Medtronic"
* modelNumber = "W1DR01"
* type = $sct#14106009 "Cardiac pacemaker"
* patient = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000) "Pokusný pacient Mračena"