---
layout: home.njk
title: FAC API documentation
meta:
  name: FAC API documentation
  description: Find developer resources for using the FAC API, including how to obtain a key and terms and conditions.
---

# The FAC API

The FAC API disseminates the content of single audit reports submitted to the FAC. Currently, the FAC only holds public data. We will provide further guidance to partners using the API as this changes. 

The FAC API endpoints mimic the pipe-delimited CSV files historically provided by Census. This means we export a similar set of tables (e.g. `general` as opposed to `gen`) with similar columns titles.

The API uses [PostgREST](https://postgrest.org), meaning it supports all [query operations](https://postgrest.org/en/stable/references/api/tables_views.html) provided by PostgREST. If you are authoring a client to talk to the FAC API, you should become familiar with the PostgREST documentation.

## Getting started

Because the FAC API is proxied by [api.data.gov](https://api.data.gov/), you will need to get an API key from [from api.data.gov](https://api.data.gov/signup/) to access the FAC API. This is free and requires a valid email address; we recommend using a `.gov` address or other government address. Treat your API key like any other credential:
- Do not share your key with other users
- Do not commit your key into a repository alongside your code
- Do not store your key in a shared drive where other users have access
- Do not share your key in helpdesk requests or any other communication

Once you have your API key, you can [begin exploring the API from the command-line]({{ config.baseUrl }}docs/getting-started/).

We have provided [documentation for the endpoints and the fields those endpoints contain]({{ config.baseUrl }}developers/v1_0_0_beta/) to help you write your own access code.

## How we work

We will be changing the API over time, and have a [documented change management process]({{ config.baseUrl }}developers/api-versioning/) for those future API improvements.

For more information on the FAC API and the information it provides, see our [terms and conditions]({{ config.baseUrl }}developers/terms/).

