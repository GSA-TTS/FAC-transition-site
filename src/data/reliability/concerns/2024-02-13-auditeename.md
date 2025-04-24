---
layout: sidenav.njk
tags: known_errors
order: 2
title: Incorrect name field used
slug: The certifying names were drawn from a similar, but incorrect, field
discovered_date: 2024-02-13
timeline_to_repair:
github:
log:
---


{% from "components/macros.njk" import curationSummary %}

{{ curationSummary(slug, discovered_date, timeline_to_repair, github, log) }}

## Curation challenge

While preparing the data migration documentation, it was noted that `AUDITEENAME` was incorrectly used instead of `AUDITEECERTIFYNAME`, and `AUDITEETITLE` was used instead of `AUDITEECERTIFYTITLE`. It was determined that this will have a low impact on the disseminated reports as it does not affect the financial aspect of the audit reports and only affects the auditee certifying information. However, because this still introduces some data inaccuracies in the reports in production, it must be addressed.

### Example

See any record with `CENSUS` in the report id (e.g. https://app.fac.gov/dissemination/summary/2019-12-GSAFAC-0000351778). The error is almost impossible to descern, as it involves a name-based field that was similar, and therefore the names and titles still look correct.

## Consequences

This does not have a material impact on resolution work.

## Mediating the error

There is no immediate remediation; the name and title used is accurate, but it is technically drawn from the wrong field in the historical data.

## Possible resolution

We need to update all 250K+ historical records to record the correct value.

