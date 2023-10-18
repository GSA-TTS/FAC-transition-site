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
  - audit_findings
  - audit_findings_text
  - passthrough
  - secondary_auditors
  - additional_ueis
  - additional_eins
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

  <h3 id="endpoint-{{ep}}">Endpoint: <code>{{ep}}</code></h3>

  <div class="usa-table-container--scrollable" tabindex="0">
    <table class="usa-table">
      <caption>
      Data from the {{ep}} endpoint in the FAC API.
      </caption>
      <thead>
        <tr>
          <th scope="col">FAC</th>
          <th scope="col">Census</th>
          <th scope="col">Type</th>
        </tr>
      </thead>
      <tbody>
  {% for line in dictionary_json[ep] %}
    <tr>
          <th scope="row">{{line.GSAFAC}}</th>
          <td>{{line.Census}}</td>
          <td>{{line.Type}}</td>
    </tr>
  {% endfor %}
    </tbody>
    </table>
  </div>
{% endfor %}
