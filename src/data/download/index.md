---
layout: home.njk
title: Download FAC Data
header: Download FAC Data
in_page_nav: true
meta:
  name: Download FAC data
  description: Get access to current, historic, and migrated audit data from the Federal Audit Clearinghouse.
eleventyComputed:
  eleventyNavigation:
    key: Download
    parent: Data
---

# {{ title }}

You can download audit data from the Federal Audit Clearinghouse (FAC) in bulk as CSV files. These files are organized into three categories:

- **Current Data (2016–Present)**  
- **Historic Data (1998–2015)**  
- **Migration Metadata (2016–2022)**

Use the links below to explore, download, and work with these datasets. Each page includes information about the files, how to open them, and where to find the data dictionary.

---

## Current Data: 2016–Present

This is the most recent audit data submitted to the FAC. It includes all fields available via our [web search](https://app.fac.gov/dissemination/search/) and [API]({{'/api/' | htmlBaseUrl(baseUrl)}}).

- [Download current data files]({{'/data/download/current/' | htmlBaseUrl(baseUrl)}})  
- [View the current data dictionary]({{'/data/download/current/#data-dictionary' | htmlBaseUrl(baseUrl)}})

---

## Historic Data: 1998–2015

Audit data from 1998 to 2015 was collected under the Census FAC. It is available for download as-is and is not searchable through our site or API.

- [Download historic data files]({{'/data/download/historic/' | htmlBaseUrl(baseUrl)}})  
- [View the historic data dictionary]({{'/data/download/historic/#data-dictionary' | htmlBaseUrl(baseUrl)}})

---

## Migration Metadata: 2016–2022

These files track how data was migrated from Census to GSA, including corrections and transformations made along the way. Oversight professionals may find this useful.

- [Download migration metadata]({{'/data/download/migration/' | htmlBaseUrl(baseUrl)}})  
- [Learn how to interpret migration records]({{'/data/download/migration/#how-to-work-with-this-data' | htmlBaseUrl(baseUrl)}})



