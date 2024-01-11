---
layout: home.njk
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
---

# Data dictionary

The data dictionary provides an overview of the FAC API from the perspective of historical Census data. Many users are familiar with the pipe-delimited CSV files distributed by Census. These documents help developers navigate from what-was to what-is.


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
