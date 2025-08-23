/*
RuleSet: ObligationSet1
* insert ObligationActorAndCode($consumer, #SHALL:handle)
// * insert ObligationActorAndCode($server, #will-send)
* insert ObligationActorAndCode($creator, #SHALL:able-to-populate)
// * insert ObligationActorAndCode($creator, #can-populate)

RuleSet: ObligationSet2
* insert ObligationActorAndCode($consumer, #SHALL:handle)
// * insert ObligationActorAndCode($server, #can-send)
// * insert ObligationActorAndCode($creator, #can-send)
* insert ObligationActorAndCode($creator, #SHOULD:able-to-populate)

RuleSet: ObligationSet3
* insert ObligationActorAndCode($consumer, #SHALL:handle)
// * insert ObligationActorAndCode($server, #can-send)
// * insert ObligationActorAndCode($creator, #can-send)
* insert ObligationActorAndCode($creator, #MAY:able-to-populate)
*/

// RuleSet: SetFmmandStatusRule ( fmm, status )
// * ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = {fmm}
// * ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #{status}

// RuleSet: SetFmmandStatusRuleInstance ( fmm, status )
// * extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = {fmm}
// * extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #{status}

// RuleSet: ExtensionContext(path)
// * ^context[+].type = #element
// * ^context[=].expression = "{path}"

// RuleSet: SNOMEDCopyrightForVS
// * ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
// * ^experimental = false