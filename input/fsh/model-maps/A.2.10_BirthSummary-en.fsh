Logical: LMEnBirthSummaryHdrCz
Id: LMBirthSummaryEnCz
Title: "A.2.10 - Delivery"
Description: """Hospital Discharge Report – Delivery section. Records key information about the course of labour and delivery and its outcome."""

* mother 0..* BackboneElement "A.2.10.1 - Maternal delivery information"

* mother.gestationalAgeAtDelivery 1..1 string "A.2.10.1.1 - Gestational age at delivery"
"""Gestational age expressed as weeks + days at the time of delivery (e.g. 39+2)."""

* mother.gravidity 1..1 integer "A.2.10.1.2 - Gravidity"
"""Total number of pregnancies."""

* mother.parity 1..1 integer "A.2.10.1.3 - Parity"
"""Total number of prior births."""

* mother.laborInduction 0..1 CodeableConcept "A.2.10.1.4 - Labour pre-induction / induction"
"""Indicates whether labour was induced and the method used. SNOMED CT may be used."""

* mother.birthInjury 1..* BackboneElement "A.2.10.1.5 - Birth injury"

* mother.birthInjury.description 0..* string "A.2.10.1.5.1 - Birth injury description"
"""Textual description of mother birth injury."""

* mother.birthInjury.code 0..* CodeableConcept "A.2.10.1.5.2 - Birth injury code"
"""Coded birth injury, preferably SNOMED CT."""

* mother.multiplePregnancy 0..1 boolean "A.2.10.1.6 - Multiple pregnancy"
"""Indicates whether the pregnancy was multiple (e.g. twins, triplets)."""

* mother.fetusCount 0..1 integer "A.2.10.1.6.1 - Number of fetuses"
"""Number of fetuses/newborns in case of multiple pregnancy."""


* newborn 0..* BackboneElement "A.2.10.2 - Fetus/Newborn"

* newborn.birthDateTime 1..1 dateTime "A.2.10.2.1 - Date and time of birth"
"""Date and time when the newborn was delivered."""

* newborn.fetalPresentation 1..1 CodeableConcept "A.2.10.2.2 - Fetal presentation during delivery"
"""Presentation/position of the fetus during delivery. SNOMED CT may be used."""

* newborn.deliveryMethod 1..1 CodeableConcept "A.2.10.2.3 - Delivery method"
"""Method of delivery (e.g. spontaneous vaginal delivery, assisted delivery, caesarean section). SNOMED CT may be used."""

* newborn.birthOutcome 1..1 CodeableConcept "A.2.10.2.4 - Birth outcome"
"""Outcome at birth (e.g. live birth, stillbirth)."""

* newborn.sex 1..1 CodeableConcept "A.2.10.2.5 - Newborn sex"
"""Administrative sex of the newborn (male, female, unknown)."""

* newborn.birthWeight 1..1 Quantity "A.2.10.2.6 - Birth weight"
"""Birth weight of the newborn in grams."""

* newborn.birthLength 1..1 Quantity "A.2.10.2.7 - Birth length"
"""Birth length of the newborn in centimetres."""

* newborn.apgarScore 1..1 BackboneElement "A.2.10.2.8 - Apgar score"

* newborn.apgarScore.minute1 1..1 integer "A.2.10.2.8.1 - Apgar score at 1 minute"
"""Apgar score assessed at 1 minute after birth (0–10)."""

* newborn.apgarScore.minute5 1..1 integer "A.2.10.2.8.2 - Apgar score at 5 minutes"
"""Apgar score assessed at 5 minutes after birth (0–10)."""

* newborn.apgarScore.minute10 1..1 integer "A.2.10.2.8.3 - Apgar score at 10 minutes"
"""Apgar score assessed at 10 minutes after birth (0–10)."""

* newborn.name 0..1 string "A.2.10.2.9 - Newborn name"
"""Given name of the newborn if assigned at the time of discharge."""
