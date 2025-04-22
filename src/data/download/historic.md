---
layout: sidenav.njk
title: Data from 1998-2015
meta:
  name: Data from 1998-2015
  description: Historic Census data from the SF-SAC.
tables:
sizes: [15,16,16,20,22,23,22,23,24,24,24,27,32,32,30,30,28,29]
---

# Data from 1998-2015

This page collects the data collected between 1998 and 2015 for download and use on your computer. It is not available in our web-based search or API, and is provided here as part of the historical record.

{#
FIXME: Mini TOC here
#}

## Full data from 1998-2015

This is a single zip file containing all the Census data from 1998–2015. When decompressed, there is a separate folder for each year.

* [census-1998-2015.zip]({{global.csv_base}}/census/csv/census-1998-2015.zip)  (413MB, [SHA1]({{global.csv_base}}/census/csv/census-1998-2015.sha1))

## By audit year

This is the same data as above, broken out by audit year. 

<ul>
{%- for year in range(1998, 2016) -%}
  <li><a href="{{global.csv_base}}/census/csv/census-{{year}}.zip">census-{{year}}.zip</a> ({{sizes[loop.index-1]}}MB, <a href="{{global.csv_base}}/census/csv/census-{{year}}.sha1">SHA1</a>)</li>
{%- endfor -%}
</ul>


## How to work with this data

We describe both the data itself, and how to get you started exploring and doing work with this data. 

### Data dictionary

This data is provided as CSV (comma-separated value) files. CSV files are, in many ways, like spreadsheets; you can use Excel, Google Docs, or an open source alternative (like LibreOffice) to open these files. 

Each file has a header row, and then the rest of the file is data. 

* [Data dictionary for historic data]({{'/data/download/historic-dictionary/' | htmlBaseUrl(baseUrl)}})

### Using the data files in a spreadsheet

The 7 files beginning with the characters `ELEC` contain the data. 

* `ELECAUDITHEADER` contains information similar to the `general` table in the GSA FAC
* `ELECAUDITS` contains information similar to the `federal_awards` table
* `ELECAUDITFINDINGS` is similar to the `findings` table
* `ELECPASSTHROUGH` is similar to the `passthrough` table
* `ELECCPAS`, `ELECEINS`, and `ELECUEIS` are similar to the tables `secondary_auditors`, `additional_eins`, and `additional_ueis`  

For example, you could:

* unzip the file `census-1998.zip`, 
* open the file `ELECAUDITS.csv`, and 
* sum the column `AMOUNT`. 

This will tell you what the total (audited) federal expenditures were in 1998. 

### Using the data files in code

The CSV files should import cleanly using tooling like SAS, SPSS, or any number of other programming languages (PowerBI, Python, etc.).
If you work with code, you might write something like the following to get the same total expenditures as above.

```python
import pandas as pd
file_path = "ELECAUDITS.csv"
chunk_size = 10_000
total_expenditures = 0
for chunk in pd.read_csv(file_path, chunksize=chunk_size):
    total_expend_series = chunk.loc[:, "AMOUNT"]
    total_expend_numeric = pd.to_numeric(total_expend_series, errors="coerce")
    total_expenditures += total_expend_numeric.sum()
print(f"There were ${total_expenditures} audited")
```

to achieve the same result. We calculated $485,687,753,099 audited in 1998. 

### Cleaning up the data

Note that these datafiles may need cleaning and manipulation before you can use them. For example, the `TOTFEDEXPEND` column in `ELECAUDITHEADER` contains both numbers and text. This is how the data was collected, and we present it here as-is. 