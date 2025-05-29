---
# Metadata
layout: home.njk
title: Data from 2016–Present
meta:
  name: Data from 2016–Present
  description: Download audit data collected by the GSA FAC and explore available data tables.
# Layout
eleventyComputed:
  eleventyNavigation:
    key: Current
    parent: Download
in_page_nav: true
---

# {{ title }}

This is the complete dataset collected by the GSA Federal Audit Clearinghouse (FAC) since 2016. It reflects all audits submitted since we transitioned from Census and includes the same information available via our [web search](https://app.fac.gov/dissemination/search/) and [API]({{'/api/' | htmlBaseUrl(baseUrl)}}).

You can download this data:
- As complete files
- By audit year
- By federal fiscal year

---

## File Options

### Full Datasets (All Years Combined)

These files are large and best suited for use with tools like Python, R, SAS, or SPSS—not Excel.

<div class="usa-table-container" tabindex="0">
<table role="table" class="usa-table">
  <caption>Complete Dataset by Table</caption>
  <thead role="rowgroup">
    <tr>
      <th scope="col">Table</th>
      <th scope="col">CSV</th>
      <th scope="col">Description</th>
    </tr>
  </thead>
  <tbody role="rowgroup">
    {% for table in tables %}
    <tr>
      <td>{{ table.name }}</td>
      <td><a href="{{global.csv_base}}/gsa/full/{{table.name}}.csv">Download</a></td>
      <td>{{ table.desc }}</td>
    </tr>
    {% endfor %}
  </tbody>
</table>
</div>

---

### By Audit Year

Ideal for spreadsheet users and smaller-scale analysis.

<div class="usa-table-container" tabindex="0">
  <div id="ay-table"></div>
  <script>tableCreate(document.getElementById("ay-table"), "Download by Audit Year", "ay", "{{global.csv_base}}/gsa/audit-year")</script>
</div>

---

### By Federal Fiscal Year

Groups audits by the year they were received (Oct 1–Sept 30 fiscal calendar).

<div class="usa-table-container" tabindex="0">
  <div id="ffy-table"></div>
  <script>tableCreate(document.getElementById("ffy-table"), "Download by Federal Fiscal Year", "ffy", "{{global.csv_base}}/gsa/federal-fiscal-year")</script>
</div>

---

## Data Dictionary

Need help understanding the columns and data types in each file?

- [View the data dictionary]({{'/data/download/current-dictionary/' | htmlBaseUrl(baseUrl)}})

Each table's entry describes:
- Field name
- Data type
- Description
- Notes or constraints

---

## Working With the Data

### In a Spreadsheet

You can open smaller CSV files using Excel, Google Sheets, or LibreOffice. Use the audit-year or fiscal-year versions if you're working without code.

Example: To calculate total expenditures for 2016:
1. Download `general-ay-2016.csv`  
2. Open in a spreadsheet  
3. Sum the `total_amount_expended` column

### In Code

Use pandas or similar tools to load and work with large datasets.

```python
import pandas as pd

total = 0
for chunk in pd.read_csv("general-ay-2016.csv", chunksize=10000):
    amounts = pd.to_numeric(chunk["total_amount_expended"], errors="coerce")
    total += amounts.sum()

print(f"Total audited in 2016: ${total:,.2f}")



