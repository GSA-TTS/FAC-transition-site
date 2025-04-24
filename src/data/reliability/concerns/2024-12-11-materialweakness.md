---
layout: sidenav.njk
tags: known_errors
order: 2
title: Incorrectly mapped MATERIALWEAKNESS
slug: The value for a historical field was incorrectly mapped from Census to GSA
discovered_date: 2024-11-20
timeline_to_repair:
github:
log: 
---


{% from "components/macros.njk" import curationSummary %}

{{ curationSummary(slug, discovered_date, timeline_to_repair, github, log) }}

## Curation challenge


The FAC received a helpdesk ticket reporting a data discrepancy between the new system and legacy  concerning the fields `is_internal_control_material_weakness_disclosed` and `MATERIALWEAKNESS` (respectively).

According to the published data dictionary, the `MATERIALWEAKNESS` field in the legacy database should map to `is_internal_control_material_weakness_disclosed` in the new database. However, during data migration, the algorithm used `MATERIALWEAKNESS_MP` instead, causing a data inconsistency.

### Example

As stated. Consistent for all records with a report_id containing `CENSUS`.

## Consequences

This is an error in the data that was migrated.

This does not impact data collected currently (e.g. data with a report_id containing `GSAFAC`).

## Mediating the error

Resolution officials should look at a different field in the data when making decisions.

## Possible resolution

We need to update all 250K+ historical records to record the correct value.

