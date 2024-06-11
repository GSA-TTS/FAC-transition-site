---
layout: home.njk
title: Key Single Audit Management Liasons
meta:
  name: KSAMLs
  description: Contact information for Key Single Audit Management Liasons
---

# Key Single Audit Management Liasons

If you have questions about how to report on federal funds you may have received, find your Key Single Management Liason (KSAML) below:

<table class="usa-table">
    <caption>
        Key Single Audit Management Liasons
    </caption>
    <thead>
        <tr>
            <th data-sortable scope="col" role="columnheader" aria-sort="descending">Agency</th>
            <th scope="col">Contact</th>
            <th scope="col">Email</th>
        </tr>
    </thead>
    <tbody>
        {% for ksaml in contacts["ksaml"] %}
            <tr>
                <th scope="row" data-sort-value='{{ksaml["Agency"]}}'>{{ksaml["Agency"]}}</th>
                <td>{{ksaml["Name"]}}</td>
                <td>{{ksaml["E-Mail Address"] | lower}}</td>
            </tr>
        {% endfor %}
    </tbody>
</table>
<div
    class="usa-sr-only usa-table__announcement-region"
    aria-live="polite"
  ></div>