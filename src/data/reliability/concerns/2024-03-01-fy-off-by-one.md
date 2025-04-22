---
# Metadata
layout: home.njk
title: Migrated fiscal year dates off-by-one
tags: known_errors
order: 3
# Layout
eleventyComputed:
  eleventyNavigation:
    key: FY off by one
    parent: Concerns
in_page_nav: true
# Page data
slug: The fiscal year start and end date in migrated records are one day early.
discovered_date: 2024-03
timeline_to_repair:
github:
log: 
---

{% from "components/macros.njk" import curationSummary %}

{{ curationSummary(slug, discovered_date, timeline_to_repair, github, log) }}


## Curation challenge

1. Our server records time in GMT.
2. We treat all submissions as if they were in [SST](https://www.timeanddate.com/time/zones/sst) (Samoa Standard Time)

What this means is that when someone submits data to the FAC, we look at the timestamp (in GMT), and subtract 11 hours (because we pretend the submission is coming from American Samoa). We do this to make sure that submissions from *everywhere* that might submit a Single Audit is considered "on time" as long as the grantee completes the submission on or before the day it is due.

This transformation makes sense for new submissions to the GSA FAC. It did *not* make sense for data we were migrating from Census. Because we subtracted 11 hours from every acceptance date coming from Census, it had the effect of moving those dates back one day. 

The source of the error can be found in [`sac_creation.py` in the code](https://github.com/GSA-TTS/FAC/blob/c59eac9be7f6ca97f38fa66829d61f2a1144557a/backend/dissemination/workbooklib/sac_creation.py#L114).

## Example

Any record migrated from Census will demonstrate this issue. For example:

| <div style="width:220px">Report ID</div>  | Entity | Incorrect date | Correct date |
| -- | -- | -- | -- |
| <a href="https://app.fac.gov/dissemination/summary/2022-06-CENSUS-0000212928">2022-06-CENSUS-0000212928</a> | Gulf of Maine Research Institute | Dec. 27, 2022 | Dec. 28, 2022 |
| <a href="https://app.fac.gov/dissemination/summary/2022-06-CENSUS-0000091651">2022-06-CENSUS-0000091651</a> | Berea College | Nov. 22, 2022 | Nov. 23, 2022 |
| <a href="https://app.fac.gov/dissemination/summary/2022-06-CENSUS-0000211679">2022-06-CENSUS-0000211679</a> | Franklin W. Olin College of Engineering, Inc. | Nov. 16, 2022 | Nov. 17, 2022 |


## Consequences


This impacts searches for audits in past years when using the acceptance date as a criterion. An audit that was submitted one day late will now appear on-time. 

## Mediating the error


End users can read fiscal year dates as one more than they are. 

## Possible resolution


Update the records containing incorrect dates, and re-disseminate the record. This will yield correct data in the public-facing tables.



