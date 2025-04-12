---
layout: sidenav.njk
title: FAC data dictionary
meta:
  name: FAC data dictionary
  description: A description of fields in the API.
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
eleventyComputed:
  eleventyNavigation:
    key: Data dictionary
    parent: API resources
---

# Data dictionary

[Download the Data Dictionary (Excel)](/assets/api/FAC%20API%20Data%20Dictionary.xlsx) for definitions, descriptions, and details of the data fields for each endpoint of the FAC API. 

# Legacy Field Mapping

The following table maps fields from the Census Bureau’s previous data structure to the new FAC API fields.


## Dictionary by endpoint

<ol>
{% for ep in endpoints %}
  <li><a href="#endpoint-{{ep}}">{{ep}}</a></li>
{% endfor %}
</ol>


{% for ep in endpoints %}

  <h3 id="endpoint-{{ep}}">Endpoint: <code>{{ep}}</code> (formerly <code>{{formerly[loop.index0]}})</h3>

  <div class="usa-table-container--scrollable" tabindex="0">
    <table class="usa-table">
      <caption>
      Data from the {{ep}} endpoint in the FAC API.
      </caption>
      <thead>
        <tr>
          <th scope="col">Census</th>
          <th scope="col">GSA</th>
          <th scope="col">Data type</th>
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

