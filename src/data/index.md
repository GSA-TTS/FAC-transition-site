---
layout: sidenav.njk
title: Using FAC data
meta:
  name: Historic data curation
  description: Documentation about the data migration from Census to GSA.
---

# About our data

The data collected by the FAC is **free to use and in the public domain**.

The Federal Audit Clearinghouse (The FAC) collects Single Audit report packages, as required by the [Single Audit Act](https://www.congress.gov/bill/98th-congress/senate-bill/1510). This act mandates an annual audit of all non-Federal entities that spend ${{glossary.variables.threshold_post}}) or more of Federal Financial Assistance (Federal grant dollars) in a fiscal year. A Single Audit report package comprises two parts: The audit report PDF and Form SF-SAC. The audit report PDF is prepared by an independent auditor, and it presents both an organization's financial statements and compliance with Federal award requirements. Form SF-SAC collects data about the awards made and, in some cases, audit findings.

## How do I access the data?

There are many audiences for the data provided by the FAC. If you're exploring the data for the first time, we recommend you start with our web search. If you're a programmer or data scientist looking to dive deep, we recommend our CSVs or the API.

### Access via the WWW

There are two search interfaces:

* [Basic search]({{glossary.sites.basic_search.url}}): Use this if you are just starting out. Look for your hometown, or a school you've attended.
* [Advanced search]({{glossary.sites.advanced_search.url}}): Use this if you are starting to dig deeper; perhaps look for your home state, and discover what entities had audit findings in your state. 

### Download the data

A CSV, or comma-separated-value file, can be explored using spreadsheets and code alike. If you are trying to analyze a lot of the data, you can use programming languages like SAS, SPSS, Python, and R to explore the files.

[Download all of our data as CSVs]({{'/data/download/' | htmlBaseUrl(baseUrl)}}). 

### Access via code (API)

API stands for **Application Programming Interface**. APIs make it easy for computer programs to request and receive information in a useable format. The FAC provides data that is easily computer-readable so that you can search and incorporate SF-SAC data directly into your own analyses.

[Get started]({{'/api/' | htmlBaseUrl(baseUrl)}}) with our API.
   
## How do we care for the data?

Caring for a data collection of this size requires ongoing effort. We, or our users, discover errors. When this happens, we follow a process to document, schedule, and repair those inconsistencies or errors in the data. Museums curate arts and antiquities; at the FAC, we curate the record of the Single Audit.

In (Federal) Fiscal Year 2024, we migrated data from 2016-2022 from Census to GSA. That migration both improved the quality of the data in the FAC and annotated anywhere parts of the record were missing.

You can read more about:

* [Reliability]({{'/data/reliability/' | htmlBaseUrl(baseUrl)}}): How we validate the data we collect
* [Curation]({{'/data/reliability/curation/' | htmlBaseUrl(baseUrl)}}): The curation process
* [Curation Log]({{'/data/reliability/curation-log/' | htmlBaseUrl(baseUrl)}}): The log of changes made
* [Concerns]({{'/data/reliability/concerns/' | htmlBaseUrl(baseUrl)}}): Known concerns and inconsistencies in the data
* [Migration]({{'/data/migration/' | htmlBaseUrl(baseUrl)}}): The migration of FAC data from Census to GSA

