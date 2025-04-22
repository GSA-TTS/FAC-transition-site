---
# Metadata
layout: home.njk
title: Historic data dictionary
header: Historic data dictionary
meta:
  name: Historic data dictionary
  description: Find resources for downloading single audit data.
# Layout
eleventyComputed:
  eleventyNavigation:
    key: Historic dictionary
    parent: Download
in_page_nav: true
---

# Historic data dictionary (1998-2015)

The historic data is all SF-SAC data collected by Census from 1998&ndash;2015. The SF-SAC form changed over the years, with different values coming into existence at different times. We have attempted to capture that in this data dictionary.

The quality of data validations were limited in the beginning, and improved over the years. The current Clearinghouse is unable to answer any questions about the historic data at this time; it is provided as part of the public record.

{%- set file = "" -%}
{%- set closetable = false -%}

{%- for row in download_json['historic_dictionary'] -%}

    {%- if (row['file'] != file) and (loop.index0 != 0) -%}
        </tbody>
        </table>
        </div>
    {%- endif -%}

   {%- if row['file'] != file -%}
    <h2>{{row['file']}} dictionary</h2>
    <div class="usa-table-container" tabindex="0">
    <table class="usa-table">
        <caption>
        Dictionary for the {{row['file']}} table  
        </caption>
        <thead>
        <tr>
            <th scope="col">Field name</th>
            <th scope="col">Description</th>
            <th scope="col">Description continued</th>
            <th scope="col">1997-2000</th>
            <th scope="col">2001-2003</th>
            <th scope="col">2004-2007</th>
            <th scope="col">2008-2009</th>
            <th scope="col">2010-2012</th>
            <th scope="col">2013-2015</th>
        </tr>
        </thead>
        <tbody>
    {%- endif -%}
        
        <tr>
            {%- for key in ['field_name', 'description', 'description_continued', '1997_2000', '2001_2003', '2004_2007', '2008_2009', '2010_2012', '2013_2015'] -%}
                {%- if loop.index0 == 0 -%}
                    <td><b>{{row[key]}}</b></td>
                {%- else -%}
                    <td>{{row[key]}}</td>
                {%- endif -%}
            {%- endfor -%}
        </tr>

    {%- set file = row['file'] -%}

    {%- if loop.last %}

    {# Always close the last table #}
    </tbody>
    </table>
    </div>
    {%- endif -%}
{%- endfor -%}


