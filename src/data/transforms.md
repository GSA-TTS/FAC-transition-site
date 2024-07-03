---
layout: sidenav.njk
title: Historic migration transforms
meta:
  name: Historic migration transforms
  description: Documentation about the data migration from Census to GSA.
tables:
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
---

{% for tab in tables %}

  <h3 id="endpoint-{{ep}}">Endpoint: <code>{{tab}}</code> (formerly <code>{{formerly[loop.index0]}})</h3>

  <div class="usa-table-container" tabindex="0">
    <table class="usa-table">
      <caption>
      Data from the {{tab}} endpoint in the FAC API.
      </caption>
      <thead>
        <tr>
          <th scope="col">Census</th>
          <th scope="col">GSA</th>
          <th scope="col">Data type</th>
        </tr>
      </thead>
      <tbody>
  {% for line in curation.xform_json[tab] %}
    <tr>
          <td>{{line.Census}}</td>
          <th scope="row">{{line.GSA}}</th>
          <td>{{line.Transformations}}</td>
    </tr>
  {% endfor %}
    </tbody>
    </table>


&dagger; The dissemination logic converts booleans to a “yes” or “no” text instead, this change is unrelated to the migration logic.

&dagger;&dagger;: The dissemination logic converts this date from utc time zone to american samoa zone. This is transformation is unrelated to the migration logic,,
  </div>
{% endfor %}
