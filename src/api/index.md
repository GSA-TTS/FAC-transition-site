---
layout: home.njk
title: FAC API resources
header: API resources
faqLink: https://support.fac.gov/hc/en-us
meta:
  name: FAC API resources
  description: Find resources for making the most of the FAC API to download single audit data.
eleventyComputed:
  eleventyNavigation:
    key: API resources
    parent: Home
---

The FAC API shares public data from submitted audit reports.

To interact with the API, you will need an API key from Data.gov. To get a Data.gov API key, [fill out the Data.gov API key signup form](https://api.data.gov/signup/). This is free and requires a valid email address. When you receive your API key, treat it like any other credential:

- Don't share your key with other users.
- Don't commit your key into a repository alongside your code.
- Don't store your key in a shared drive where other users have access.
- Don't share your key in helpdesk requests or any other communication.

Once you have your API key, you can begin exploring the API. Use the resources below to learn more about the API's capabilities.

For more information on the FAC API and the information it provides, see our [terms and conditions]({{ config.baseUrl }}api/terms/).

## API Guides, Tutorials, and Dictionaries
Here are some guides to help you use the FAC API:

- **[Getting started]({{ config.baseUrl }}api/getting-started/):** Begin using the FAC API and test your endpoints.
- **[Examples]({{ config.baseUrl }}api/examples/):** Example API queries using cURL, PowerShell, and Python.
- **[PostgREST server tools](https://postgrest.org/en/v12/):** The FAC uses PostgREST for our API server. Use their documentation for more help.
- **[Data dictionary]({{ config.baseUrl }}api/dictionary/):** Get details about the API data fields and a map of how the FAC API data compares to the historical Census data.
- **[Rollup fields]({{ config.baseUrl }}api/rollup/):** The FAC API combines some data fields that were standalone with the Census Bureau. This guide outlines these fields and shows how to use the FAC API to get the same data.
- **[Data differences]({{ config.baseUrl }}api/differences/):** Data submitted to the old Census FAC had different field names compared to the GSA FAC. This list outlines the differences between the historical data and new FAC data.
- **[Results management]({{ config.baseUrl }}api/results-management/):** Tips for working within the API's request limit to retrieve more than 20,000 results at a time.
- **[API versioning]({{ config.baseUrl }}api/versioning/):** Read our change management policy for updating the API.
- **[Terms & conditions]({{ config.baseUrl }}api/terms/):** Read the terms and conditions of using the FAC API.
- **[Tribal data access]({{ config.baseUrl }}api/tribal/):** Use the API to access data and Single Audit Reports that Tribes and Tribal Organizations have chosen to suppress.
- **[Questions](https://support.fac.gov/hc/en-us):** Visit our FAQ page.
