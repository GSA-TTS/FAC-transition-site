---
layout: sidenav.njk
title: FAC API differences
meta:
  name: FAC api differences
  description: Some of the differeces from the Census FAC
differences:
    general:
        - census: COMPLETED ON
          gsa: <code>submitted_date</code> or <code>fac_accepted_date</code>
          comment: >
            We do not know what Census meant by this field. We use `submitted_date` internally to mean "the day on which the final button was pressed by the auditee in order to submit their audit." We use `fac_accepted_date` to mean "the day upon which we processed and disseminated their audit."
        - census: EINSubCode
          gsa: Unknown
          comment:
        - census: AUDITEE STREET2
          gsa: N/A
          comment: Not in the 2023 collection.
        - census: AuditeeFax
          gsa: N/A
          comment: Not in the 2023 collection.
        - census: AuditeeNameTitle
          gsa: <code>auditee_certify_name</code> and <code>auditee_certify_title</code>
          comment: These are likely the closest mappings in the GSA FAC API.
        - census: <code>TYPEREPORT_MP</code>
          gsa: Rollup
          comment: See <a href="/developers/rollups/">rollups</a>.
        - census: <code>SIGNIFICANTDEFICIENCY_MP</code>
          gsa: Rollup
          comment: See <a href="/developers/rollups/">rollups</a>.
        - census: <code>QCOSTS</code>
          gsa: Rollup
          comment: See <a href="/developers/rollups/">rollups</a>.
        - census: <code>CYFINDINGS</code>
          gsa: Rollup
          comment: See <a href="/developers/rollups/">rollups</a>.
        - census: <code>PYSCHEDULE</code>
          gsa: Rollup
          comment: See <a href="/developers/rollups/">rollups</a>.
        - census: COMPONENT DATE RECEIVED
          gsa: Unknown
          comment:
        - census: FORM DATE RECEIVED
          gsa: Unknown
          comment:
        - census: INITIAL DATE RECEIVED 
          gsa: <code>submitted_date</code>
          comment: >
            GSA FAC tracks multiple timestamps as the auditor and auditee progress through the system. <code>date_created</code> is the date the audit is first initialized in the FAC. <code>ready_for_certification_date</code> is the point that the audit is locked and marked ready to be certified. The certified dates are when the auditor/auditee sign. <code>submitted_date</code> is when the auditee "pushes the button" to certify, and <code>fac_accepted_date</code> is when the FAC acknowledges that submission. These last two days are currently (Jan '24) *always* the same, but there may be reasons, in the future, that they are not. 
        - census:  FAC RELEASE DATE
          gsa: <code>fac_accepted_date</code>
          comment: >
            GSA sets <code>fac_accepted_date</code> to the date that the audit is compeleted and moved to dissemination.
        - census: <code>AUDITEEDATESIGNED</code>
          gsa: <code>auditee_certified_date</code>
          comment:
        - census: <code>CPADATESIGNED</code>
          gsa: <code>auditor_certified_date</code>
          comment:
        - census: FAC ACCEPTED DATE
          gsa: <code>fac_accepted_date</code>
          comment:
        - census: <code>PREVIOUSCOMPLETEDON</code>
          gsa: Unknown
          comment:
        - census: <code>REPORTREQUIRED</code>
          gsa: Unknown
          comment:
        - census: <code>MATERIALWEAKNESS_MP</code>
          gsa: Rollup
          comment: See <a href="/developers/rollups/">rollups</a>.
        - census: DBKEY
          gsa:
          comment: >
            Not yet incorporated into the GSA FAC API. This value does not exist for 2023 and future years. The DBKEY and AUDITYEAR formed a compound primary key in the Census FAC, and GSA uses a single PK (<code>report_id</code>) which is guaranteed to be globally unique within the system. When historical data is incorporated into the collection, all historical audits will be given a new-style <code>report_id</code>, and a mapping from <code>report_id</code> to <code>DBKEY</code> and <code>AUDITYEAR</code> will be provided as a standalone table. It will not be part of <code>general</code>. 
        - census: <code>COGOVER</code>
          gsa: Rollup
          comment: See <a href="/developers/rollups/">rollups</a>.
        - census: <code>CPAFAX</code>
          gsa: N/A
          comment:
        - census: CPASTREET2
          gsa: N/A
          comment:
    secondary_auditors:
        - census: <code>CPAFAX</code>
          gsa: N/A
          comment:
    findings:
        - census: ELECAUDITFINDINGSID
          gsa: <code>award_reference</code>
          comment: The <code>award_reference</code> is an effective key into the findings, findings text, and CAP text tables.
        - census: FINDING SEQ_NUMBER
          gsa: <em>implicit</em>
          comment: Findings are ordered. GSA can consider adding an explicit index back in.
        - census:  CAP SEQ_NUMBER
          gsa: Unknown?
          comment: If this is a reverse-mapping from CAP text, then it is not in the GSA endpoints. Forward-referencing from the <code>award_reference</code> is recommended.
    federal_awards:
        - census: <code>TYPEREQUIREMENT</code>
          gsa: <code>type_requirement</code>
          comment:
        - census: RD
          gsa: Unknown
          comment:
        - census: ARRA
          gsa: Unknown
          comment:
        - census: CFDAPROGRAMNAME
          gsa: Uknown
          comment:
    notes_to_sefa:
        - census: ID
          gsa: Unknown
          comment:
        - census: REPORTID
          gsa: Unknown
          comment:
        - census: VERSION
          gsa: Unknown
          comment:
        - census: SEQ_NUMBER
          gsa: 
          comment: Forward reference from <code>award_reference</code>
        - census: TYPE_ID
          gsa: Not needed
          comment: GSA encodes the notes differently; this field is not required to determine row type.
        - census: NOTE_INDEX
          gsa: <em>implicit</em>
          comment: Notes are ordered.
eleventyComputed:
  eleventyNavigation:
    key: Data differences
    parent: API resources
---


{% macro endpoint(ep) %}

<table class="usa-table usa-table--striped">
  <caption>
    Differences in the <code>{{ep}}</code> endpoint.
  </caption>
  <thead>
    <tr>
      <th scope="col">Census field</th>
      <th scope="col">FAC field</th>
      <th scope="col">Description</th>
    </tr>
  </thead>
  <tbody>
    {% for row in differences[ep] %}
        {% if row.census %}
            <tr>
                <th scope="row" 
                    style="vertical-align: top;">
                        {{ row.census | safe }}
                </th>
                <td style="vertical-align: top;">{{ row.gsa | safe }}</td>
                <td style="vertical-align: top;">
                    {% if row.gsa == "N/A" %}
                        Not in the 2023 collection.
                    {% elif row.gsa == "Unknown" %}
                        No information available at this time.
                    {% elif row.gsa == "Rollup" %}
                        See [rollups]({{'/api/rollup/' | htmlBaseUrl(baseUrl)}}).
                    {% else %}
                        {{ row.comment | safe }}
                    {% endif %}
                </td>
            </tr>
        {% endif %}
    {% endfor %}
  </tbody>
</table>


{% endmacro %}



# FAC API differences with historical fields


<div class="usa-alert usa-alert--warning">
  <div class="usa-alert__body">
    <h4 class="usa-alert__heading">This is a living document</h4>
    <p class="usa-alert__text">
        As of this writing (February '24), the historical data migration is underway. We're still discussing how best to map historical data that does not fit the 2023 collection data model. Federal API users are encouraged to engage the FAC in dialogue as to how historical data is exposed for future use.
    </p>
  </div>
</div>

We are in the process of migrating historical data (2018-2023) so that it maps into the 2023 collection's PRA. Fields that do not fit (e.g. `DBKEY`) will be mapped in via a seperate (e.g. `historical`) endpoint. As part of this process, some historical fields have been omitted. For example:

1. **Short-lived fields.** The historical data includes some fields that only existed for a handful of years and do not have an apparent correlate when compared to other years.
2. **Duplicative data.** The historical data includes some fields that "roll up" one or more fields into a secondary field. Where practical, we have omitted these fields in favor of their constituent parts.

When trying to understand how GSA maps historical data into the API, three parts of the codebase are useful references:

1. **Historical migration code**. GSA implemented the historical migration by (1) loading historical data, (2) creating "virtual submissions" from it (e.g. constructing submission workbooks and form data), (3) running them through the entire submission process, including validation, and (4) disseminating those "virtual audits." This code is in [census_historical_migration](https://github.com/GSA-TTS/FAC/tree/main/backend/census_historical_migration).
2. **`IntakeToDissemination`**. [This code](https://github.com/GSA-TTS/FAC/blob/main/backend/audit/intake_to_dissemination.py) maps the internal data structures of the GSA FAC through to the dissemination tables (which feed the API). 
3. **The API itself**. The API ([v1.0.3](https://github.com/GSA-TTS/FAC/tree/a83c0f06a7bf3737f48f5061db95488a34305ba4/backend/dissemination/api/api_v1_0_3)) provides the mapping from the internal dissemination tables through to PostgREST, which is then consumed by clients.

This document is organized by FAC endpoint.

- [FAC API differences with historical fields](#fac-api-differences-with-historical-fields)
  - [Endpoints](#endpoints)
    - [general](#general)
    - [secondary\_auditors](#secondary_auditors)
    - [findings](#findings)
    - [federal\_awards](#federal_awards)
    - [notes\_to\_sefa](#notes_to_sefa)
  - [Other tables](#other-tables)

## Endpoints 

### general

{{endpoint("general")}}
 
### secondary_auditors
 
This was previously the <code>CPAS</code> table.

{{endpoint("secondary_auditors")}}

### findings 

{{endpoint("findings")}}

### federal_awards

This was previously the <code>CFDAs</code> table.

{{endpoint("federal_awards")}}

### notes_to_sefa

{{endpoint("notes_to_sefa")}}

## Other tables

Census had three more tables that are not represented (at this time) in the GSA FAC API:

* `REVISIONS` (or similar) will be implemented in Q2/Q3 after further research with agencies.
* `AGENCY` It is unclear whether the FAC *should* provide this table. In Q2/Q3, we will determine whether it is redundant with offerings from SAM.gov or elsewhere.
* `DUNS` will be investigated as part of historical data migration and mapping to new-style reports. There are no DUNS numbers in the 2023 collection, and therefore it is not present as part of the 2023 data.
