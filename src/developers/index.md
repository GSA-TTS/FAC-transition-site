---
layout: home.njk
title: FAC developer documentation
---

# {{title}}

The Federal Audit Clearinghouse (FAC) is a repository of complex data regarding the audits of Federal grant dollars. 

## FAC API

The FAC API publicly disseminates the content of the SF-SAC and audit reports associated with those submissions.

### About the API

The FAC API endpoints are modeled on the pipe-delimited CSV files previously provided by Census. This means we export a similar set of tables (e.g. `general` as opposed to `gen`) with similar columns. Those endpoints (and the fields you can query against) are described below.

The API is provided by [PostgREST](https://postgrest.org). All [query operations](https://postgrest.org/en/stable/references/api/tables_views.html) provided by PostgREST are supported. If you are authoring a client to talk to the FAC API, you should become familiar with the PostgREST documentation.

### Resources

To use the API, you will first [need to obtain an API key]({{ config.baseUrl }}docs/getting-an-api-key/). This is free, and only requires a valid email address. 

With an API key in hand, you can [begin exploring the API from the command-line]({{ config.baseUrl }}docs/getting-started/), to make sure things work.

As you write code to access the API, you will want to review the [documentation for the endpoints and the fields those endpoints contain]({{ config.baseUrl }}docs/v1_0_0_beta/).

We will be changing the API over time, and have [a documented change management process]({{ config.baseUrl }}docs/api-versioning/) for those future API improvements.

We have some [terms and conditions you will want to review]({{ config.baseUrl }}docs/terms/).

### Questions

We use [GH Discussions](https://github.com/GSA-TTS/FAC/discussions) for questions and conversation regarding the API. Information about [getting started](https://github.com/GSA-TTS/FAC/discussions/1066) and how we [version the API](https://github.com/GSA-TTS/FAC/discussions/1465) can be found there. 

