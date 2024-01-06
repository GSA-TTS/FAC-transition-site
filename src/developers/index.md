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

Once you have your API key, you can begin exploring the API:
* [Get started from the command-line]({{ config.baseUrl }}developers/getting-started/).
* View the [data dictionary]({{ config.baseUrl }}developers/dictionary/) that maps the FAC API to historical Census data dissemination fields.
* Browse PostgREST's <a href="https://postgrest.org/en/stable/references/api/tables_views.html" target="_blank">query operations documentation</a>.

### Tutorials and examples

We will grow our body of examples over time, and welcome contributions from the community.

<table class="usa-table">
  <thead>
    <tr>
      <th scope="col">Tutorial</th>
      <th scope="col">Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row"><a href="tutorials/rollups/">Rollup fields</a></th>
      <td>
        A look at fields that existed in the Census data dissemination, and how to compute them from the FAC API.
      </td>
    </tr>
  </tbody>
</table>


## API limits and future updates

By default, each API key is limited to 1,000 requests per hour. This limit comes from Data.gov, and you can read more about it in the <a href="https://api.data.gov/docs/developer-manual/" target="_blank">api.data.gov developer manual</a>.

As the API evolves, we will publish API updates and communicate guidance according to our change management process. You can read more on the [API versioning page]({{ config.baseUrl }}developers/api-versioning/).

For more information on the FAC API and the information it provides, see our [terms and conditions]({{ config.baseUrl }}developers/terms/).

