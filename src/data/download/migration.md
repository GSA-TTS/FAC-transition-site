---
layout: sidenav.njk
title: Migration metadata 2016-2022
header: Migration metadata 2016-2022
faqLink: https://support.fac.gov/hc/en-us
meta:
  name: Migration metadata 2016-2022
  description: Find resources for downloading single audit data.
eleventyComputed:
  eleventyNavigation:
    key: Data download
    parent: Home
---

# Migration metadata: 2016-2022

These files will be of most interest to researchers, IGs, and oversight officials.

When data was migrated from Census to GSA, it was modified to meet the validation requirements imposed by GSA. These files record the changes made during that process.

## The process

The process of migrating data was developed in conjunction with OMB and Federal partners. Decisions regarding the process are captured through the FAC’s Decision Record process:

* [https://github.com/GSA-TTS/FAC/blob/main/docs/architecture/decisions/0039-data-migration-iterative-approach.md](https://github.com/GSA-TTS/FAC/blob/main/docs/architecture/decisions/0039-data-migration-iterative-approach.md)   
* [https://github.com/GSA-TTS/FAC/blob/main/docs/architecture/decisions/0040-data-migration-implementing-logging-and-transformation-tracking.md](https://github.com/GSA-TTS/FAC/blob/main/docs/architecture/decisions/0040-data-migration-implementing-logging-and-transformation-tracking.md) 

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

