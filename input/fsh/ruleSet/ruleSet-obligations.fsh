//platí pro danou úroveň konformity L1 - L3 - z pohledu daného typu EHR systému

RuleSet: OblCreator(code, level)
* ^extension[$obligation][+].extension[code].valueCode = {code}
* ^extension[$obligation][=].extension[actor].valueCanonical = $creator{level}

RuleSet: OblConsumer(code, level)
* ^extension[$obligation][+].extension[code].valueCode = {code}
* ^extension[$obligation][=].extension[actor].valueCanonical = $consumer{level}