---
layout: sidenav.njk
title: Using FAC data
meta:
  name: Historic data curation
  description: Documentation about the data migration from Census to GSA.
---

# About our data

The data collected by the FAC is **free to use and in the public domain**.

<!-- 
The Federal Audit Clearinghouse (FAC) collects and shares data collected under the [Single Audit Act](https://www.congress.gov/bill/98th-congress/senate-bill/1510). The Single Audit Act requires an annual audit of recipients of Federal Financial Assistance that expend more than ${{glossary.variables.threshold_pre}} (before Oct 2024) and ${{glossary.variables.threshold_post}} (after that date) in a fiscal year. If you want to learn more, we recommend the [excellent overview of Single Audits]({{glossary.sites.hhs_oig_sa.url}}) developed by the Office of the Inspector General at Health and Human Services.
-->

The Federal Audit Clearinghouse (The FAC) collects Single Audit report packages, as required by the [Single Audit Act](https://www.congress.gov/bill/98th-congress/senate-bill/1510). This act mandates an annual audit of all non-Federal entities that spend ${{glossary.variables.threshold_post}} or more of Federal Financial Assistance (Federal grant dollars) in a fiscal year. A Single Audit report package comprises two parts: The audit report PDF and Form SF-SAC. The audit report PDF is prepared by an independent auditor, and it presents both an organization's financial statements and compliance with Federal award requirements. Form SF-SAC collects data about the awards made and, in some cases, audit findings.

We provide a way for you to [search the form data on the WWW]({{glossary.sites.basic_search.url}}), and you can also [write code to download and analyze the data using our API]({{glossary.sites.api.url}}).

## Where does our data come from?

Single Audit report packages must be uploaded to fac.gov by the recipient of the Federal grant funding (the entity), and are independently certified as accurate by both the entity and conducting auditor before being published to our searchable database. These parties are required to use a Login.gov account in order to upload reporting packages. Login.gov is free to use, and has the [highest standards of security](https://login.gov/policy/) to keep our information safe.


## Who uses this data?

Many people use this data in many ways. For example: 

1. **Members of the public** explore how Federal dollars are spent locally and nationally
2. **Reporters** report on Federal spending to local, national, and global audiences
3. **Grants officers** review grantee performance as part of the allocation of funds
4. **Resolution officials** provide oversight of Federal spending from a programmatic and agency perspective
5. **Inspectors General** oversee the quality of Single Audits

## How do I access the data?


If you're exploring the data for the first time, you should start with the web search. If you're a programmer or data scientist looking to dive deep, we recommend our API or CSV exports.

### Web-based search

There are two search interfaces:

* [Basic search]({{glossary.sites.basic_search.url}}): Use this if you are just starting out. Look for your hometown, or a school you've attended.
* [Advanced search]({{glossary.sites.advanced_search.url}}): Use this if you are starting to dig deeper; perhaps look for your home state, and discover what entities had audit findings in your state. 

### Access via code (API)

API stands for **Application Programming Interface**. APIs make it easy for computer programs to request and receive information in a useable format. The FAC provides data that is computer-readable so that you can search and incorporate SF-SAC data directly into your own analyses.

[Get started]({{ '/api' | htmlBaseUrl(baseUrl) }}) with our API.
   
### Download the data

You can also [download all of our data as CSVs]({{ '/data/download/' | htmlBaseUrl(baseUrl) }}). A CSV, or comma-separated-value file can be explored using spreadsheets like Excel and LibreOffice. If you are trying to analyze a lot of the data, you can use programming languages like SAS, SPSS, Python, and R to explore the files.

## How do we care for the data?

Caring for a data collection of this size requires ongoing effort. We, or our users, discover errors. When this happens, we follow a process to document, schedule, and repair those inconsistencies or errors in the data. Museums curate arts and antiquities; at the FAC, we curate the record of the Single Audit. 

In (Federal) Fiscal Year 2024, we migrated data from 2016-2022 from Census to GSA. That migration both improved the quality of the data in the FAC and annotated anywhere parts of the record were missing.

You can read more about:

* [Reliability](/data/reliability): How we ensure the reliability of our data
* [Migration](/data/migration/): The migration of FAC data from Census to GSA
* [Concerns](/data/concerns/): Known concerns and inconsistencies in the data
* [Curation](/data/reliability/curation/): The curation process
* [Curation Log](/data/curation-log/): The log of changes made

