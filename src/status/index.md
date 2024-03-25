---
layout: home.njk
title: FAC system status
meta:
  name: FAC system status
  description: Track the operating status of the FAC, both for audit submission and search.
---
# FAC system status

This page tracks the operating status of the FAC, both for audit submission and search.

## March 25, 2024

[Search](https://app.fac.gov/dissemination/search/) is now fully functional and available for users. 

If you have questions about search, please [contact the FAC helpdesk.](https://support.fac.gov/hc/en-us/requests/new)

## March 22, 2024

Our engineering team continues to test the new infrastructure supporting search. 

We are continuing to upload [static lists of submitted reports]({{ config.baseUrl }}status/findings) daily for audit resoluiton officials.

If you have questions about search or the audit resolution lists, please [contact the FAC helpdesk.](https://support.fac.gov/hc/en-us/requests/new)

## March 21, 2024

Testing of the new search infrastructure is still underway but our engineering team is making progress. We expect to turn search back on by early next week.

Again, we want to caution users that you will experience slow load times. We expect searches using multiple filters to take several minutes.

We now have [static lists of submitted reports available]({{ config.baseUrl }}status/findings). These exports list all audits with awards findings submitted by date.

If you have questions about search or the audit resolution lists, please [contact the FAC helpdesk.](https://support.fac.gov/hc/en-us/requests/new)

## March 20, 2024

Our engineering team has made progress on improving search stability and performance. We'll be turning back on all search filters for testing soon. During this testing period, we want to caution users that **you will experience slow load times**. We expect searches using multiple filters to take several minutes. 

If you experience a system error message, please [contact the FAC helpdesk](https://support.fac.gov/hc/en-us/requests/new) with the details of your search.

We're also continuing to work on a static list of submitted reports for use by audit resolution officials.

## March 19, 2024

We're aware that search performance, even reduced to UEI-only, continues to be slow. Our engineers are investigating the root cause of the issue and continue to work on a solution. 

We are also exploring options for using the API to generate a static list of submitted reports for use by audit resolution officials. We'll post more on this page if this becomes available.

For specific questions or issues, please contact the FAC via [our helpdesk](https://support.fac.gov/hc/en-us/requests/new).

## March 18, 2024

**Audit search is currently limited to UEI-only.** You can search your UEI to confirm your audit submission is complete. The PDF report is still be available for download but summary report workbooks aren't.

### Issue background

In mid-February, GSA completed the migration of historical data from the Census Bureau. This increased the amount of data in the GSA system exponentially, hindering search performance. 

Over the last month, our team has released multiple patches to stabilize search with limited success. Because of this, we've reduced search to UEI-only while we focus on building a more sustainable search function.

We're working hard to return full search functionality as soon as we can. We know this is a significant disruption for many users. Thank you for your patience.

**A timeline of the issues:**

- February 7: We completed the data migration. This increased the number of audits from 10K to more than 250K, and the number of awards tracked from 100K to nearly 4.5M.

- February 8: We [increased resources in our production environment](https://github.com/GSA-TTS/FAC/pull/3376) to address the increased load.

- February 9: The team removed the [My ALN filter](https://github.com/GSA-TTS/FAC/pull/3378) in an attempt to stop system crashes caused by this feature.

- February 14: We worked with more than a dozen NSACs to [prioritize search needs](https://github.com/GSA-TTS/FAC/issues/3388).

- February 16: The team [increased search capacity in the production environment](https://github.com/GSA-TTS/FAC/pull/3424).

- February 28: We [added prioritized search needs](https://github.com/GSA-TTS/FAC/pull/3440), re-introducing performance challenges.

- March 11:  Heavy use of the system prevented system updates for nearly a week. The team completed [an after-hours update to the production environment](https://github.com/GSA-TTS/FAC/pull/3496), partially addressing new search performance issues.

- March 14: Performance issues and system crashes persisted in search. The team released [new search tables and queries](https://github.com/GSA-TTS/FAC/pull/3511). These required significant engineering and testing work.

- March 18: The team decided to take down search to focus on long-term solutions vs. short-term patches.