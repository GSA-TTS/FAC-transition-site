---
# Metadata
layout: home.njk
title: Migration metadata 2016-2022
header: Migration metadata 2016-2022
meta:
  name: Migration metadata 2016-2022
  description: Find resources for downloading single audit data.
# Layout
eleventyComputed:
  eleventyNavigation:
    key: Migration metadata
    parent: Download
in_page_nav: true
---

# Migration metadata: 2016-2022

These files will be of most interest to researchers, IGs, and oversight officials.

When data was migrated from Census to GSA, it was modified to meet the validation requirements imposed by GSA. These files record the changes made during that process.

## The process

The process of migrating data was developed in conjunction with OMB and Federal partners. Decisions regarding the process are captured through the FAC’s Decision Record process:

* [https://github.com/GSA-TTS/FAC/blob/main/docs/architecture/decisions/0039-data-migration-iterative-approach.md](https://github.com/GSA-TTS/FAC/blob/main/docs/architecture/decisions/0039-data-migration-iterative-approach.md)   
* [https://github.com/GSA-TTS/FAC/blob/main/docs/architecture/decisions/0040-data-migration-implementing-logging-and-transformation-tracking.md](https://github.com/GSA-TTS/FAC/blob/main/docs/architecture/decisions/0040-data-migration-implementing-logging-and-transformation-tracking.md) 

## Census to GSA submission crosswalk

The data collected at Census and GSA is identified in different ways.

Data collected at Census had a compound identifier. It used the `AUDITYEAR` of the submission along with a `DBKEY`, which was a manually-assigned numerical value. The combination of the `AUDITYEAR` and `DBKEY` was meant to be a unique identifier for each SF-SAC and audit report submission.

Data collected at GSA uses an identifier that combines:

* the year and month of the fiscal year end date (e.g. `2023-09`), 
* a six-character string indicating who collected the audit (either `CENSUS` or `GSAFAC`), and
* A number. If the audit was collected by...
  * `CENSUS`: the number is the `DBKEY`
  * `GSAFAC`: the number is an auto-incrementing value with no meaning

We provide a [CSV containing a crosswalk of data migrated from Census to GSA]({{global.csv_base}}/gsa/migration/census_gsa_crosswalk.csv). This CSV has 8 columns:

* A row id
* `audit_year` of the submission
* `dbkey` of the submission
* GSA-assigned `report_id` for the submission
* `auditee_uei`, the SAM.gov-provided unique identifier (if it exists; only present from 2022 onward; `GSA_MIGRATION` in many cases)
* `auditee_ein`, the auditee's tax identification number (always present)
* `run_date`, which is when the migration was run
* `migration_status` (always `SUCCESS` in this crosswalk)

There were two audits that were unable to be migrated. These are, for all intents and purposes, [lost](https://github.com/GSA-TTS/FAC/issues/3788#issuecomment-2420020424).

* AUDITYEAR: 2019, DBKEY: 243753
* AUDITYEAR: 2022, DBKEY: 247680



## By audit year

For each audit year, there are two migration metadata tables:

* **invalidauditrecord**: records where audit data was incorrect or otherwise irrecoverably invalid in the migration process  
* **inspectionrecord**: records values that were incorrect or incompatible with modern data validations, and the transformations or changes that were made to migrate the data to GSA

[All of the code](https://github.com/GSA-TTS/FAC/blob/main/backend/census_historical_migration/README.md) to carry and tests developed to support this data migration are retained as part of the FAC.

### The data

<ul>
{%- for year in [2016, 2017, 2018, 2019, 2020, 2021, 2022] -%}
  <li>{{year}}: 
  {% set first_comma = true%}
  {%- for table in ["invalidauditrecord", "inspectionrecord"] -%}
    <a href="{{global.csv_base}}/gsa/migration/{{year}}-{{table}}.csv">{{table}}</a>{%- if first_comma -%},&nbsp;{%- endif -%} 
    {% set first_comma = false %}
  {%- endfor -%}
  </li>
{%- endfor -%}
</ul>

## How to work with this data

The `invalidauditrecord` is most useful in terms of identifying the handful of audits that contained irreconcilable migration errors. For example, a record may have been missing one or more sections of the SF-SAC. These tables record the audits that were, quite literally, incomplete, and brought into the new system despite this.

The `inspectionrecords` are most useful in understanding what changes were enacted in order to modernize historical data. The table contains 15 columns:

* id  
* audit\_year  
* dbkey  
* report\_id  
* run\_datetime  
* … *and one column per audit table (general, federal\_awards, findings, etc.)*

The first five columns are linking information; they allow for connecting back to the historic data (via `audit_year` and `dbkey`), or to the migrated records (via `report_id`). Within the per-table cells are JSON documents of the following form:

```
{
     "census_data": [
         {
             "column": "sample_col1",
             "value": "sample_data1"
         },
         {
             "column": "sample_col2",
             "value": "sample_data2"
         }
     ],
     "gsa_fac_data": {
         "field": "sample_gsa_fac_field",
         "value":  "sample_value"
     },
     "transformation_functions": "function_name"
 }
```

As an example:

```
[
  [
    {
      "census_data": [
        {
          "value": "027",
          "column": "CFDA_EXT"
        }
      ],
      "gsa_fac_data": {
        "field": "federal_award_extension",
        "value": "027"
      },
      "transformation_functions": [
        "xform_replace_invalid_extension"
      ]
    }
  ]
]
```

There is one migration record in this list. It records that the Census data in the `CFDA_EXT` column was the value `027`, which is not a valid federal award extension. We then recorded the function that was used to correct this issue: [xform\_replace\_invalid\_extension](https://github.com/GSA-TTS/FAC/blob/707f1327f65446ddd3615451716e101d37bf271b/backend/census_historical_migration/workbooklib/federal_awards.py#L529). If you search the FAC codebase for these functions, it is possible to see exactly what transformation was enacted in order to produce data that would pass modern data validations. In this case, we would replace invalid data with `GSA_MIGRATION`.

