---
layout: home.njk
title: FAC data dictionary - additional_eins
meta:
  name: FAC data dictionary - additional_eins
  description: A description of fields in the API.
---


# `/additional_eins`

<div class="usa-table-container--scrollable" tabindex="0">
  <table class="usa-table">
    <caption>
    Data from the `additional_eins` endpoint in the FAC API.
    </caption>
    <thead>
      <tr>
        <th scope="col">FAC</th>
        <th scope="col">Census</th>
        <th scope="col">Type</th>
      </tr>
    </thead>
    <tbody>
{% for line in dictionary_json.additional_eins %}
  <tr>
        <th scope="row">{{line.GSAFAC}}</th>
        <td>{{line.Census}}</td>
        <td>{{line.Type}}</td>
  </tr>

{% endfor %}
  </tbody>
  </table>
</div>
