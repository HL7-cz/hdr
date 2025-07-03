### Úvod

Příručka stanovuje sadu pravidel, která budou použita pro HL7 FHIR k definování způsobu reprezentace propouštěcí zprávy z nemocnice v českém národním kontextu, v souladu s evropskými směrnicemi eHN.

Hlavním cílem je definovat obsahové složky a preferovanou strukturu pro sestavení propouštěcí zprávy z nemocnice. Účelem tohoto standardu je definovat reprezentaci propouštěcí zprávy jako součásti zdravotnické dokumentace pacienta za účelem elektronické výměny zdravotních informací mezi jednotlivci, poskytovateli zdravotní péče a infrastrukturou v České republice.

Toto zahrnuje jak národní, tak přeshraniční scénáře.

**Tato příručka nepopisuje, jak tuto zprávu elektronicky vyměňovat.**

### Information Models

<div>
  <img src="HDR_schema_cz.png" class="figure-img img-responsive img-rounded center-block" width="70%">
  <p><strong>Fig. 1: Struktura propouštěcí zprávy</strong></p>
</div>


Základní sekce propouštěcí zprávy z nemocnice

| Sekce | Kardinalita | Povinnost | Odkaz |
|------|------------|-----------|-------|
| A.1 Hlavička s administrativními údaji o dokumentu | 1..1 | Povinná | [Bundle / DischargeBundle – header](http://hl7.cz/fhir/hdr/ConceptMap/hdr2FHIR-cz-hdr#HospitalDischargeReport.header) |
| A.2 Obsah dokumentu | 1..1 | Povinný | [Composition – body](http://hl7.cz/fhir/hdr/ConceptMap/hdr2FHIR-cz-hdr#HospitalDischargeReport.body) |
| A.2.1 Dříve vyjádřená přání | 0..1 | Požadováno | [Composition.sectionAdvanceDirectives](http://hl7.cz/fhir/hdr/ConceptMap/hdr2FHIR-cz-hdr#HospitalDischargeReport.body.advanceDirectives) |
| A.2.2 Urgentní informace | 1..1 | Povinné | [Composition.sectionAlert](http://hl7.cz/fhir/hdr/ConceptMap/hdr2FHIR-cz-hdr#HospitalDischargeReport.body.alerts) |
| A.2.3 Údaje o hospitalizaci | 1..1 | Povinné | [Composition.encounter](http://hl7.cz/fhir/hdr/ConceptMap/hdr2FHIR-cz-hdr#HospitalDischargeReport.body.encounter) |
| A.2.4 Důvod přijetí | 0..1 | Požadováno | [Composition.sectionAdmissionEvaluation](http://hl7.cz/fhir/hdr/ConceptMap/hdr2FHIR-cz-hdr#HospitalDischargeReport.body.admissionEvaluation) |
| A.2.5 Stav při přijetí (vstupní vyšetření) | 0..1 | Volitelné | [Composition.sectionPatientHx](http://hl7.cz/fhir/hdr/ConceptMap/hdr2FHIR-cz-hdr#HospitalDischargeReport.body.patientHistory) |
| A.2.6 Anamnéza | 0..1 | Volitelné | [Composition.sectionHospitalCourse](http://hl7.cz/fhir/hdr/ConceptMap/hdr2FHIR-cz-hdr#HospitalDischargeReport.body.hospitalStay) |
| A.2.7 Průběh hospitalizace | 1..1 | Povinné | [Composition.sectionDischargeDetails](http://hl7.cz/fhir/hdr/ConceptMap/hdr2FHIR-cz-hdr#HospitalDischargeReport.body.dischargeDetails) |
| A.2.8 Stav při propuštění | 1..1 | Povinné | [Composition.sectionDischargeDetails.objectiveFindings](http://hl7.cz/fhir/hdr/ConceptMap/hdr2FHIR-cz-hdr#HospitalDischargeReport.body.dischargeDetails.objectiveFindings) *(+functional status, note…)* |
| A.2.9 Doporučení | 0..1 | Požadováno | [Composition.sectionPlanOfCare / sectionDischargeMedications / sectionDischargeInstructions](http://hl7.cz/fhir/hdr/ConceptMap/hdr2FHIR-cz-hdr#HospitalDischargeReport.body.recommendations) |
| A.3 Zobrazitelná forma dokumentu | 1..1 | Povinné | [Link] |
| A.4 Přílohy | 0..1 | Volitelné | [Link] |



### Rozsah
Tento dokument představuje koncepty českého použití definované prostřednictvím FHIR artefaktů, které lze strojově zpracovat. Jedná se o výsledky spolupráce, ve kterých byly dohodnuty přístupy k různým typům zdravotnických informací, vycházející ze základní specifikace FHIR R4.

Tato příručka je rozdělena do několika stránek, které jsou uvedeny v horní části každé stránky v nabídce:


- [Home](index.html): Tato stránka poskytuje úvod a rozsah této příručky.
- [Artifacts](artifacts.html): Tato stránka uvádí podrobné popisy a formální definice všech českých HDR artefaktů a logického modelu definovaného v této příručce.

### Závislosti

{% include dependency-table.xhtml %}

### Analýza mezi verzemi

{% include cross-version-analysis.xhtml %}

### Prohlášení k právům duševního vlastnictví

{% include ip-statements.xhtml %}



