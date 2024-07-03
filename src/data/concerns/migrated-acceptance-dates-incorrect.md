---
layout: sidenav.njk
tags: known_errors
order: 2
title: Migrated accepted dates are incorrect
slug: The accepted date in migrated records used the wrong historical date field.
discovered_date: July 2024
timeline_to_repair:
github:
log: 
---

{% from "components/macros.njk" import curationSummary %}

{{ curationSummary(slug, discovered_date, timeline_to_repair, github, log) }}

## Curation challenge

As part of the move from Census to GSA, we migrated the SF-SAC records from 2016-2022. To complete this migration, we treated every record from Census as a submission to GSA. Unfortunately, Census record *multiple* acceptance dates for submissions:

1. There was a `DATERECEIVED`, which was when an audit was submitted to the Census Clearinghouse.
2. There was a `DATEACCEPTED`, which is when the audit was deemed to be acceptable for submission.
3. There was a `DATEFIREWALL`, which is when the audit was published to agencies and the public.

The GSA Clearinghouse only records one acceptance date, which we call `fac_accepted_date`. When bringing historical records forward, we used the Census field `FACACCEPTED`, believing it was equivalent to our `fac_accepted_date`. It is not; we should have, instead, used `DATEFIREWALL`. To further complicate the issue, we applied the [same transformation to this date as all other dates](migrated-acceptance-dates-incorrect), which means that we not only chose the wrong date, but we subtracted one from it. 

The error is in [end_to_end_core.py on line 69](https://github.com/GSA-TTS/FAC/blob/dda11bdfd31a000601e427379a3fac6ee9e7f1f8/backend/census_historical_migration/end_to_end_core.py#L69). This impacts all records migrated from Census.

### Example

Any record migrated from Census will demonstrate this issue. For example:

| <div style="width:220px">Report ID</div>  | Entity | Incorrect date | Correct date |
| -- | -- | -- | -- |
| <a href="https://app.fac.gov/dissemination/summary/2022-06-CENSUS-0000212928">2022-06-CENSUS-0000212928</a> | Gulf of Maine Research Institute | Dec. 27, 2022 | Jan. 3, 2023 |
| <a href="https://app.fac.gov/dissemination/summary/2022-06-CENSUS-0000091651">2022-06-CENSUS-0000091651</a> | Berea College | Nov. 22, 2022 | Nov. 30, 2022 |
| <a href="https://app.fac.gov/dissemination/summary/2022-06-CENSUS-0000211679">2022-06-CENSUS-0000211679</a> | Franklin W. Olin College of Engineering, Inc. | Nov. 16, 2022 | Nov. 28, 2022 |


## Consequences


This impacts searches for audits in past years when using the acceptance date as a criterion. In theory, an audit that was late may now appear as if it was on time.

## Mediating the error

Update every migrated record with the correct acceptance date (using `DATEFIREWALL`) from the historical record.

## Possible resolution

Update the records containing incorrect dates, and re-disseminate the record. This will yield correct data in the public-facing tables.



