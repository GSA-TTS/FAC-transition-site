---
layout: sidenav.njk
title: Historic data migration
meta:
  name: Historic data migration
  description: Documentation about the data migration from Census to GSA.
---

# {{title}}

A critical part of the move of the Clearinghouse from Census to GSA was the migration of the data. GSA began collecting Single Audits in October of 2023; we completed migration of 98% of the data from Census in February of 2024, and the final 2% in July of 2024.

The GSA team treated this work as an act of [data curation](https://en.wikipedia.org/wiki/Data_curation). Instead of copying the data over "as-is," we instead worked to annotate and, where possible, improve the data through the migration process.

## Migration process

In the simplest possible terms: we re-submitted all prior audits collected at Census to the GSA Clearinghouse.

1. We began with the data from an old SF-SAC record from the Census data.
2. We constructed a new, virtual SF-SAC submission, using the [workbook templates]({{config.baseUrl}}audits/) that auditors and auditees use for their data entry at GSA.
3. We submitted this virtual data collection form to the FAC.
4. Where the data fell short of our validations in manageable/measurable ways, we annotated the data and migrated it into the FAC.
5. Where an SF-SAC was too incomplete to consider usable, we set it aside for further processing.

This work was completely automated, from the analysis through to the annotation. All data was accounted for, regardless of whether it was annotated and accepted, or set aside.

We did our initial migration of data in February of 2024, and 98% of the data (approximately 277K records) were migrated successfully. The remaining 2% (roughly 3200 records) required further  processing, and those were integrated into the Clearinghouse in July of 2024. 

Two audits were sufficiently incomplete as to not be migrated. We have made provisions for those audit reports to still be found via search, but there is no SF-SAC associated with them.

No part of the historical record was lost in this process.

### Identifiers, old and new

Census had a system by which a `DBKEY` was assigned to each audit as it came in. The `AUDITYEAR` and `DBKEY` effectively formed a unique identifier. This identifier was manually assigned as each audit came in.

GSA's intent is that an audit's report identifier should be automatically assigned. Once assigned, will never change.

When migrating historical records, all audit report packages from Census were given a new-style report ID. For example, Berea College submitted an audit in 2023, and their audit had the record identifier [2023-06-GSAFAC-0000020471](https://app.fac.gov/dissemination/summary/2023-06-GSAFAC-0000020471); this clearly denotes the record as being collected by `GSAFAC`. For their submission in 2022 was given the identifier [2022-06-CENSUS-0000091651](https://app.fac.gov/dissemination/summary/2022-06-CENSUS-0000091651), which clearly denotes it as a record that originated with Census. 

In constructing new-style identifiers for `CENSUS` records, we used the `AUDITYEAR` for the first portion of the id (e.g. `2022`), and the `DBKEY` for the last portion of the report id (e.g. `0000091651`). 

### Transforms and annotations

It is possible to see the annotation `GSA_MIGRATION` in some records at this time (last updated February 2024). The GSA team is working, as part of this curatorial work, to make the original records available for reference where this annotation was applied.



* [General data transformations]({{ "/data/general-transforms/" | absoluteUrl }})<br>These are transformations that were applied wholesale to files as data was migrated from Census to GSA.
* [Specific field transformations]({{"/data/specific-transforms/" | absoluteUrl }})<br>These are transformations applied to specific portions of the data. For example, a Census record that is missing an entire portion of the form required specialized handling.

