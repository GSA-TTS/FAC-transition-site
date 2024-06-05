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
                    <td>
                        <ul>
                            {%- for contact in program["contacts"] -%}
                                <li> {{contact["name"]}}<br/>
                                    {%- if contact["title"] -%}{{contact["title"]}}<br/>{%- endif -%}
                                    {%- if contact["office"] -%}{{contact["office"]}}<br/>{%- endif -%}
                                </li>
                            {%- endfor -%}
                        </ul>
                    </td>
                    <td>
                        <ul>
                        {%- for contact in program["contacts"] -%}
                            <li>{{contact["email"] | lower}}</li>
                        {%- endfor -%}
                        </ul>
                    </td>
                    <td>{{program["phone"]}}</td>                
                </tr>
        {%- endfor -%}
        </tbody>
    </table>
{%- endfor -%}