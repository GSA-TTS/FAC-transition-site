---
# Metadata
layout: home.njk
title: Current data dictionary
header: Current data dictionary
meta:
  name: Current data dictionary
  description: Find resources for downloading single audit data.
# Layout
eleventyComputed:
  eleventyNavigation:
    key: Current dictionary
    parent: Download
in_page_nav: true
---

# Current data dictionary (2016-present)

{# FIXME WRONG TEXT #}

The historic data is all SF-SAC data collected by Census from 1998&ndash;2015. The SF-SAC form changed over the years, with different values coming into existence at different times. We have attempted to capture that in this data dictionary.

The quality of data validations were limited in the beginning, and improved over the years. The current Clearinghouse is unable to answer any questions about the historic data at this time; it is provided as part of the public record.

{%- set file = "" -%}


{%- for row in download_json['current_dictionary'] -%}

    {%- if (row['endpoint'] != file) and (loop.index0 != 0) -%}
        </tbody>
        </table>
        </div>
    {%- endif -%}

   {%- if row['endpoint'] != file -%}
    <h2>{{row['endpoint']}} dictionary</h2>
    <div class="usa-table-container" tabindex="0">
    <table class="usa-table">
        <caption>
        Dictionary for the {{row['endpoint']}} table  
        </caption>
        <thead>
        <tr>
            <th scope="col">Field name</th>
            <th scope="col">Data type</th>
            <th scope="col">Description</th>
            <th scope="col">Notes</th>
        </tr>
        </thead>
        <tbody>
    {%- endif -%}
        
        <tr>
            {%- for key in ['field', 'data_type', 'description', 'notes'] -%}
                {%- if loop.index0 == 0 -%}
                    <td><b>{{row[key]}}</b></td>
                {%- else -%}
                    <td>{{row[key]}}</td>
                {%- endif -%}
            {%- endfor -%}
        </tr>

    {%- set file = row['endpoint'] -%}

    {%- if loop.last %}

    {# Always close the last table #}
    </tbody>
    </table>
    </div>
    {%- endif -%}
{%- endfor -%}


