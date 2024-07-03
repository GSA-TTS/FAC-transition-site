---
layout: sidenav.njk
title: Using FAC data
meta:
  name: Historic data curation
  description: Documentation about the data migration from Census to GSA.
toc:
  - Who uses this data?
  - How do I access the data?
  - How is the data curated?
---

# About our data

The Federal Audit Clearinghouse (FAC) collects and shares data collected under the Single Audit Act. The Single Audit Act requires an annual audit of recipients of Federal Financial Assistance that expend $750,000 <!-- FIXME make this a variable --> or more in a fiscal year. If you want to learn more, we recommend the [excellent overview of Single Audits](https://oig.hhs.gov/reports-and-publications/featured-topics/ihs/training/understanding-single-audits/content/#/) developed by the Office of the Inspector General at Health and Human Services.

There are two pieces to a Single Audit submission to the FAC: the **form** and the **report**. We provide a way for you to [search the data on the WWW](FIXME), and you can also [write code to download and analyze the data using our API](FIXME).

The data collected by the FAC is **free to use and in the public domain**.

<b>Contents</b>

<ul>
{% for heading in toc %}
  <li><a href="#{{heading}}">{{heading}}</a></li>
{% endfor %}
</ul>


<a name="{{toc[0]}}"></a>

## {{toc[0]}}

Many people use this data in many ways. For example: 

1. **Members of the public** explore how Federal dollars are spent locally and nationally
2. **Reporters** report on Federal spending to local, national, and global audiences
3. **Grants officers** review grantee performance as part of the allocation of funds
4. **Resolution officials** provide oversight of Federal spending from a programmatic and agency perspective
5. **Inspectors General** oversee the quality of Single Audits

<a name="{{toc[1]}}"></a>

## {{toc[1]}}


There are many audiences for the data provided by the FAC. If you're exploring the data for the first time, we recommend you start with our web search. If you're a programmer or data scientist looking to dive deep, we recommend our API. If you rely on this data, you will also want to look at how we care for, or **curate**, the data year-over-year.

### Web-based search

There are two search interfaces:

* [Basic search](https://app.fac.gov/dissemination/search/): Use this if you are just starting out. Look for your hometown, or a school you've attended.
* [Advanced search](https://app.fac.gov/dissemination/search/advanced/): Use this if you are starting to dig deeper; perhaps look for your home state, and discover what entities had audit findings in your state. 

### Access via code (API)

API stands for **Application Programming Interface**. APIs make it easy for computer programs to request and receive information in a useable format. The FAC provides data that is easily computer-readable so that you can search and incorporate SF-SAC data directly into your own analyses.

* Get started with the API
* Overview of fields in the API
* Examples
* ...
   
<a name="{{toc[2]}}"></a>

## {{toc[2]}}

Caring for a data collection of this size requires ongoing care. We, or our users, discover errors (and, sometimes, introduce them). When this happens, we follow a process to document, schedule, and repair those inconsistencies or errors in the data. Museums curate arts and antiquities; at the FAC, we curate the record of the Single Audit. 

In (Federal) Fiscal Year 2024, we migrated data from 2016-2022 from Census to GSA. This was a significant effort, and we recommend OIGs, agencies, and researchers read about that that transition to understand what we did and what it might mean for you.

You can read more about:

* The migration of FAC data from Census to GSA
* The curation process
* Known errors and inconsistencies in the data
* The log of changes made

