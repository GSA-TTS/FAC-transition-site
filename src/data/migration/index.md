---
# Metadata
layout: home.njk
title: Table migration transforms
meta:
  name: Table migration transforms
  description: Documentation about the data migration from Census to GSA.
# Layout
eleventyComputed:
  eleventyNavigation:
    key: Table transforms
    parent: Historic migration
in_page_nav: true
# Page data
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

# {{title}} 

The Census data from 2016 to 2022 saw multiple changes to the SF-SAC and validations that were applied. For example, there are entire sections of the form that did not exist before 2018.

The tables below describe the transformations that we applied to Census data tables in migrating to the GSA intake.

Where we say `No transformation`, this means that we passed data through without any modification or further validation.


{%- for tab in tables -%}
  <h3 id="endpoint-{{ep}}">Table: <code>{{tab}}</code></h3>
  <div class="usa-table-container" tabindex="0">
    <table class="usa-table">
      <caption>
      Transformations to data in the dissemination table <code>{{ tab }}</code>.
      </caption>
      <thead>
        <tr>
          <th scope="col">Census</th>
          <th scope="col">GSA</th>
          <th scope="col">Data type</th>
        </tr>
      </thead>
      <tbody>
  {%- for line in curation.xform_json[tab] -%}
    <tr>
          <td>{{line.Census}}</td>
          <th scope="row">{{line.GSA}}</th>           
          <td>{{line.Transformations | safe }}</td>
    </tr>
  {%- endfor -%}
    </tbody>
    </table>
  {% if tab == "general" %}
  <p>&dagger; The dissemination logic converts booleans to a “yes” or “no” text instead, this change is unrelated to the migration logic.</p>

  <p>&dagger;&dagger;: The dissemination logic converts this date from utc time zone to american samoa zone. This is transformation is unrelated to the migration logic</p>
  {% endif %}
  </div>
{%- endfor -%}

