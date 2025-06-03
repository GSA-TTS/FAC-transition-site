---
# Metadata
layout: home.njk
title: Using FAC Data
meta:
  name: Historic data curation
  description: How to search, download, and understand data from the Federal Audit Clearinghouse.
# Layout
eleventyComputed:
  eleventyNavigation:
    key: Data
    parent: Home
in_page_nav: true
---

# About Our Data

The data collected by the Federal Audit Clearinghouse (FAC) is **free to use and in the public domain**.

We collect Single Audit report packages from entities that spend ${{glossary.variables.threshold_post}} or more in Federal financial assistance during a fiscal year. These packages are required under the [Single Audit Act](https://www.congress.gov/bill/98th-congress/senate-bill/1510).

Each submission includes:

- A PDF audit report prepared by an independent auditor
- Form SF-SAC, which includes details about federal awards received and any audit findings

---

## How to Access the Data

We offer several ways to explore the data depending on your goals and experience level:

### Web Search

Use our web interface if you're just getting started:

- [Basic Search]({{glossary.sites.basic_search.url}}): Use this if you are just starting out. Look for your hometown, or a school you've attended.

- [Advanced Search]({{glossary.sites.advanced_search.url}}): Use this if you are starting to dig deeper; perhaps look for your home state, and discover what entities had audit findings in your state.


### Download the Data as CSV Files

Our full datasets are available as downloadable CSV files. These can be opened in spreadsheet software or analyzed using tools like Python, R, SAS, or SPSS.

- [Download all data as CSVs]({{'/data/download/' | htmlBaseUrl(baseUrl)}})

### Use the API

If you're building software or performing advanced analysis, the FAC offers an open API to programmatically access the data.

- [Get started with the API]({{'/api/' | htmlBaseUrl(baseUrl)}})

---

## How We Maintain the Data

We don’t just collect data—we take care of it.

When errors or inconsistencies are found (by us or our users), we document them and take steps to correct or explain them.

In 2024, we migrated historical records from Census to GSA, improving overall quality and documenting any known gaps in the data.

Learn more about how we manage data quality:

- [Reliability]({{'/data/reliability/' | htmlBaseUrl(baseUrl)}}): How we validate what we collect
- [Curation Process]({{'/data/reliability/curation/' | htmlBaseUrl(baseUrl)}}): How we correct and improve data
- [Curation Log]({{'/data/reliability/curation-log/' | htmlBaseUrl(baseUrl)}}): What changes we've made
- [Data Concerns]({{'/data/reliability/concerns/' | htmlBaseUrl(baseUrl)}}): Known issues and inconsistencies
- [Data Migration]({{'/data/migration/' | htmlBaseUrl(baseUrl)}}): Our transition from Census to GSA
