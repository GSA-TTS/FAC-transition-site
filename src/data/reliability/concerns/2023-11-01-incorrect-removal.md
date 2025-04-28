---
# Metadata
layout: home.njk
title: Removal of incorrect audits
tags: known_errors
order: 4
# Layout
eleventyComputed:
  eleventyNavigation:
    key: Incorrect removal
    parent: Concerns
in_page_nav: true
# Page data
slug: Some audits were submitted with completely incorrect information.
discovered_date: 2023-11
timeline_to_repair:
github:
log: 
---

{% from "components/macros.njk" import curationSummary %}

{{ curationSummary(slug, discovered_date, timeline_to_repair, github, log) }}

## Curation challenge

A user looked up their UEI in SAM.gov. It was for the [Newark Housing Authority](https://app.fac.gov/dissemination/summary/2023-03-GSAFAC-0000012783) They submitted. They then realized they meant to submit for the [Newark Housing Authority](https://app.fac.gov/dissemination/summary/2023-03-GSAFAC-0000014267), which has a different UEI, and submitted again.

The first of these two is simply incorrect, and needs to be removed.

This is not the only example of this kind of problem within the system, and a mechanism by which the FAC can remove audits from circulation that are simply *in error* is needed.

### Example

See above.

## Consequences

There is no indication to a resolution official which audit is correct or incorrect. It is likely to be resolved through the resolution process, but it would be better if the FAC curated the data and removed the incorrect audit submissions.

## Mediating the error

There is no clear mediation pathway for users.

## Possible resolution

We will want a documented process for removing audits we believe to be in error. This process may involve a positive assertion (documented) from the auditor and auditee certifying officials that the audit in question should be removed. Consultation with OMB and OIGs will be necessary before implementing an SOP regarding this kind of error.

We will likely maintain the record internally, but flag it as `in-error`. This way, if we are wrong in our assessment, we do not lose the data.



