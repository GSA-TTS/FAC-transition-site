---
layout: sidenav.njk
title: SF-SAC cross-validations
meta:
  name: SF-SAC cross-validations
  description: Documentation about the data migration from Census to GSA.
baseurl: https://github.com/GSA-TTS/FAC/tree/414f9932b3797de68c7271ba0b471c9b834062ce/backend/audit/cross_validation
---

# {{title}}

These validations are the penultimate line of defense before a submission is considered complete. They are the validations that look across all of the form sections, and attempt to help auditors and auditees submit consistent, correct data.

## Why cross-validations?

The SF-SAC expects grantees and auditors to report on data that is interconnected. For example:

1. A grantee might have an award from an agency. They need to report ont that award.
2. If the auditor found something of concern, then there are findings that have to be described. Findings are associated with awards.
3. A finding will have a corrective action plan. That plan is described in reference to both an award and a finding.

These connections are critical to oversight officials; for that reason, we do our best to help auditees and auditors describe these connections in the SF-SAC correctly. The cross-validations are how we support users in this kind of inter-form data entry.

## What are the cross-validations?

There are fewer cross-validations than intake validations, but they play a role every bit as critical. For example:

* The check `auditee_ueis_match` makes sure that every form section has the same UEI in it. This way, if an auditor is supporting multiple submissions, we don't actually end up with form sections from different grantees.
* The check `check_certifying_contacts` make sure that one person did not attempt to certify as both the auditor and auditee certifying officials.
* The check `tribal_data_sharing_consent` makes sure that the consent to distribute the audit report was given if the entity is marked as being a Tribe or Tribal Organization.

Below is a list of all of the cross validations applied to the SF-SAC as of July 2024.

<div class="usa-table-container" tabindex="0">
<table class="usa-table">
    <caption>
    Cross-validations applied to the SF-SAC before submission.
    </caption>
    <thead>
    <tr>
        <th scope="col">Validation</th>
        <th scope="col">Description</th>
    </tr>
    </thead>
    <tbody>
{%- for section in curation.cross_validations -%}
    {%- for check in section.checks -%}
        <tr>
            <td scope="row"><a href='{{ check.url | replace("BASEURL", baseurl) }}'>{{check.check}}</a></td>
            <td>{{check.description}}</td>
        </tr>
    {%- endfor -%}
{%- endfor -%}
</tbody>
</table>
</div>


## From intake to dissemination

Once these validations pass, the auditor and auditee can certify the correctness of their submission, and the auditee can perform the final submission. This is, unto itself, a final kind of validation. See how the [dissemination validations]({{ "../dissemination-validations/" | absoluteUrl }}) play a final role.
