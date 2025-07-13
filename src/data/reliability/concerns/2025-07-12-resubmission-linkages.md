---
# Metadata
layout: home.njk
title: Resubmission linkages
tags: known_errors
order: 2
# Layout
eleventyComputed:
  eleventyNavigation:
    key: Resubmission linkages
    parent: Concerns
in_page_nav: true
# Page data
slug: Controls on UEI/AY uniqueness were not enforced through resubmission
discovered_date: 2022-10-01
timeline_to_repair:
github: https://github.com/GSA-TTS/FAC/issues/5102
log: 
---


{% from "components/macros.njk" import curationSummary %}

{{ curationSummary(slug, discovered_date, timeline_to_repair, github, log) }}

## Curation challenge

The FAC (and others in the Single Audit community) belive that there should only be one audit per audit year. That is:

>[!NOTE]
> In a given AY (defined by the year in which an auditee's fiscal period ends) a given UEI should be unique.

This is not currently true. If we look at the UEI `LF19U9DKFQM6`, we can see that there are many organizations in 2022, 2023, and 2024 that are reusing that UEI. They are all branches of the Salvation Army, but they are clearly different geographic divisions. 

This makes life confusing for audit resolution officials, and generally confuses the record in the FAC.

The FAC [is implementing resubmission](https://github.com/GSA-TTS/FAC/issues/5088), which will then prevent auditees from submitting the same UEI and audit year combination. This is not a new requirement; Government has, since the UEI was created, encouraging all entities who receieve Federal dollars to get their own, unique UEIs (**Unique** Entity Identifier). The FAC has been encouraging auditors and auditees similarly since 2022, and it is now going to enforce this data control. 

However, in order to enforce it, we need to curate our data.

### Example


Using the Salvation Army as an example:

report_id | auditee_uei | audit_year | auditee_name | auditee_state | auditee_ein
-- | -- | -- | -- | -- | -- 
2022-09-GSAFAC-0000004341 | LF19U9DKFQM6 | 2022 | THE SALVATION ARMY GOLDEN STATE DIVISION | CA | 941156347
2022-09-CENSUS-0000206501 | LF19U9DKFQM6 | 2022 | THE SALVATION ARMY USA WESTERN TERRITORY, HAWAIIAN AND PACIFIC ISLANDS |  HI | 990073540
2022-09-CENSUS-0000210307 | LF19U9DKFQM6 | 2022 | THE SALVATION ARMY, SOUTHERN CALIFORNIA DIVISION, LOS ANGELES CO | CA | 951656360
2022-09-CENSUS-0000258487 | LF19U9DKFQM6 | 2022 | THE SALVATION ARMY, SO CAL DIV, SAN DIEGO COUNTY | CA | 951656360
2022-09-CENSUS-0000258485 | LF19U9DKFQM6 | 2022 | THE SALVATION ARMY, SO CAL DV, SAN LUIS OBISPO COUN | CA | 951656360
2022-09-CENSUS-0000258486 | LF19U9DKFQM6 | 2022 | THE SALVATION ARMY, SO CAL DIV, RIVERSIDE COUNTY | CA | 951656360
2022-09-CENSUS-0000228067 | LF19U9DKFQM6 | 2022 | SALVATION ARMY - ALASKA DIVISION |  AK | 941156347
2022-09-CENSUS-0000207869 | LF19U9DKFQM6 | 2022 | THE SALVATION ARMY USA, WESTERN TERRITORY, DEL ORO DIVISION | CA | 680376209
2022-09-CENSUS-0000258492 | LF19U9DKFQM6 | 2022 | THE SALVATION ARMY, SO CAL DIV, ORANGE COUNTY |  CA | 951656360

* There are 9 records
* There is only one UEI: LF19U9DKFQM6
* There are four EINs: 941156347, 990073540, 951656360, 680376209
* Every record has a unique name

So, we would want to say that even though these records share a great deal of information in common, they are actually different reports. And, at some level, they are not wrong: the UEI for the Salvation Army is `LF19U9DKFQM6`, and those are valid EINs for the org as well. So, this is "correct" reporting, but the FAC would like to start enforcing more rigid data controls on this portion of audit submissions. We would say that each division should have its own UEI (and, possibly EIN).

Compare this to the City of Concord in NC:

report_id | audit_year | fac_accepted_date | auditee_uei | auditee_ein | auditee_email | auditee_name | auditee_state
-- | -- | -- | -- | -- | -- | -- | --  
2023-06-GSAFAC-0000003533 | 2023 | 2023-12-08 20:27:27 | PKAGEXPV4EE8 | 566001207 | emailaddr@concordnc.gov | city of concord | nc
2023-06-GSAFAC-0000013060 | 2023 | 2023-12-15 16:52:10 | PKAGEXPV4EE8 | 566001207 | emailaddr@concordnc.gov | city of concord | nc

These two audits have the same UEI, EIN, audit year, auditee email address, and state. Further, the acceptance dates imply that a resubmission was made a few days after the initial submission. Again, this is reasonable, given that the FAC did not have a way for people to "resubmit" previously. 

The curation challenge is for us to properly link (in this example) the two Concord reports. We would suppress the first report (but leave it available to Federal users), make the second report public/authoritative, and link the two reports via metadata. Our approach would want to make sure we do not incorrectly link (say) distinct divisions of the Salvation Army, as none of those reports are actually related to each-other.

## Consequences

The FAC wants to enforce additional data controls. These controls are not "new" in that the requirement for each organization to have its own UEI has been in place for years. We are working, now, to enforce this.

Consider the organizations Alice LLC.

If A needs to resubmit, we would like the FAC to suppress from public view the first version (A1), and make visible the second (A2). Internally, we would like to link them in this way:

```
A1 -> A2
```

Now,  if Alice were to find another error, we want to prevent the following:

```
A1 -> A2
 |
 A3
 ```

That is, we do not allow "bushy" resubmissions. We would prevent Alice from resubmitting A1, and instead insist that she must resubmit A2. When done, this would yield:

```
A1 -> A2 -> A3
```

The reason we must clean up existing reports is because of this "bushiness" problem. Without doing curation before turning on resubmission, we stand to have people pick (say) A1 to resubmit as opposed to A2. We would then end up with a situation where the FAC had:

```
A1 -> A3

A2
```

If we were to then attempt to implement our linking algorithm, we would have to rewrite history further, inserting A2 in-between A1 and A3. Or, worse, we would end up with a "bush" instead of a "list." Our goal is to curate the existing data so that we build lists where appropriate, and then enforce the list-y-ness of all future resubmissions.

## Mediating the error

We have built a clustering algorithm for audits. Clustering algorithms generally rely on a notion of the distance between two objects/points/elements in your data.

Given two points on an (x, y) plane, we would say their [Manhattan distance](https://en.wikipedia.org/wiki/Taxicab_geometry), or [taxicab distance](https://en.wikipedia.org/wiki/Taxicab_geometry) was | x<sub>2</sub> - x<sub>1</sub> | + | y<sub>2</sub> - y<sub>1</sub> |. 

To compute the distance between two rows in our SF-SAC, we sum the following distances:

* The distance between two email addresses is the [string edit distance](https://en.wikipedia.org/wiki/Levenshtein_distance); e.g. bob@acme.com is only one letter away from bub@acme.com, and therefore would be a distance of 1.
* The distance between two auditee names is the string edit distance, but we multiple it by 3. That is, one letter difference is a distance of 3, two letters distance is 6, and so on.
* The distance between two EINs is similarly the string edit distance multipled by 3.
* The distance between two UEIs the string edit distance mulitpled by 8
* The distance between two states is 8 (e.g. if two audits are for organizations with everyhting the same *except for* the state, they are 8 units apart)
* The distance between two audit years is the difference in the years multiplied by 11. E.g. (2022-2021)*11.

We consider two audits that are within 3 units of each other to be "the same." Practically speaking, this means the audit:

* Might have one or two typos in the email address
* The auditee name must be the same
* The EINs must be the same
* The UEIs must be the same
* The states must be the same
* The audit years must be the same

This is not sufficient to automatically find all resubmissions in the FAC database. For example, Wolfe's Neck resubmitted and changed their auditee name between resubmissions:


report id | uei | ay | auditee name | city | state | ein 
 -- | -- | -- | -- | -- | -- | --
2023-12-GSAFAC-0000058119 | X47KW2GXWUV8 | 2023 | Wolfe's Neck Farm Foundation | Freeport | ME | 222586116
2023-12-GSAFAC-0000065436 | X47KW2GXWUV8 | 2023 | Wolfe's Neck Center | Freeport | ME | 222586116

We would have to allow very large changes in the auditee name to consider these two audits "the same," but that would then allow other audits (e.g. New Visions Charter School in NY) to become linked where perhaps they should not:


report_id | audit_year | fac_accepted_date | auditee_uei | auditee_ein | auditee_email | auditee_name | auditee_state
-- | -- | -- | -- | -- | -- | -- | --  
2023-06-GSAFAC-0000006388 | 2023 | 2023-11-14 15:48:16 | TKWCRAJN1BF4 | 451559311 | kcruz@newvisions.org | new visions charter high school for advanced math and science | ny
| 2023-06-GSAFAC-0000005478 | 2023 | 2024-10-28 13:55:53 | TKWCRAJN1BF4 | 451559311 | kcruz@newvisions.org | new visions charter high school for advanced math and science | ny
2023-06-GSAFAC-0000006474 | 2023 | 2023-11-14 15:57:04 | L8GCDNCM6AN7 | 462339783 | kcruz@newvisions.org | new visions charter schools | ny
| 2023-06-GSAFAC-0000006102 | 2023 | 2024-10-28 13:57:22 | L8GCDNCM6AN7 | 462339783 | kcruz@newvisions.org | new visions charter schools | ny
2023-06-GSAFAC-0000006462 | 2023 | 2023-11-14 15:54:21 | N858ALDNQKT9 | 451559526 | kcruz@newvisions.org | new visions charter high school for the humanities | ny
| 2023-06-GSAFAC-0000006105 | 2023 | 2024-10-28 14:01:23 | N858ALDNQKT9 | 451559526 | kcruz@newvisions.org | new visions charter high school for the humanities | ny
2023-06-GSAFAC-0000006467 | 2023 | 2023-11-14 15:55:20 | WJ5SFZDHDYF4 | 454667733 | kcruz@newvisions.org | new visions charter high school for the humanities ii | ny
| 2023-06-GSAFAC-0000006108 | 2023 | 2024-10-28 13:58:27 | WJ5SFZDHDYF4 | 454667733 | kcruz@newvisions.org | new visions charter high school for the humanities ii | ny

(In this example, the EINs are different as well, so simply allowing large changes in the name would not link all of these audits.)

### Linking audits

Having established a distance measure, we then do the following:

1. Find all records that have duplicated UEIs in a given audit year
2. Begin with a list of sets of records; it is an empty list
3. For each record
   1. For each set in the list of sets
      1. Sum the distance of the record to each audit in the set
         1. If the distance from the record to the *set* is less than 3, insert the record into the set
   2. If the record could not be inserted into a set (because it was not "close" to any of the existing sets), insert it into its own set.

The core of the code that does this work looks roughly like:

```python
    for r in records:
        md = MinDist()
        md.distance = float("inf")
        md.set_index = -1
        for ndx, s in enumerate(sets):
            d = set_distance(r, s, ndx)
            if d < md.distance:
                md.distance = d
                md.set_index = ndx
        r.distance = md.distance
        if md.distance < THRESHOLD:
            r.order = len(sets[md.set_index])
            sets[md.set_index].add(r)
        else:
            new_s = set()
            r.order = 0
            new_s.add(r)
            sets.append(new_s)
```

Using this algorithm, we find there are:

| audit year | linkages |
| -- | -- |
| 2022 | 1140 |
| 2023 | 1076 |
| 2024 | 214 |

(AY24 submissions are currently underway.)

What this means is that we can take 1140 sets of reports (where a set is 2 or more reports) and link them together as resubmissions. Of the ~46K audits submitted in 2022, we know that between 2% and 3% of our reports are resubmissions that want to be linked. 1100 of 46,000 reports is 2.4%; this means that our algorithm is finding the overwhelming majority of the reports that want to be curated, but doing so in a very conservative way; it is extremely unlikely, given the weightings we apply when computing the distance between two SF-SACs, that we will erroneously "link" one or more audits.

## Possible resolution

We intend to:

1. Publish a list of audits we intend to link (and, in the case of prior submissions, suppress from public view)
2. Run our algorithm on the FAC production data, inserting linkages into the record to clearing indicate resubmission histories where we can do so with confidence.
3. Maintain a complete audit trail of the modifications to the record, so that we can, if needed, restore or otherwise revert our changes.

This change, to be clear, will *not* delete any data from the FAC database. It will add metadata to each SF-SAC indicating which records are linked as resubmissions, and then suppress them from public view. Federal users will still have full access to the entire audit history of a given submission, and each submission will be clearly marked as to where it lives in a submission chain.

Once this curation action is complete, we will enable our resubmission tooling, so as to prevent further audits from being submitted for a given UEI/AY combination; all such submissions will need to be resubmissions, which will automatically build linkages as the resubmission takes place.
