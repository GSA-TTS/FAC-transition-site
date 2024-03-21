---
layout: home.njk
title: FAC findings updates
meta:
  name: FAC findings updates
  description: A short-term landing page for findings while search is underperforming.
---

# FAC findings updates

Because the FAC search is currently limited to UEI-only, we'll be providing a daily export of new submissions with findings. These workbooks will provide a summary of audits with findings submitted each day. Audits without findings aren't included.

If you need additional fields, please [contact the FAC helpdesk](https://support.fac.gov/hc/en-us/requests/new).

## About the workbooks

The workbooks below provide a summary of audits that had findings. 

The workbook `2024-03-17-findings.xlsx` gathers all audits accepted by the FAC on March 17th that had findings. It does not list *all* audits accepted that day; only audits that had findings.

Each workbook has multiple sheets.

* The first set of sheets are numbered; these are by-agency. A tab named "84" will contain all awards/findings for ALNs beginning with the number `84`. 
* The second set of sheets are arranged by cognizance and oversight. The tab `COG-93` will contain all audits (with findings) for which HHS is cognizant; the tab `OVER-84` will contain all audits for which Education has oversight.

The data in the first set of tabs (by-agency) and the second set of tabs (by-cog/over) is the same. It is just two different ways of looking at the same information.

Each sheet in the workbook has the following columns:

* `report_id`, which is hyperlinked to the Single Audit Report for that submission.
* `auditee_name`, which is hyperlinked to the summary page for the audit on [fac.gov](https://fac.gov/)
* `award_reference`, which is the award reference from the Federal awards submission workbook.
* `reference_number`, which is the finding reference number for that award/finding.
* `aln`
* `cog_over`, which contains both whether `COG`nizance or `OVER`sight is assigned, and for which agency.
* `federal_program_name`
* `amount_expended`
* `is_direct`, if it was a direct award
* `is_major`, if it is a major program
* `is_passthrough_award`, if it is a passthrough award
* `passthrough_amount`
* `is_modified_opinion`, `is_other_matters`, ..., should be self-explanatory.
* `prior_ref_finding_numbers`

If additional fields are required/desired, please contact the [help desk](https://support.fac.gov/hc/en-us). 

## Findings workbooks

Workbooks are listed with the most recent at the top.

<ul>
{% for wb in findings %}
  <li><a href="{{ config.baseUrl }}assets/findings/{{wb}}-findings.xlsx">{{ wb }}</a></li>
{% endfor %}
</ul>
