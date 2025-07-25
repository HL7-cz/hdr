Logical: LogCzDigitalSignatureCz
Id: LogdigitalSignatureCz
Title: "A.1.9 - Digitální podpis"
Description: """Nemocniční propouštěcí zpráva - Elektronický podpis dle zákona 327/2011 §54a"""

* elektronickyPodpis56 1..* Signature "A.1.9.1 - Elektronický podpis nebo pečeť" """Elektronický podpis nebo pečeť dokumentu."""
* casoveRazitko 0..1 instant "A.1.9.2 - Časové razítko" """Elektronické časové razítko """