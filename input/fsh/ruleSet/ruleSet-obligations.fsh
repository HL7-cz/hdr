//platí pro L3 - podrobná forma strukturovaných dat z pohledu systému (EHR)

RuleSet: ObligationSet-01_creator-shall-able
* insert ObligationActorAndCode($consumer, #SHALL:display)
* insert ObligationActorAndCode($creator, #SHALL:able-to-populate)

RuleSet: ObligationSet-02_creator-should-able
* insert ObligationActorAndCode($consumer, #SHALL:display)
* insert ObligationActorAndCode($creator, #SHOULD:able-to-populate)

RuleSet: ObligationSet-03_creator-shall-if-known
* insert ObligationActorAndCode($consumer, #SHALL:display)
* insert ObligationActorAndCode($creator, #SHALL:populate-if-known)

RuleSet: ObligationSet-04_creator-should-if-known
* insert ObligationActorAndCode($consumer, #SHALL:display)
* insert ObligationActorAndCode($creator, #SHOULD:populate-if-known)

RuleSet: OblCreator(code)
* ^extension[$obligation][+].extension[code].valueCode = {code}
* ^extension[$obligation][=].extension[actor].valueCanonical = $creator

RuleSet: OblConsumer(code)
* ^extension[$obligation][+].extension[code].valueCode = {code}
* ^extension[$obligation][=].extension[actor].valueCanonical = $consumer