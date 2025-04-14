---
layout: sidenav.njk
title: Data from 2016–Present
meta:
  name: Data from 2016–Present
  description: Documentation about the data migration from Census to GSA.
tables:
  - name: general
    abbrev: g
    desc: Metadata about the submission
  - name: federal_awards
    abbrev: fa
    desc: Financial award data associated with submissions
  - name: notes_to_sefa
    abbrev: nts
    desc: Metadata about the SEFA
  - name: findings
    abbrev: f
    desc: Findings associated with the audit
  - name: findings_text
    abbrev: ft
    desc: Text of the findings
  - name: corrective_action_plans
    abbrev: cap
    desc: Text of corrective action plans associated with findings
  - name: passthrough
    abbrev: p
    desc: Awards passed through to subentities
  - name: secondary_auditors
    abbrev: sa
    desc: Additional auditors on the report
  - name: additional_ueis
    abbrev: au
    desc: UEIs of entities included in the report
  - name: additional_eins
    abbrev: ae
    desc: EINs of entities included in the report
---

<script>
function setAttrs(e, attr_dict) {
  for (const [key, value] of Object.entries(attr_dict)) {
    e.setAttribute(key, value);
  }
}

function tableCreate(root, caption_text, tag, baseUrl) {
  var tbl = document.createElement('table');
  setAttrs(tbl, {"role": "table", "class": "usa-table"});

var caption = document.createElement("caption");
  var txt = document.createTextNode(caption_text);
  caption.appendChild(txt);
  tbl.appendChild(caption);

  var currentTime = new Date()
  var current_year = new Date().getFullYear();
  var month = currentTime.getMonth() + 1;
  
  // The FFY table wants to go out to +1 year if it is 
  // October or greater in the current year.
  if (tag == "ffy" && month >= 10) {
    current_year += 1;
  } 

  // Header row
  var thead = document.createElement("thead");
  setAttrs(thead, {"role": "rowgroup"});

  tr = document.createElement("tr");
  
  th = document.createElement("th");
  th.appendChild(document.createTextNode("Table")); 
  setAttrs(th, {"scope": "col"});
  
  tr.appendChild(th);
  for (let year = 2016; year <= current_year; year++) {
    th = document.createElement("th");
    setAttrs(th, {"scope": "col"});
    th.appendChild(document.createTextNode(year)); 
    tr.appendChild(th);
  }
  thead.appendChild(tr);
  tbl.appendChild(thead);
    
  {% for table in tables %}
    tr = document.createElement("tr");
    td = tr.insertCell().appendChild(document.createTextNode(`{{table['name']}}`));

    for (let year = 2016; year <= current_year; year++) {
      td = tr.insertCell();
      setAttrs(td, {"role": "cell"});
      a = document.createElement("a");
      setAttrs(a, {"href": `${baseUrl}/{{table['abbrev']}}-${tag}-${year}.csv`});
      a.appendChild(document.createTextNode(`{{table['abbrev']}}-${tag}-${year}`));
      td.appendChild(a);
    }
    tbl.appendChild(tr);
  {% endfor %}

  root.appendChild(tbl);
}
</script>

# Data from 2016–Present

These files will be of most interest to users exploring audits of Federal grants made in the past several years. This is the same as the data currently [available in our search](https://app.fac.gov/dissemination/search/).

We've split the data in three different ways for different use cases.

## Full data files

The full data files are complete exports of data from the FAC. These files are too large to load into Excel and will require programs like Python notebooks, SAS, SPSS, and other code-oriented tools to manage.

<div class="usa-table-container" tabindex="0">
<table role="table" class="usa-table">
    <caption>
    Full CSV files for download  
    </caption>
    <thead role="rowgroup">
    <tr>
        <th scope="col">Table</th>
        <th scope="col">Link</th>
        <th scope="col">Description</th>
    </tr>
    </thead>
    <tbody role="rowgroup">
{%- for table in tables -%}
  <tr role="row">
    <td role="cell">{{table['name']}}</td>
    <td role="cell"><a href="">CSV</a>
    <td role="cell">{{table['desc']}}</td>
  </tr>
{%- endfor -%}
    </tbody>
  </table>
</div>

## Data by audit year

These files are the same data divided by the submission audit year. For example, the file `general-ay-2016.csv` contains all the general information from audit submissions for the audit year 2016.

If you are using Excel or similar tools to explore this data, we recommend the files split by year.

<div class="usa-table-container" tabindex="0">
  <div id="ay-table"></div>
  <script>tableCreate(document.getElementById("ay-table"), "CSVs by audit year", "ay", "http://localhost:8080/blah")</script>
</div>

## Data by federal fiscal year

These files are split based on the federal fiscal year in which the auditee submitted their audit.

This means that the file named `general-ffy-2106.csv` is the record of audits collected from October 1st, 2015, through September 30, 2016\. 

<div class="usa-table-container" tabindex="0">
  <div id="fy-table"></div>
  <script>tableCreate(document.getElementById("fy-table"), "CSVs by federal fiscal year", "ffy", "http://localhost:8080/blah")</script>
</div>


## How to work with this data

We describe both the data itself, and how to get you started exploring and doing work with this data. 

### Data dictionary

This data is provided as CSV (comma-separated value) files. CSV files are, in many ways, like spreadsheets; you can use Excel, Google Docs, or an open source alternative (like LibreOffice) to open these files. 

Each file has a header row, and then the rest of the file is data. 

* [Data dictionary for current data]({{'/data/download/current-dictionary/' | htmlBaseUrl(baseUrl)}})

### Using the data in a spreadsheet

The files are organized according to the data tables exported by the FAC. Our data export files have the same “shape” as our API. Our [data dictionary]({{'/data/download/current-dictionary/' | htmlBaseUrl(baseUrl)}}) describes the columns, data types, and values contained within each of these files.

This means that the file `general-ay-2016.csv` is data from audit year 2016, it contains the same data that could be found via the [API for the general table](https://www.fac.gov/api/dictionary/#endpoint-general), and it therefore contains all of the [columns described online](https://www.fac.gov/api/dictionary/) and in our dictionary.

By the same logic, the file `federal_awards-fy-2018.csv` contains data from the federal fiscal year 2018 (Oct 1, 2017 through Sept 30, 2018). The columns in the file are the same as the fields presented in the [federal\_awards table in the API](https://www.fac.gov/api/dictionary/#endpoint-federal_awards).

For example, you could:

1. download the file `general-ay-2016.csv`,   
2. open the file in a spreadsheet, and  
3. sum the column `total_amount_expended`. 

This will tell you what the total (audited) federal expenditures were in 2016\. 

### Using the data files in code

The CSV files should import cleanly using tooling like SAS, SPSS, or any number of other programming languages (PowerBI, Python, etc.).

If you work with code, you might write something like the following to get the same total expenditures as above.

```py
import pandas as pd
file_path = "general-ay-2016.csv"
chunk_size = 10_000
total_expenditures = 0
for chunk in pd.read_csv(file_path, chunksize=chunk_size):
    total_expend_series = chunk.loc[:, "total_amount_expended"]
    total_expend_numeric = pd.to_numeric(total_expend_series, errors="coerce")
    total_expenditures += total_expend_numeric.sum()
print(f"There were ${total_expenditures} audited")
```

