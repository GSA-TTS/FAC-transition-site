---
layout: sidenav.njk
title: SF-SAC cross-validations
meta:
  name: SF-SAC cross-validations
  description: Documentation about the data migration from Census to GSA.
BASEURL: asdfasedf
---

# {{title}}

When a submission is complete, and an auditor and grantee are ready to submit, we perform one last set of checks. These validations look across the entire submission; hence, we call them "cross-validations."

These validations are the penultimate line of defense before a submission is considered complete. They are the validations that look across all of the form sections, and attempt to help auditors and auditees submit consistent, correct data. For example:

* The check `auditee_ueis_match` makes sure that every form section has the same UEI in it. This way, if an auditor is supporting multiple submissions, we don't actually end up with form sections from different grantees.
* The check `check_certifying_contacts` make sure that one person did not attempt to certify as both the auditor and auditee certifying officials.
* The check `tribal_data_sharing_consent` makes sure that the consent to distribute the audit report was given if the entity is marked as being a Tribe or Tribal Organization.

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
