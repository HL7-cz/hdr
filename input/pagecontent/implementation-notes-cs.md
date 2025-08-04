Na následující stránce naleznete poznámky k implementaci nemocniční propouštěcí zprávy. Týkají se tvorby kompozice a naplnění tohoto profilu příslušnými daty.

### Přehled

```mermaid
classDiagram
  direction LR
  class CZ_BundleHDR{
    <<Bundle>>
  }
  CZ_BundleHDR *-- "1" CZ_CompositionHdr
  CZ_BundleHDR *-- "1" CZ_DiagnosticReport
  CZ_BundleHDR *-- "1" CZ_PatientCore
  CZ_BundleHDR *-- "0..*" CZ_ConditionHdr
  CZ_BundleHDR *-- "0..*" CZ_PractionerCore
  CZ_BundleHDR *-- "0..*" CZ_ConsentHdr
  CZ_BundleHDR *-- "0..*" CZ_OrganizationCore
  CZ_BundleHDR *-- "0..*" CZ_EncounterHdr
  CZ_BundleHDR *-- "0..*" CZ_FlagHdr
  CZ_BundleHDR *-- "0..*" CZ_AllergyIntoleranceHdr
  CZ_BundleHDR *-- "0..*" CZ_ImmunizationHdr
  CZ_BundleHDR *-- "0..*" CZ_ProcedureHdr
  CZ_BundleHDR *-- "0..*" CZ_MedicationDispenseHdr

  CZ_CompositionHdr --> CZ_Practioner: attester[legalAuthenticator]
  CZ_CompositionHdr --> CZ_Practioner: attester[resultValidator]
  CZ_CompositionHdr --> CZ_PatientCore: subject

```

