---
layout: home.njk
title: National Single Audit Coordinators
meta:
  name: NSACs
  description: asdf
---

# National Single Audit Coordinators

If you have questions about...

{% for nsac in omb["nsacs"] %}
    <h2>{{nsac["agency"]}}</h2>
    <div class="grid-container">
    {% for tag, entry in nsac %}
        {# Filter out any empty keys in the YAML #}
        {% if entry %}
        <div class="grid-row">
            <div class="tablet:grid-col-2"><b>{{tag | capitalize}}</b>:</div>
            {# Handle when we have sublists #}
            {% if entry is string %}
                <div class="tablet:grid-col-6">{{entry}}</div>
            {% else %}
                <div class="tablet:grid-col-6">
                {%- for val in entry -%}
                    {%- if loop.last -%}
                        {{val}}
                    {%- else -%}
                        {{val}},&nbsp;
                    {%- endif -%}
                {%- endfor -%}
                </div>
            {% endif %}
        </div>
        {% endif %}
    {% endfor %}
    </div>
{% endfor %}