---
layout: home.njk
title: FAC API rollup tutorial
meta:
  name: FAC API rollup tutorial
  description: A tutorial focused on the rollup fields in the API
---

# FAC API rollup tutorial

The FAC API closely follows the historical data format distributed by Census. This initial choice was not because the tables provided by Census were a good design. It was a design choice to provide *some* consistency in the migration of systems and data from Census to GSA.

This tutorial will look at some of the fields "left behind" in the transition, and how those fields can easily be computed using the data already in our API.

## About this code

The code for this tutorial can be found in the [fac-rollup-fields-example](https://github.com/GSA-TTS/fac-rollup-fields-example) repository. 

From the README:

> This code does not run in any production system.

> This code should not be used in any production system. 

> It is offered for illustrative/educational purposes only.
> "This place is not a place of honor...  no highly esteemed deed is commemorated here...  nothing valued is here."

> [https://en.wikipedia.org/wiki/Long-term_nuclear_waste_warning_messages](https://en.wikipedia.org/wiki/Long-term_nuclear_waste_warning_messages)


## A bit of history

Census only had one set of data tables in their system. To change their system over time (which was infrequent, for various good reasons) they did not use [migrations](https://guides.rubyonrails.org/active_record_migrations.html). Instead, they added columns to their tables. This led to tables with 70, 80, even 90 or more columns. Some columns were used for the entire history of the data collection; some only a few years. 

This design decision means migrating data forward to a new system is complex. We do not want to recreate a data model from 20 years ago, and GSA must leave itself the ability to evolve its data collection over time. 

As a result, we have focused on creating a **minimal viable mapping**. This means we mapped our data intake (modeled on the 2022 data intake at Census) to the pipe-delimited CSVs historically distributed by Census. We did not map the other way; that is, we did not try and map every field in the CSVs back into our system; to do so would create significant historical design debt that would last years.

## The missing fields

Our API covers everything we collect. There are fields that Census disseminated that were not in their *collection*. Instead, they *computed* the values of those fields, and then disseminated the computed values. **This is a bad practice.**

We have [investigated adding these fields to the API](https://github.com/GSA-TTS/FAC/issues/2337). This document is a continuation of that investigation. The question being asked here is:

> How hard is it to use the API to compute the "missing" API fields?

Let's find out!

### Missing: ALN (previously CFDA)

The ALN is a number with the shape `12.345`. Sometimes it is `12.RD`, or `12.U01`. Historically, it is sometimes even messier. 

We do not distribute the ALN. We distribute the agency prefix and the program number. The agency prefix is the number to the left of the dot, and the program number is the value to the right of the dot. 

We explored adding this to the API in [#2308](https://github.com/GSA-TTS/FAC/issues/2308). What does it look like as code a developer using our API might write?

#### Example: Given a report ID, compute the ALN

Given a report ID, there may be multiple awards. These will be in the `federal_awards` endpoint.

For each of those, we'll want two fields: the `federal_agency_prefix` and `federal_award_extension`. 

To get from those two to a single ALN, we combine them as a string with a `.` in the middle. Easy-peasy!

```python
import os
import requests

FAC_API_BASE = os.getenv("FAC_API_URL")
FAC_API_KEY  = os.getenv("API_GOV_KEY")

# get_n_report_ids : number -> list-of strings
# Returns `n` report IDs. 
def get_n_report_ids(n):
    url = f"{FAC_API_BASE}/general?select=report_id&limit={n}"
    res = requests.get(url, headers={ "X-API-Key": FAC_API_KEY })
    return list(map(lambda o: o["report_id"], res.json()))

# aln_from_report_id : string -> list-of strings
# Given a report ID, retur  ns all of the ALNs for associated federal awards 
def aln_from_report_id(rid):
    url = f"{FAC_API_BASE}/federal_awards?select=federal_agency_prefix,federal_award_extension&report_id=eq.{rid}"
    res = requests.get(url, headers={ "X-API-Key": FAC_API_KEY })
    prefixes = list(map(lambda o: o["federal_agency_prefix"], res.json()))
    extensions = list(map(lambda o: o["federal_award_extension"], res.json()))
    return [ f"{pre}.{ext}" for pre, ext in zip(prefixes, extensions) ] 
    
for rid in get_n_report_ids(3):
    print(rid, aln_from_report_id(rid))
```


#### Output

```
2023-06-GSAFAC-0000000002 ['84.027', '84.027', '84.173', '84.173', '84.010', '84.367', '84.424', '84.424', '84.425', '84.425', '84.425', '84.425', '84.425', '84.425', '84.425', '10.553', '10.555', '10.575', '10.649', '10.555']
2023-06-GSAFAC-0000000688 ['14.155', '14.195', '14.018', '14.228']
2022-12-GSAFAC-0000001061 ['16.557', '16.524', '16.841', '16.526', '93.497', '16.575']
```

### Example: Given a report ID, calculate COG_OVER

Every audit has an agency who is either cognizant or has oversight. The FAC populates one of two fields in every record: `cognizant_agency` or `oversight_agency`. Only one of the two fields will ever be populated.

Census included a field called `cog_over` that would be set to `C` if the audit had an agency that was cognizant, and `O` if the audit had an agency who had oversight. 

Much of the code is the same from one example to another. Focusing in on just the interesting bit...

```python
# determine_cog_over : string -> string
# Given a report ID, return whether that audit has a cognizant over oversight agency (`C` or `O`)
def determine_cog_over(rid):
    url = f"{FAC_API_BASE}/general?select=cognizant_agency,oversight_agency&report_id=eq.{rid}&limit=1"
    res = requests.get(url, headers={ "X-API-Key": FAC_API_KEY })
    json = res.json()[0]
    cog = json["cognizant_agency"]
    over = json["oversight_agency"]
    if cog:
        return 'C'
    elif over:
        return 'O'
    else:
        # This would be an error
        return 'X'
```

#### Output

```
2023-06-GSAFAC-0000000002 O
2023-06-GSAFAC-0000000688 O
2022-12-GSAFAC-0000001061 O
```

### Example: Are there questioned costs?

The `QCOSTS` rollup did a bit more work. Further, this is a confusing rollup, as there are other fields in the collection that are directly collected and sound *just like this one*. In this regard, we know what field we have in our collection, but the mapping to the rollup may be confusing to those familiar with the historical data.

So, if accept that there are two hard things in computing (naming, cache invalidation, and off-by-one errors), the rollup for this is calculated as follows.

```
IF the audit has any findings AND one of the questioned cost fields are `true`
THEN this is true
ELSE false
```

There's a bit of logic to this one (as opposed to just mapping over values), but it is still straight-forward.

```python
# is_questioned_costs : string -> boolean
# Given a report ID, return whether there were questioned costs
def is_questioned_costs(rid):
    findings_fields=["is_modified_opinion", 
                     "is_other_matters",
                     "is_material_weakness",
                     "is_significant_deficiency"
                     ]
    url = f"{FAC_API_BASE}/findings?select={','.join(findings_fields)}&report_id=eq.{rid}"
    res = requests.get(url, headers={ "X-API-Key": FAC_API_KEY })
    json = res.json()
    
    result = False
    if json:
        for _, val in json[0].items():
            if val == 'Y':
                result = True
    return result
```

#### Output

The return result on this one is kinda cool.

```
2023-06-GSAFAC-0000000002 False
2023-06-GSAFAC-0000000688 False
2022-12-GSAFAC-0000001061 False
2023-06-GSAFAC-0000000733 False
2022-12-GSAFAC-0000000192 False
2023-03-GSAFAC-0000000307 False
2022-12-GSAFAC-0000000861 False
2023-06-GSAFAC-0000000087 False
2022-12-GSAFAC-0000000172 False
2023-06-GSAFAC-0000000800 False
2022-12-GSAFAC-0000000123 False
2023-04-GSAFAC-0000000495 False
2023-03-GSAFAC-0000000812 True
2023-06-GSAFAC-0000000206 False
2023-06-GSAFAC-0000000050 False
2023-06-GSAFAC-0000000198 False
2022-06-GSAFAC-0000000652 True
2023-01-GSAFAC-0000000036 False
2023-06-GSAFAC-0000000804 False
2023-02-GSAFAC-0000000353 False
2023-03-GSAFAC-0000001140 False
2023-06-GSAFAC-0000000280 False
2023-07-GSAFAC-0000001016 False
2023-01-GSAFAC-0000001122 False
2023-05-GSAFAC-0000000550 False
2023-05-GSAFAC-0000001052 False
2022-12-GSAFAC-0000000152 True
2022-12-GSAFAC-0000000193 False
2023-06-GSAFAC-0000000462 False
2023-04-GSAFAC-0000000116 False
```

We can see that, from the first 30 audits that come back, three of them have findings. 

