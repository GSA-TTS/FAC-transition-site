---
layout: home.njk
---

# FAC API documentation

The FAC API publicly disseminates the content of the SF-SAC and audit reports associated with those submissions.

## About the API

The FAC API endpoints are modeled on the pipe-delimited CSV files previously provided by Census. This means we export a similar set of tables (e.g. `general` as opposed to `gen`) with similar columns. Those endpoints (and the fields you can query against) are described below.

The API is provided by [PostgREST](https://postgrest.org). All [query operations](https://postgrest.org/en/stable/references/api/tables_views.html) provided by PostgREST are supported. If you are authoring a client to talk to the FAC API, you should become familiar with the PostgREST documentation.

## Resources

{% include "api/fac-api-nav.md" %}

## Questions

We use [GH Discussions](https://github.com/GSA-TTS/FAC/discussions) for questions and conversation regarding the API. Information about [getting started](https://github.com/GSA-TTS/FAC/discussions/1066) and how we [version the API](https://github.com/GSA-TTS/FAC/discussions/1465) can be found there. 

