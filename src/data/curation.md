---
layout: home.njk
title: Historic data curation
meta:
  name: Historic data curation
  description: Documentation about the data migration from Census to GSA.
---

# Historic data curation

On March 9, 2022, OMB directed the management of the Clearinghouse to move from Census to GSA. The Federal Audit Clearinghouse collects and manages [Single Audits](https://oig.hhs.gov/reports-and-publications/featured-topics/ihs/training/understanding-single-audits/content/#/). GSA and Census worked toegther closely to enact a smooth transition between systems. In February of 2024, we completed that migration.

The GSA team treated this work as an act of [data curation](https://en.wikipedia.org/wiki/Data_curation). This means we view our responsibility for the data collected and maintained by the fact as an ongoing effort in data maintenance, annotation, and preservation. Our long-term goal is to improve the quality and usability of the data contained within the FAC.

The data is integrated into our [search]() and [API](). No special effort is required in order to access data that is part of the historic record. We currently make available audits that were collected under Uniform Guidance, [2 CFR Part 200](https://www.ecfr.gov/current/title-2/subtitle-A/chapter-II/part-200?toc=1) and in accordance with the Single Audit Act ([PDF](https://www.govinfo.gov/content/pkg/PLAW-104publ156/pdf/PLAW-104publ156.pdf)). 

## About the initial curation

In our initial migration of data, we annotated and transformed the data in order to integrate it into the GSA FAC. As part of this work:

1. We retained all of the original data provided to GSA by Census.
2. We documented, in an automated manner, all curation actions.

No part of the historical record was lost in this process. However, there is data we believe is *missing* and documenting this will be part of our ongoing work.

### How we carried out the curation

In the simplest possible terms: we re-submitted all prior audits collected at Census to the GSA Clearinghouse.

1. We began with an old SF-SAC record from the Census data.
2. We constructed a new, virtual SF-SAC submission, using the [workbook templates]({{config.baseUrl}}audits/) that auditors and auditees use for their data entry.
3. We submitted this virtual data collection form to the FAC.
4. Where the data fell short of our validations in manageable/measurable ways, we annotated the data and migrated it into the FAC.
5. Where an SF-SAC was too incomplete to consider usable, we set it aside for further processing.

This work was completely automated, from the analysis through to the annotation. All data was accounted for, regardless of whether it was annotated and accepted, or set aside.

The audit report packages from Census were renamed, so that all data received new-style report ID. For example, Berea College submitted an audit in 2023, and their audit had the record identifier [2023-06-GSAFAC-0000020471](https://app.fac.gov/dissemination/summary/2023-06-GSAFAC-0000020471); this clearly denotes the record as being collected by `GSAFAC`. The submission in 2022, after migration from Census to GSA, has the identifier [2022-06-CENSUS-0000091651](https://app.fac.gov/dissemination/summary/2022-06-CENSUS-0000091651), which clearly denotes it as a record that originated with Census. We do not anticipate these record IDs ever changing.

The GSA team migrated approximately 95% of the data from Census in this way. Approximately 5% of the data from 2022 were of sufficiently poor quality that we set them aside for further analysis and processing; they will be re-integrated into the record. Audits collected in 2022 were of higher quality than those of 2016, and we saw higher rates of failure the further back we went. 

The complete record of annotations will be integrated into both the API and the FAC search results interface in time.

### Transforms and annotations

It is possible to see the annotation `GSA_MIGRATION` in some records at this time (last updated February 2024). The GSA team is working, as part of this curatorial work, to make the original records available for reference where this annotation was applied.



* General data transforms applied to the data.
* Data transformations applied to specific fields.

