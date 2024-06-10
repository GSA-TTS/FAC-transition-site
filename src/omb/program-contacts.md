---
layout: home.njk
title: Program contacts
meta:
  name: NSACs
  description: asdf
---

# Program Contacts

If you have questions about...

{%- for pc in omb["program-contacts"] -%}
    <h2>{{pc["agency"]}}</h2>
    <p>Agency Number: {{pc["agency_number"]}}</p>
    <table class="usa-table">
        <caption>Programs within {{pc["agency"]}}</caption>
        <thead>
            <tr>
                <th scope="col">ALNs</th>
                <th scope="col">Contacts</th>
                <th scope="col">Emails</th>
                <th scope="col">Phone</th>
            </tr>
        </thead>
        <tbody>
        {%- for program in pc["programs"] -%}
                <tr>
                    <th scope="row">
                        {%- for aln in program["alns"] -%}
                            {{aln}}<br/>  
                        {%- endfor -%}
                    </th>
                    <td class="text-top">
                        {%- if program["contacts"] | length > 1 -%}<ul>{%- endif -%}
                            {%- for contact in program["contacts"] -%}
                                {% set con = contact["contact"] %}
                                {%- if program["contacts"] | length > 1 -%}<li>{%- endif -%} {{con["name"]}}<br/>
                                    {%- if con["title"] -%}{{con["title"]}}<br/>{%- endif -%}
                                    {%- if con["office"] -%}{{con["office"]}}<br/>{%- endif -%}
                                {%- if program["contacts"] | length > 1 -%}</li>{%- endif -%}
                            {%- endfor -%}
                        {%- if program["contacts"] | length > 1 -%}</ul>{%- endif -%}
                    </td>
                    <td class="text-top">
                        {%- if program["contacts"] | length > 1 -%}<ul>{%- endif -%}
                        {%- for contact in program["contacts"] -%}
                            {% set con = contact["contact"] %}
                            {%- if program["contacts"] | length > 1 -%}<li>{%- endif -%}{{con["email"] | lower}}{%- if program["contacts"] | length > 1 -%}</li>{%- endif -%}
                        {%- endfor -%}
                        {%- if program["contacts"] | length > 1 -%}</ul>{%- endif -%}
                    </td>
                    <td class="text-top">
                        {%- if program["program_phone"] -%}
                            {{ program["program_phone"] }}
                        {%- else -%}
                            {%- if program["contacts"] | length == 1 -%}
                                {{ program["contacts"][0]["contact"]["phone"] }}
                            {%- else -%}
                                <ul>
                                    {%- for contact in program["contacts"] -%}
                                        {% set con = contact["contact"] %}
                                        {%- if con["phone"] -%} <li> {{ con["phone"] }} </li>{%- endif -%} 
                                    {%- endfor -%}
                                </ul>
                            {%- endif -%}
                        {%- endif -%}
                    </td>
                </tr>
        {%- endfor -%}
        </tbody>
    </table>
{%- endfor -%}