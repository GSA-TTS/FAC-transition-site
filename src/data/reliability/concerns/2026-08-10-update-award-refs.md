---
# Metadata
layout: home.njk
title: Update award references
tags: known_errors
order: 0
# Layout
eleventyComputed:
  eleventyNavigation:
    key: Update award references
    parent: Concerns
in_page_nav: true
# Page data
concern: 2026-08-10-update-award-refs
slug: Update award references
discovered_date: 2026-04-10
timeline_to_repair:
github: "[#5646](https://github.com/GSA-TTS/FAC/issues/5646)"
log: 
---


{% from "components/macros.njk" import curationSummary %}

{{ curationSummary(slug, discovered_date, timeline_to_repair, github, log) }}

## Curation challenge

Award references are used by The FAC as a primary key to link federal award entries to findings, and passthrough data. After 2024-10-08 these award references changed format from 'AWARD-0001' to 'AWARD-00001'.
Older reports were left as is yet there were 19 older reports where this mis-match occurred.\
In all cases the issue was revealed when comparing the award references in the [findings API call](https://www.fac.gov/api/dictionary/#endpoint-findings) to the
[federal_awards](https://www.fac.gov/api/dictionary/#endpoint-federal_awards), [passthrough](https://www.fac.gov/api/dictionary/#endpoint-passthrough) 
and SF-SAC reports.

### Example

https://api.fac.gov/findings?select=report_id,award_reference&report_id=eq.2022-09-GSAFAC-0000059900

```json
 ...
  {
    "report_id": "2022-09-GSAFAC-0000059900",
    "award_reference": "AWARD-00001"
  },
  {
    "report_id": "2022-09-GSAFAC-0000059900",
    "award_reference": "AWARD-00002"
  },
 ...
``` 

https://api.fac.gov/federal_awards?select=report_id,award_reference&report_id=eq.2022-09-GSAFAC-0000059900

```json
 ...
  {
    "report_id": "2022-09-GSAFAC-0000059900",
    "award_reference": "AWARD-0001"
  },
  {
    "report_id": "2022-09-GSAFAC-0000059900",
    "award_reference": "AWARD-0002"
  },
 ...
```

## Consequences

Users would have difficulties reconciling the award reference between other API calls and the SF-SAC report

## Resolution

1. Query the DB and identify potential reports with the issue.
2. Update the award reference in 'audit_singleauditchecklist.findings_uniform_guidance' and  'dissemination_finding.award_reference' for those reports
