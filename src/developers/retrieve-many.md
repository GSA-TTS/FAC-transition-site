---
layout: home.njk
title: Retrieving many results from the FAC API
meta:
  name: Retrieving many results from the FAC API
  description: How to use pagination
---

# Retriving many results from the FAC API

Every year, roughly 40,000--50,000 audits are submitted to the FAC. Given that there is data in the FAC database going back to 2016, that means there are more than 200,000 rows in the `/general` endpoint, and more than 2.5M rows in `federal_awards`.

That said, the FAC API limits you to 20,000 results at a time. 

So... how do you search and retrieve more than that?

## First answer: don't.

Our first recommendation is to *not* issue queries that return tens or hundreds of thousands of results. You will likely find the experience to be non-performant.

Wherever possible, we recommend that partners build systems that issue small, restrictive queries. For small agencies, asking for all of the audits in a month or year may work well; for large agencies, it may not. Therefore, we recommend you consider issuing queries for a single day's or week's worth of audits. 

While this may mean more queries (e.g. a loop over four weeks to retrieve a single month of data), each individual request will be more performant.

### Example

For example, assume we want to retrieve all of the awards for which my agency is cognizant in a given year. If we were to do this in SQL, it might be a `JOIN` across two tables. This would be expensive, as we would be querying `general` (which has hundreds of thousands of rows) against `federal_awards`, which has millions of rows.

Instead, we can issue a sequence of small queries via the API.

```
def retrieve_cog_awards(year, agency):
    gen_url = f"{FAC_API_BASE}/general"
    res = requests.get(gen_url, 
                       params={
                           "select": "report_id",
                           "audit_year": f"eq.{year}",
                           "cognizant_agency": f"eq.{agency}"
                           },
                       headers={ "X-API-Key": FAC_API_KEY })
    print(f"Agency[{agency}] Records: {len(res.json())}")
    report_ids = set(map(lambda o: o["report_id"], res.json()))
    awards = []
    for report_id in report_ids:
        fa_url = f"{FAC_API_BASE}/federal_awards"
        res = requests.get(fa_url,
                           params={
                               "report_id": f"eq.{report_id}"
                           },
                           headers={ "X-API-Key": FAC_API_KEY })
        print(f"\treport_id[{report_id}]: {len(res.json())} awards")
        awards.append(res.json())
    return awards

treasury = retrieve_cog_awards(2020, 21)
```

This example prints out the following:

```
Agency[21] Records: 18
        report_id[2020-12-CENSUS-0000187886]: 42 awards
        report_id[2020-12-CENSUS-0000182305]: 71 awards
        report_id[2020-12-CENSUS-0000187776]: 12 awards
        report_id[2020-06-CENSUS-0000242068]: 1 awards
        report_id[2020-09-CENSUS-0000136906]: 68 awards
        report_id[2020-11-CENSUS-0000138628]: 45 awards
        report_id[2020-12-CENSUS-0000251225]: 1 awards
        report_id[2020-12-CENSUS-0000252841]: 1 awards
        report_id[2020-12-CENSUS-0000166851]: 46 awards
        report_id[2020-12-CENSUS-0000208943]: 6 awards
        report_id[2020-09-CENSUS-0000074286]: 7 awards
        report_id[2020-12-CENSUS-0000128618]: 3 awards
        report_id[2020-12-CENSUS-0000230310]: 2 awards
        report_id[2020-11-CENSUS-0000138705]: 48 awards
        report_id[2020-12-CENSUS-0000022772]: 4 awards
        report_id[2020-12-CENSUS-0000188333]: 36 awards
        report_id[2020-12-CENSUS-0000258107]: 2 awards
        report_id[2020-06-CENSUS-0000200809]: 11 awards
```

We've issued 1 query against `general` (to discover 18 report ids that we need to investigate further), and then 18 queries against `federal_awards`, where each query returned between 1 and ~80 results.

## Second answer: pagination

If you cannot restrict your queries in this way, or even when you do restrict your queries you still get more than 20,000 results, you will need to "turn pages" to get through all of your results. 

There are two ways to do this. One is to use the query parameters `limit` and `offset` to choose how many results you will get, and where to begin in a result set. If a query is going to return 35K results, you could do:

```
...url.../...table...?limit=4999&offset=0
...url.../...table...?limit=4999&offset=5000
...url.../...table...?limit=4999&offset=10000
...url.../...table...?limit=4999&offset=15000
...url.../...table...?limit=4999&offset=20000
...url.../...table...?limit=4999&offset=25000
...url.../...table...?limit=4999&offset=30000
```

as a sequence of queries to get all of your results. You can terminate your loop in one of two ways:

1. Use the [headers that PostgREST supplies to determine where you are in your pagination](https://postgrest.org/en/stable/references/api/pagination_count.html), and stop at the appropriate time, or 
2. Stop when you get no results.

In the above example, we might write a loop like this in Python:

```
for offset in range(0, 45000, 5000):
    ...
    results = requests.get(... query using the `offset` variable ...)
    if results == []:
        break
    else:
        ...
```

In this way, we're going to loop until we either hit the upper limit or we get no values.

At that point, we *could* eliminate the limit:

```
done = False
while not done:
    ...
    results = requests.get(... query using the `offset` variable ...)
    if results == []:
        done = True
        break
    else:
        offset += 5000
        ...
```

There is a danger in this, which is that if you have written your code incorrectly, you will loop forever, and eat up your API query limit. We would recommend that you always loop with limits.
