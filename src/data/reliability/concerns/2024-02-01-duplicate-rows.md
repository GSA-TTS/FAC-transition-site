---
# Metadata
layout: home.njk
title: Duplicated data rows
tags: known_errors
order: 1
# Layout
eleventyComputed:
  eleventyNavigation:
    key: Duplicate rows
    parent: Concerns
in_page_nav: true
# Page data
slug: Some rows in some tables from the 2023 data collection are duplicated.
discovered_date: 2024-02
timeline_to_repair:
github:
log: 2025-01-remove-duplicates
---

{% from "components/macros.njk" import curationSummary %}

{{ curationSummary(slug, discovered_date, timeline_to_repair, github, log) }}

## Curation challenge

In February of 2024, we discovered a bug where, if users pressed the "submit" button twice in rapid successesion, some data in the FAC database could be duplicated. Investigation determined that this did not impact the internal records of the SF-SAC collection, but it did impact how the data was copied out to our dissemination data tables. The dissemination tables power our search and API, and therefore impact all users of the data.

### Example

Some records in the `federal_awards` and `findings` tables can be replicated because of this bug. For example, report [2023-06-GSAFAC-0000020785]() encountered this bug. As a result, its award rows were duplicated. Below is a subset of rows from the `federal_awards` data table demonstrating how a set of awards were listed twice.

| <div style="width:220px">report_id</div> | reference | prefix | extension |
| -- | -- | -- | -- |
| 2023-06-GSAFAC-0000020785 | AWARD-0001 | 93 | 959 |
| 2023-06-GSAFAC-0000020785 | AWARD-0002 | 93 | 959 |
| 2023-06-GSAFAC-0000020785 | AWARD-0003 | 93 | 778 |
| 2023-06-GSAFAC-0000020785 | AWARD-0001 | 93 | 959 |
| 2023-06-GSAFAC-0000020785 | AWARD-0002 | 93 | 959 |
| 2023-06-GSAFAC-0000020785 | AWARD-0003 | 93 | 778 |

Our data validation process would not allow a user to enter this data this way; each `AWARD-####` can only appear once. This error occurred when the data was copied into our dissemination tables (used by search and the API). Anyone requesting the federal awards for report `GSA-20785` will get two `AWARD-0001` rows, two `AWARD-0002` rows, and so on. 

## Consequences

Searches for audits are not impacted, but calculations over the awards may yield incorrect results.

## Mediating the error

* In the `federal_awards` table, a given `AWARD` reference should only occur once. Filtering this down to a unique set will yield correct results.
* In the `findings` table, a given `AWARD` and `REF` should only appear once in combination; filtering this combination of identifiers down to a unique set will yield correct results.

## Possible resolution

Remove the records from dissemination that contain this error, and re-disseminate the original record. This will yield correct data in the public-facing record.



