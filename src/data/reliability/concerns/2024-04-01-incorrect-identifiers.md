---
layout: sidenav.njk
tags: known_errors
order: 5
title: Incorrect report identifiers
slug: Report IDs are based in part on (possibly incorrect) user-entered data.
discovered_date: 2024-04
timeline_to_repair:
github:
log: 
---

{% from "components/macros.njk" import curationSummary %}

{{ curationSummary(slug, discovered_date, timeline_to_repair, github, log) }}

## Curation challenge

Because of how/when we construct record ids, some of them are incorrect. For example, if a user creates an audit that (incorrectly) indicates a FY22 end date, we will (forever) report that audit submission as `2022-MM-GSAFAC-##########`. 

If we are going to assign semantics to this identifier (e.g. the first four digits are the audit’s fiscal year), then we should enforce that. Or, we should disclaim the semantics.


### Example

See above.

## Consequences

There is no indication to a resolution official what is the correct fiscal year for the audit in question when looking at the SF-SAC data. However, the report will contain the correct information.

Fiscal year is not a common search term for resolution officials (from our research), and this is unlikely to have a significant impact on resolution/oversight.

## Mediating the error

There is no clear end-user mediation, other than looking at the Single Audit Report for the correct data.

## Possible resolution

We need a way to associate more than one report id with a record, and indicate which is “primary.” In this way, we can retain old (incorrect) ids with some records, and then associate a new (correct) id with it. The primary id should be used as the default in all views.

This is difficult in dissemination, and may require changes to our model.


