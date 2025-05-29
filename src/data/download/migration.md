---
# Metadata
layout: home.njk
title: Migration Metadata (2016–2022)
meta:
  name: Migration metadata 2016–2022
  description: Download audit metadata documenting the transition from Census to GSA.
# Layout
eleventyComputed:
  eleventyNavigation:
    key: Migration metadata
    parent: Download
in_page_nav: true
---

# {{ title }}

These files document how data collected by the Census Federal Audit Clearinghouse from 2016 to 2022 was transformed to meet new standards set by the GSA FAC.

The migration process involved:
- Applying updated validation rules
- Standardizing formats and field names
- Logging changes for transparency and oversight

This metadata helps oversight professionals and researchers trace how original records were modified during the transition.

---

## About the Migration

This work was conducted with support from OMB and federal partners. Key decisions are documented here:

- [Iterative approach to data migration](https://github.com/GSA-TTS/FAC/blob/main/docs/architecture/decisions/0039-data-migration-iterative-approach.md)  
- [Logging and transformation tracking](https://github.com/GSA-TTS/FAC/blob/main/docs/architecture/decisions/0040-data-migration-implementing-logging-and-transformation-tracking.md)

---

## File Types

For each audit year (2016–2022), we provide:

- **`inspectionrecord.csv`**  
  Lists corrections or changes applied during migration. Includes what was changed and how.

- **`invalidauditrecord.csv`**  
  Lists audits that were incomplete or could not be fully validated. These were migrated as-is but flagged for awareness.

You can also download a **crosswalk file** that links Census identifiers (`audit_year` and `dbkey`) to GSA `report_id` values:

- [Census–GSA crosswalk CSV]({{global.csv_base}}/gsa/migration/census_gsa_crosswalk.csv)

---

## Download Migration Files by Year

<ul>
{%- for year in [2016, 2017, 2018, 2019, 2020, 2021, 2022] -%}
  <li>{{year}}: 
    <a href="{{global.csv_base}}/gsa/migration/{{year}}-invalidauditrecord.csv">invalidauditrecord</a>, 
    <a href="{{global.csv_base}}/gsa/migration/{{year}}-inspectionrecord.csv">inspectionrecord</a>
  </li>
{%- endfor -%}
</ul>

---

## How to Use This Data

### `invalidauditrecord.csv`

Identifies submissions with unrecoverable issues, such as missing sections. These records may still appear in FAC data but are marked for caution.

### `inspectionrecord.csv`

Captures valid changes made to historic records. For example:
- Fixing outdated or invalid codes
- Filling in missing fields using documented rules

Each row shows the field that was changed, the original value, the updated value, and the transformation applied.

If you’re interested in the exact transformation logic, the code used is publicly available:
- [Migration tools and scripts](https://github.com/GSA-TTS/FAC/blob/main/backend/census_historical_migration/README.md)

---

## Two Records Could Not Be Migrated

The following audits were lost in migration and are not part of the current FAC dataset:

- `AUDITYEAR: 2019, DBKEY: 243753`
- `AUDITYEAR: 2022, DBKEY: 247680`

[See discussion on GitHub](https://github.com/GSA-TTS/FAC/issues/3788#issuecomment-2420020424)



