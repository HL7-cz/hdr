Instance: DeviceUseStatement-Pacemaker
InstanceOf: CZ_DeviceUseStatementHdr
Usage: #example
Title: "Použití kardiostimulátoru"
Description: "Záznam o implantaci kardiostimulátoru z důvodu bradykardie"
* status = #active
* subject = Reference(Patient-Novak-Petr)
* device = Reference(Device-Pacemaker)
* timingDateTime = "2023-04-10"
* reasonCode[0] = $icd10#I50 "Heart failure"
* reasonReference[0] = Reference(CZ-Condition-HDR-Example) "Bradykardie"
* bodySite = $sct#51185008 "Struktura pravé podklíčkové oblasti"

//----------------------------------------------------------------------------------------
Instance: Device-Pacemaker
InstanceOf: CZ_MedicalDevice
Usage: #example
Description: "Heart pacemaker Medtronic W1DR01"
* id = "Device-Pacemaker"
* meta.profile[0] = "https://hl7.cz/fhir/core/StructureDefinition/cz-medical-device"
* manufacturer = "Medtronic"
* modelNumber = "W1DR01"
* type = $sct#14106009 "Kardiostimulátor"
* patient = Reference(Patient-Novak-Petr) "Pokusný pacient Mračena"