Profile: CZ_ProcedureInductionOfLabor
Parent: Procedure
Id: cz-procedure-induction-of-labor
Title: "Procedure: Maternal - Induction of labor (CZ)"
Description: "Metoda a průběh preindukce nebo indukce porodu."

* ^experimental = false

// Kód výkonu (SNOMED CT)
* code 1..1
* code from https://hl7.cz/fhir/hdr/ValueSet/cz-induction-of-labor (required)
* code ^short = "Metoda indukce porodu"

// Vazba na matku
* subject 1..1
* subject only Reference(CZ_PatientCore)

// Časové období (kdy indukce probíhala)
* performed[x] only Period
* performedPeriod ^short = "Doba trvání indukce (od-do)"

// Status výkonu (povinné u Procedure)
* status 1..1
* status = #completed // Předpokládáme dokončený výkon v propouštěcí zprávě
