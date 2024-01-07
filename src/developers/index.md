---
layout: home.njk
title: FAC API documentation
meta:
  name: FAC API documentation
  description: Find developer resources for using the FAC API, including how to obtain a key and terms and conditions.
---

# The FAC API

The FAC API shares public data from submitted audit reports. The FAC API runs on <a href="https://postgrest.org" target="_blank">PostgREST</a> and supports its built-in query operations.

## Migrating from Census-provided data

The FAC API endpoints mimic the pipe-delimited CSV files historically provided by Census. This means we export a similar set of tables (e.g. `general` as opposed to `gen`) with similar column titles. There are, however, some differences between GSA-provided and Census-provided data. We will provide more detailed migration guidance in the coming months.

## Interacting with the API

To interact with the FAC API, you will need an API key from <a href="https://data.gov/" target="_blank">Data.gov</a>. To get a Data.gov API key, fill out <a href="https://api.data.gov/signup/" target="_blank">the Data.gov API key signup form</a>. This is free and requires a valid email address. When you receive your API key, treat it like any other credential:
- Do not share your key with other users.
- Do not commit your key into a repository alongside your code.
- Do not store your key in a shared drive where other users have access.
- Do not share your key in helpdesk requests or any other communication.

Once you have your API key, you can begin exploring the API. We welcome contributions from the community.

## Resources

<table class="usa-table">
  <thead>
    <tr>
      <th scope="col">Link</th>
      <th scope="col">Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">
        <a href="getting-started/">Getting started</a>
      </th>
      <td>
        Get started from the command-line.
      </td>
    </tr>
    <tr>
      <th scope="row">
        <a href="[getting-started/](https://postgrest.org/en/stable/references/api/tables_views.html)">Postgrest</a>
      </th>
      <td>
        We use Postgrest as our API server. That means that you will use their documentation to guide you in formulating queries and interacting with our API server.
      </td>
    </tr>
    <tr>
      <th scope="row">
        <a href="dictionary/">Data dictionary</a>
      </th>
      <td>
        A mapping from the Census FAC to the GSA FAC API.
      </td>
    </tr>
    <tr>
      <th scope="row">
        <a href="rollups/">Rollup fields</a>
      </th>
      <td>
        A look at fields that existed in the Census data dissemination, and how to compute them from the FAC API.
      </td>
    </tr>
    <tr>
      <th scope="row">
        <a href="differences/">Differences</a>
      </th>
      <td>
        A list of fields you might be looking for, and where you might find them in the GSA FAC API.
      </td>
    </tr>
  </tbody>
</table>


## API limits and future updates

By default, each API key is limited to 1,000 requests per hour. This limit comes from Data.gov, and you can read more about it in the <a href="https://api.data.gov/docs/developer-manual/" target="_blank">api.data.gov developer manual</a>.

As the API evolves, we will publish API updates and communicate guidance according to our change management process. You can read more on the [API versioning page]({{ config.baseUrl }}developers/api-versioning/).

For more information on the FAC API and the information it provides, see our [terms and conditions]({{ config.baseUrl }}developers/terms/).

