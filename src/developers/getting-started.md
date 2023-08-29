---
layout: home.njk
title: Getting started with the FAC API
---

# {{title}}

Once you have a key from api.data.gov, you're ready to start exploring. The examples in this repository assume that you have two environment variables set; in a Bash shell, you would

```
export API_GOV_KEY="..."
export API_GOV_URL="https://api-staging.fac.gov/"
```

Those two environment variables must be present in your shell for the code provided to work "as is." If you are on Windows, you can either use the Windows Subshell for Linux (WSL) to run the code, or in a Windows command shell:

```
set API_GOV_KEY="as above..."
set API_GOV_URL="as above..."
```

*We have not tested this code under Windows; if you do, please report back how things work, or feel free to offer additions to this documentation for others to benefit from.*

## API endpoints

You can actually set `API_GOV_URL` to one of *four* URLs.

1. `api.fac.gov`: This endpoint is where live, authoritative data lives. Production services should use this endpoint. It is typically updated once per week on Wednesdays.
2. `api-staging.fac.gov`: This endpoint will contain a mix of live (public) data as well as test data. The `staging` environment is updated daily at 5AM EST.
3. `api-dev.fac.gov`: The development endpoint may contain a mix of live and test data. Every time we accept a pull request into `main`, this environment updates. `dev` is considered unstable.
4. `api-preview.fac.gov`: This environment updates when desired by developers (for testing feature branches), but is sometimes frozen for exploring new features with users, or conducting user acceptance tests. You should not use `preview` unless explicitly asked to for testing specific, new API features.


## Testing things out

From the command line, you should be able to use `curl` to execute a simple query against the API if everything is working:

```
curl -s -X "GET" \
     -H "X-Api-Key: ${API_GOV_KEY}" \
     "${API_GOV_URL}/general?limit=5"
```

This will return an [array of JSON objects](https://developer.mozilla.org/en-US/docs/Learn/JavaScript/Objects/JSON). Each object will represent a row in the general information table, which (roughly) maps to the `gen.txt` file that Census exports from their download page.

To format the results in a nicer way, you can use `jq`:

```
curl -s -X "GET" \
     -H "X-Api-Key: ${API_GOV_KEY}" \
     "${API_GOV_URL}/general?limit=5" | jq
```

And, because `jq` is a general-purpose tool for manipulating JSON, you could get a list of the report IDs that you found:

```
curl -s -X "GET" \
     -H "X-Api-Key: ${API_GOV_KEY}" \
     "${API_GOV_URL}/general?limit=5" | jq '.[] | .report_id'
```

We highlight this because you could use tools like `curl` and `jq` to build automations against the FAC API. We anticipate most users will write code in languages like Java, .NET, Python, JavaScript, R, Go, a robotic process automation (RPA) environment, or even Excel macros.
