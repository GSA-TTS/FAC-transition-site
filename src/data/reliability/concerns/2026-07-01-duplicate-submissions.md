---
# Metadata
layout: home.njk
title: Duplicate Valid Submissions
tags: known_errors
order: 0
# Layout
eleventyComputed:
  eleventyNavigation:
    key: Duplicate valid submissions
    parent: Concerns
in_page_nav: true
# Page data
slug: Duplicate submissions exist that should instead be treated as resubmissions or corrections
discovered_date: 2026-04-10
timeline_to_repair:
github: "[#5464](https://github.com/GSA-TTS/FAC/issues/5464)"
log: 
---


{% from "components/macros.njk" import curationSummary %}

{{ curationSummary(slug, discovered_date, timeline_to_repair, github, log) }}

## Curation challenge

Before the FAC introduced a formal resubmission workflow, the only way for an auditee to correct or revise an audit was to submit an entirely new record. As a result, some organizations submitted what amounts to a second (or third, or fourth, etc) version of an audit as a fully independent, valid submission. These records are not flagged as resubmission or corrections, and each appears in the data as its own standalone audit.

A resubmission is identified as having matching "metadata" with a prior record. "Metadata" consists of the auditee UEI, EIN, audit year, entity name, and auditee email. Where those fields match across two or more records, the later accepted submissions are assumed to be resubmissions or corrections of the earlier one(s).

### Example

This entity has two submissions for audit year 2023 with identical metadata. The earlier record was accepted in October 2023, and the corrected record followed in November.

| <div style="width:140px">Field</div> | <div style="width:280px">[2023-03-GSAFAC-0000000881](https://app.fac.gov/dissemination/summary/2023-03-GSAFAC-0000000881)</div> | <div style="width:280px">[2023-03-GSAFAC-0000007892](https://app.fac.gov/dissemination/summary/2023-03-GSAFAC-0000007892)</div> |
| -- | -- | -- |
| Accepted | 2023-10-16 | 2023-11-22 |
| UEI | J739DVTTLNE5 | J739DVTTLNE5 |
| EIN | 720822689 | 720822689 |
| Audit year | 2023 | 2023 |
| Auditee name | Housing Authority of Caldwell Parish | Housing Authority of Caldwell Parish |
| Auditee email | cpha@bellsouth.net | cpha@bellsouth.net |

## Consequences

Users querying or analyzing the data may encounter multiple seemingly independent submissions for the same organization and audit year. The most recent submission is not clearly identified as the authoritative version, and prior versions are not marked as deprecated or superceded.

Downstream calculations that aggregate data (award totals, finding counts, etc.) may double count values if all versions of a submission are included. Oversight officials relying on the data have no programmatic way to determine which submission reflects the final reported state without making significant assumptions about our data.

## Mediating the error

Duplicate submissions can be identified by filtering for records that share the same UEI, EIN, audit year, entity name, and auditee email. Among those matching records, the submission with the latest acceptance date is almost certainly the authoritative "most recent" version.

Until duplicate records have been linked as resubmissions, users performing analysis may consider deduplicating on these fields and retaining only the most recently accepted record.

## Possible resolution

A `link_resubmissions` management command has been created by the FAC team. The team will run the command for each audit year from 2016 to the current year. The command first identifies resubmission "chains", or sets of two or more records with identical metadata. **These chains are added to a file that will undergo manual review by the FAC team.**

Once the chains are confirmed as legitimate, records will be assigned version numbers in order of acceptance date and appropriate metadata will be writen to the internal record, including an administrative justification of `FAC ADMIN CURATION ACTION` for posterity. Then all affected records will be redisseminated to carry the change to the public. Records earliest in the chain will be marked as "deprecated", as they have been superceded by the newer versions. They will continue to exist, but they will not be casually available to the public.

The files that are generated as an artifact of this process will be cleaned up and released publicly to the FAC site, both as WWW content and as downloadable CSVs.
