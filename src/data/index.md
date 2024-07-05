---
layout: sidenav.njk
title: Using FAC data
meta:
  name: Historic data curation
  description: Documentation about the data migration from Census to GSA.
---

# About our data

The Federal Audit Clearinghouse (FAC) collects and shares data collected under the Single Audit Act. The Single Audit Act requires an annual audit of recipients of Federal Financial Assistance that expend ${{glossary.variables.threshold}} or more in a fiscal year. If you want to learn more, we recommend the [excellent overview of Single Audits]({{glossary.sites.hhs_oig_sa.url}}) developed by the Office of the Inspector General at Health and Human Services.

There are two pieces to a Single Audit submission to the FAC: the **form** and the **report**. We provide a way for you to [search the data on the WWW]({{glossary.sites.basic_search.url}}), and you can also [write code to download and analyze the data using our API]({{glossary.sites.api.url}}).

The data collected by the FAC is **free to use and in the public domain**.

## Who uses this data?

Many people use this data in many ways. For example: 

1. **Members of the public** explore how Federal dollars are spent locally and nationally
2. **Reporters** report on Federal spending to local, national, and global audiences
3. **Grants officers** review grantee performance as part of the allocation of funds
4. **Resolution officials** provide oversight of Federal spending from a programmatic and agency perspective
5. **Inspectors General** oversee the quality of Single Audits

## How do I access the data?


There are many audiences for the data provided by the FAC. If you're exploring the data for the first time, we recommend you start with our web search. If you're a programmer or data scientist looking to dive deep, we recommend our API. If you rely on this data, you will also want to look at how we care for, or **curate**, the data year-over-year.

### Access via the WWW

There are two search interfaces:

* [Basic search]({{glossary.sites.basic_search.url}}): Use this if you are just starting out. Look for your hometown, or a school you've attended.
* [Advanced search]({{glossary.sites.advanced_search.url}}): Use this if you are starting to dig deeper; perhaps look for your home state, and discover what entities had audit findings in your state. 

### Access via code (API)

API stands for **Application Programming Interface**. APIs make it easy for computer programs to request and receive information in a useable format. The FAC provides data that is easily computer-readable so that you can search and incorporate SF-SAC data directly into your own analyses.

[Get started]({{glossary.sites.api.url}}) with our API.
   
## How is the data curated?

Caring for a data collection of this size requires ongoing care. We, or our users, discover errors (and, sometimes, introduce them). When this happens, we follow a process to document, schedule, and repair those inconsistencies or errors in the data. Museums curate arts and antiquities; at the FAC, we curate the record of the Single Audit. 

In (Federal) Fiscal Year 2024, we migrated data from 2016-2022 from Census to GSA. This was a significant effort, and we users of our data read about that that transition to understand what it might mean for you.

You can read more about:

* [Validation](validations/): How we validate the data we collect
* [Migration](migration/): The migration of FAC data from Census to GSA
* [Concerns](concerns/): Known concerns and inconsistencies in the data
* [Curation](curation/): The curation process
* [Curation Log](curation-log/): The log of changes made

