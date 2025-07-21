This page lists HL7 FHIR logical models used to represent the HOSPITAL DISCHARGE REPORT DATASET.

To facilitate the references with the eHN data sets the short description of each element reports the label of the eHN element (e.g., A.1.7.2 Result validator name).

The HL7 FHIR logical model requires that element cardinality is specified, while the eHN data set doesn't define them on purpose. For this reason the elements' cardinality of the following FHIR Logical Model should be interpreted with this in mind, thus they should not be considered as "normative".


{% for sd_hash in site.data.structuredefinitions | sort: "title" -%} {%- assign sd = sd_hash[1] -%} {%- if sd.kind == "logical" -%}

{%- endif -%} {%- endfor -%}
Name	Title	Description
{{sd.name}}	{{sd.title}}	{{sd.description}}