---
layout: home.njk
title: FAC API resources
header: API resources
meta:
  name: FAC API resources
  description: Find resources for making the most of the FAC API to download single audit data.
eleventyComputed:
  eleventyNavigation:
    key: API resources
    parent: Home
in_page_nav: true
---

# {{ title }}

The FAC API provides access to public data from submitted audit reports.

To use the API, you will need an API key from Data.gov. Getting a key is free and only requires a valid email address.  

To request your API key, visit the [FAC API signup page]({{ config.baseUrl }}api/signup/).

Once you have a key, you can start making requests to FAC endpoints using tools like `curl`, Python, or PowerShell.

For legal and usage guidance, review the [terms and conditions]({{ config.baseUrl }}api/terms/).

---

## API guides and tools

These pages will help you get started and make the most of the FAC API:

- **[Getting Started]({{ config.baseUrl }}api/getting-started/):** Setup basics and environment examples
- **[Examples]({{ config.baseUrl }}api/examples/):** Sample queries using curl, Python, PowerShell
- **[API Dictionary]({{ config.baseUrl }}api/dictionary/):** Full list of fields and filters
- **[Rollup Fields]({{ config.baseUrl }}api/rollup/):** How we combined certain historical fields
- **[Data Differences]({{ config.baseUrl }}api/differences/):** Changes between GSA and Census FAC field names
- **[Results Management]({{ config.baseUrl }}api/results-management/):** Pagination, ordering, and record counts
- **[PostgREST Documentation](https://postgrest.org/en/v12/):** Underlying technology used by the FAC API
