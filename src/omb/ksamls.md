---
layout: home.njk
title: Key Single Audit Management Liasons
meta:
  name: KSAMLs
  description: asdf
---

# Key Single Audit Management Liasons

If you have questions about...

<table class="usa-table">
    <caption>
        Key Single Audit Management Liasons
    </caption>
    <thead>
        <tr>
            <th scope="col">Agency</th>
            <th scope="col">Contact</th>
            <th scope="col">Email</th>
        </tr>
    </thead>
    <tbody>
        {% for ksaml in omb["ksamls"] %}
            <tr>
                <th scope="row">{{ksaml["agency"]}}</th>
                <td>{{ksaml["contact"]}}</td>
                <td>{{ksaml["email"] | lower}}
            </tr>
        {% endfor %}
    </tbody>
</table>
