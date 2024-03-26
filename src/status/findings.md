---
layout: home.njk
title: FAC findings updates
meta:
  name: FAC findings updates
  description: A short-term landing page for findings while search is underperforming.
---

# FAC findings updates

Because the FAC search is currently limited to UEI-only, we'll be providing a daily export of new submissions with findings. These workbooks will provide a summary of audits with findings submitted each day. **Audits without findings aren't included.**

We'll continue to upload these exports daily until April 16, 2024.

## About the workbooks

The workbooks below provide a summary of audits that had findings. Each workbook represents one day of submissions.

For example, workbook `2024-03-17-findings.xlsx` includes all audits with findings accepted by the FAC on March 17th. It doesn't include audits that didn't have findings.

Each workbook has multiple tabs.

The first set of tabs are numbered by agency. A tab named "84" will contain all audits with findings for awards with ALNs beginning with the number `84`.

The second set of tabs represent cognizance and oversight. The tab `COG-93` will contain all audits with findings that have HHS for their cognizant agency. The tab `OVER-84` will contain all audits with findings that have Education for their oversight agency.

The data in the first set of tabs and the second set of tabs is the same. It's two different ways of looking at the same information.

Each tab in the workbook has the following columns:

* `report_id`: links to the Single Audit Report for that submission.
* `auditee_name`: links to the summary page for the audit on [fac.gov]({{ config.baseUrl }}), which includes the auditor and auditee General Information.
* `award_reference`: award reference from the Federal awards submission workbook.
* `reference_number`: finding reference number for that award and finding.
* `aln`: ALN for that award and finding.
* `cog_over`: if an award has a `COG`nizance or `OVER`sight and for which agency.
* `federal_program_name`: name of the awarding program.
* `amount_expended`: dollar amount of each Federal award.
* `is_direct`: is it a direct award?
* `is_major`: is it a major program?
* `is_passthrough_award`: is it a passthrough award?
* `passthrough_amount`: dollar amount of the passthrough award.
* `is_modified_opinion`: does the award have a modified opinion?
* `is_other_matters`: does the award have other matters?
* `is_material_weakness`: does the award have a material weakness?
* `is_significant_deficiency`: does the award have a significant deficiency?
* `is_other_findings`: does the award have other findings?
* `is_questioned_costs`: does the award have questioned costs?
* `is_repeat_findings`: is the award finding a repeat finding?
* `prior_ref_finding_numbers`: if applicable, the prior finding reference number.

## Findings workbooks

Workbooks are listed with the most recent at the top.

<ul>
{% for wb in findings %}
  <li><a href="{{ config.baseUrl }}assets/findings/{{wb}}-findings.xlsx">{{ wb }}</a></li>
{% endfor %}
</ul>
