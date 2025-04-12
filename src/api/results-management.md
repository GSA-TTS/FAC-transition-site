---
layout: sidenav.njk
title: Retrieving many results from the FAC API
meta:
  name: Retrieving many results from the FAC API
  description: How to use pagination
eleventyComputed:
  eleventyNavigation:
    key: Results management
    parent: API resources
---

# Retriving many results from the FAC API

Every year, roughly 40,000-50,000 audits are submitted to the FAC. Given that there is data in the FAC database going back to 2016, that means there are more than 200,000 audits, with more than 2.5M `federal_awards` records.

To keep the FAC running smoothly for all users, we limit requests to 20,000 results at a time. So, how do you search and retrieve more than that?

## Consider more focused queries

Our first recommendation is *not* to issue queries that return tens or hundreds of thousands of results. You will likely find the experience to be non-performant.

Wherever possible, we recommend that partners build systems that issue small, restrictive queries. For small agencies, asking for all of the audits in a month or year may work well; for large agencies, it may not. Therefore, we recommend you consider issuing queries for a single day's or week's worth of audits. While this may mean more queries, each individual request will be more performant.

### Example

Assume you want to retrieve all of the awards for which your agency is cognizant in a given year. If you were to do this in SQL, it might be a `JOIN` across two tables. This would be slow, as you would be querying the `general` table, which has hundreds of thousands of rows, against the `federal_awards` table, which has millions of rows.

Instead, you can issue a sequence of small queries via the API. The following example demonstrates how this might work using Python:

```python
# Create a function that gets a list of all audits for a
# given agency in a given year. Then, for each audit,
# request its corresponding awards and add them to a list.
def retrieve_cog_awards(year, agency):
    general_url = f"{FAC_API_BASE}/general"
    federal_awards_url = f"{FAC_API_BASE}/federal_awards"
    general_response = requests.get(general_url, 
                       params={
                           "select": "report_id",
                           "audit_year": f"eq.{year}",
                           "cognizant_agency": f"eq.{agency}"
                           },
                       headers={ "X-API-Key": FAC_API_KEY })
    
    print(f"Agency[{agency}] Records: {len(general_response.json())}")
    report_ids = set(map(lambda o: o["report_id"], res.json()))
    awards = []
    for report_id in report_ids:
        awards_response = requests.get(federal_awards_url,
                           params={
                               "report_id": f"eq.{report_id}"
                           },
                           headers={ "X-API-Key": FAC_API_KEY })
        print(f"\treport_id[{report_id}]: {len(awards_response.json())} awards")
        awards.append(awards_response.json())

    return awards

# Call your function 
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

In the first query against `general`, you discover that Treasury was the cognizant agency 18 audits in 2020. In the second set of queries, you requested the `federal_awards` for each audit, where each query returned between 1 and 71 results.

## Use pagination

If you cannot restrict your queries in the manner described above, or if your focused queries still return more than 20,000 results, you will need to use pagination to get retrieve all of your results.

There are two ways to do this. The first is to use the query parameters `limit` and `offset`. The `limit` parameter determines the maximum number of results that will be included in each "page" of results. The `offset` parameter tells the API where to begin its count of results. For example, if you believe a query is going to return 35K results, you could make the following requests in a sequence of queries to get all of your results:

```
...url.../...table...?limit=4999&offset=0
...url.../...table...?limit=4999&offset=5000
...url.../...table...?limit=4999&offset=10000
...url.../...table...?limit=4999&offset=15000
...url.../...table...?limit=4999&offset=20000
...url.../...table...?limit=4999&offset=25000
...url.../...table...?limit=4999&offset=30000
```

 You can terminate your loop in one of two ways:

1. Use the [headers that PostgREST supplies to determine where you are in your pagination](https://postgrest.org/en/stable/references/api/pagination_count.html), and stop at the appropriate time.
2. Stop when you get no results. With this method, there is some danger your loop could run forever, consuming your entire API query limit. We recommend you always use an upper limit to prevent this issue.

The following is an example of how you could use both methods to terminate the loop using Python:

```python
# Get results from count 0 to 35,000, going in increments of 5,000
for offset in range(0, 35000, 5000):
    ...
    results = requests.get(... query using the `offset` variable ...)
    if results == []:
        break
    else:
        ...
```
