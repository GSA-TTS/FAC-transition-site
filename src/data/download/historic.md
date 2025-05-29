---
# Metadata
layout: home.njk
title: Data from 1998–2015
meta:
  name: Data from 1998–2015
  description: Download historic audit data collected by the Census Federal Audit Clearinghouse.
# Layout
eleventyComputed:
  eleventyNavigation:
    key: Historic data
    parent: Download
in_page_nav: true
---

# {{ title }}

This dataset includes Single Audit submissions collected by the Census FAC from 1998 to 2015. It is provided as-is for historical research and is not included in our [search]({{'/data/search/' | htmlBaseUrl(baseUrl)}}) or [API]({{'/api/' | htmlBaseUrl(baseUrl)}}).

---

## Download the Data

### All Years (1998–2015)

This single ZIP file contains folders for each year:

- [Download full 1998–2015 dataset (413 MB)]({{global.csv_base}}/census/csv/census-1998-2015.zip)  
- [SHA1 hash]({{global.csv_base}}/census/csv/census-1998-2015.sha1)

### By Audit Year

You can also download the files year-by-year below:

<ul>
  {%- for year in range(1998, 2016) -%}
    <li>
      <a href="{{global.csv_base}}/census/csv/census-{{year}}.zip">census-{{year}}.zip</a>
      ({{sizes[loop.index-1]}} MB,
      <a href="{{global.csv_base}}/census/csv/census-{{year}}.sha1">SHA1</a>)
    </li>
  {%- endfor -%}
</ul>

---

## Data Dictionary

The data comes in CSV format with one file per table (e.g., audits, findings, passthrough). Column names and values vary across years, so we’ve provided a reference guide:

- [View the historic data dictionary]({{'/data/download/historic-dictionary/' | htmlBaseUrl(baseUrl)}})

---

## Tips for Using This Data

### Opening CSV Files

CSV files can be opened in Excel, Google Sheets, LibreOffice, or imported into data tools like SAS, SPSS, Python, or R. Each file includes a header row followed by data.

Key tables:
- `ELECAUDITHEADER` ? metadata (like our `general` table)
- `ELECAUDITS` ? financial awards
- `ELECAUDITFINDINGS` ? audit findings
- `ELECPASSTHROUGH` ? passthrough awards
- `ELECCPAS`, `ELECEINS`, `ELECUEIS` ? supplemental identifiers

### Spreadsheet Example

To calculate total expenditures for 1998:

1. Unzip `census-1998.zip`
2. Open `ELECAUDITS.csv`
3. Sum the `AMOUNT` column

### Python Example

```python
import pandas as pd

total = 0
for chunk in pd.read_csv("ELECAUDITS.csv", chunksize=10000):
    amounts = pd.to_numeric(chunk["AMOUNT"], errors="coerce")
    total += amounts.sum()

print(f"Total audited in 1998: ${total:,.2f}")



