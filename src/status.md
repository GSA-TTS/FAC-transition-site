---
layout: home.njk
title: FAC system status
meta:
  name: FAC system status
  description: Track the operating status of the FAC, both for audit submission and search.
---

# March 18, 2024

**Audit search is currently limited to UEI-only.** You can search your UEI to confirm your audit submission is complete. The PDF report will still be available for download but summary report workbooks won't.

## Issue background

On February 7th, GSA completed the migration of historical data from the Census Bureau. This increased the amount of data in the GSA system more than twenty-fold, drastically impairing search performance.

Our team has taken incremental, iterative steps to improve search performance since then but has been unable to quickly address the multiple challenges at hand. For this reason, we've decided to reduce search to UEI-only while we focus on building the infrastructure necessary to support a more sustainable search experience. A UEI-only search allows auditors and auditees to verify that their submissions are complete.

We're working as quickly as possible to return full search functionality as soon as we can. We recognize the significant disruption this represents to users with oversight responsibilities, and will provide daily updates here until this issue is resolved.

A brief history of our efforts:

1. February 7th, data from Census is completely loaded, increasing the number of audits from 10K to more than 250K, and the number of awards tracked from 100K to nearly 4.5M.
2. February 8th, [resources increased in production](https://github.com/GSA-TTS/FAC/pull/3376) to address load. 
3. February 9th, [My ALN](https://github.com/GSA-TTS/FAC/pull/3378) functionality is removed in an attempt to address crashing behaviors stemming from this feature.
4. February 14th, worked with more than a dozen NSACs to [prioritize search needs](https://github.com/GSA-TTS/FAC/issues/3388). 
5. February 16th, [increased search capacity in production](https://github.com/GSA-TTS/FAC/pull/3424).
6. February 28th, [added prioritized search needs](https://github.com/GSA-TTS/FAC/pull/3440), re-introducing performance challenges.
7. March 11th, heavy system load prevents system updates for nearly a week. [Post-workday update to increase resources in production](https://github.com/GSA-TTS/FAC/pull/3496) carried out, partially addressing new search performance challenges.
8. March 14th, performance issues and crashing persist in search. [New search tables and queries introduced](https://github.com/GSA-TTS/FAC/pull/3511). Changes require significant engineering and testing work. 
9. March 18th, decision to take down search made by team.