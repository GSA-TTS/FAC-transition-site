---
layout: home.njk
title: FAC data dictionary - general
meta:
  name: FAC data dictionary - general
  description: A description of fields in the API.
---


# `/general`

<div class="usa-table-container--scrollable" tabindex="0">
  <table class="usa-table">
    <caption>
    Data from the general endpoint in the FAC API.
    </caption>
    <thead>
      <tr>
        <th scope="col">FAC</th>
        <th scope="col">Census</th>
        <th scope="col">Type</th>
      </tr>
    </thead>
    <tbody>
{% for line in dictionary_json.general %}
  <tr>
        <th scope="row">{{line.GSAFAC}}</th>
        <td>{{line.Census}}</td>
        <td>{{line.Type}}</td>
  </tr>

{% endfor %}
  </tbody>
  </table>
</div>

