---
layout: home.njk
title: FAC Data Dictionary
meta:
  name: FAC data dictionary
  description: Definitions, descriptions, and mappings for data fields used in the FAC API.
eleventyComputed:
  eleventyNavigation:
    key: Data dictionary
    parent: API resources
in_page_nav: true
# Page data
endpoints:
  - general
  - federal_awards
  - notes_to_sefa
  - findings
  - findings_text
  - corrective_action_plans
  - passthrough
  - secondary_auditors
  - additional_ueis
  - additional_eins
formerly:
  - gen
  - cfda
  - notes
  - findings
  - findingstext
  - captext
  - passthrough
  - cpas
  - ueis
  - eins
---

# FAC Data Dictionary

This page describes the data fields available through the FAC API, including each endpoint’s structure and the types of values returned.

For a complete reference, you can also download the full data dictionary as an Excel file:

- [Download the Data Dictionary (Excel)](/assets/api/FAC%20API%20Data%20Dictionary.xlsx)

---

## Legacy Field Mapping

The tables below show how field names from the former Census-based system map to the current GSA API fields. This is helpful if you're comparing historical downloads or reusing past queries.

---

## Dictionary by Endpoint

The following endpoints are available in the API:

<ol>
{% for ep in endpoints %}
  <li><a href="#endpoint-{{ep}}">{{ep}}</a></li>
{% endfor %}
</ol>

---

{% for ep in endpoints %}
<h3 id="endpoint-{{ep}}">Endpoint: <code>{{ep}}</code> (formerly <code>{{formerly[loop.index0]}})</h3>

<div class="usa-table-container--scrollable" tabindex="0">
<table class="usa-table">
  <caption>Field mappings and types for the <code>{{ep}}</code> endpoint.</caption>
  <thead>
    <tr>
      <th scope="col">Census Field</th>
      <th scope="col">GSA Field</th>
      <th scope="col">Data Type</th>
    </tr>
  </thead>
  <tbody>
{% for line in dictionary_json[ep] %}
    <tr>
      <td>{{line.Census}}</td>
      <th scope="row">{{line.GSAFAC}}</th>
      <td>{{line.Type}}</td>
    </tr>
{% endfor %}
  </tbody>
</table>
</div>
{% endfor %}


