RuleSet: MedicationCZ_Obligations
* ^extension[$obligation][+].extension[actor].valueCanonical = $creator
* ^extension[$obligation][=].extension[code].valueCode = #SHALL
* code ^extension[$obligation][+].extension[actor].valueCanonical = $creator
* code ^extension[$obligation][=].extension[code].valueCode = #SHALL
* form ^extension[$obligation][+].extension[actor].valueCanonical = $creator
* form ^extension[$obligation][=].extension[code].valueCode = #SHALL
* amount ^extension[$obligation][+].extension[actor].valueCanonical = $creator
* amount ^extension[$obligation][=].extension[code].valueCode = #SHALL
* ingredient ^extension[$obligation][+].extension[actor].valueCanonical = $creator
* ingredient ^extension[$obligation][=].extension[code].valueCode = #SHALL
* identifier ^extension[$obligation][+].extension[actor].valueCanonical = $server
* identifier ^extension[$obligation][=].extension[code].valueCode = #SHALL

RuleSet: MedicationDispense_Obligations
* ^extension[$obligation][+].extension[actor].valueCanonical = $creator
* ^extension[$obligation][=].extension[code].valueCode = #SHALL
* medicationReference ^extension[$obligation][+].extension[actor].valueCanonical = $server
* medicationReference ^extension[$obligation][=].extension[code].valueCode = #SHALL
* subject ^extension[$obligation][+].extension[actor].valueCanonical = $server
* subject ^extension[$obligation][=].extension[code].valueCode = #SHALL
* quantity ^extension[$obligation][+].extension[actor].valueCanonical = $creator
* quantity ^extension[$obligation][=].extension[code].valueCode = #SHALL
* whenHandedOver ^extension[$obligation][+].extension[actor].valueCanonical = $creator
* whenHandedOver ^extension[$obligation][=].extension[code].valueCode = #SHALL
