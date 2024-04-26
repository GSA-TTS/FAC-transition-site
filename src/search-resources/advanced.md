---
layout: home.njk
title: FAC advanced search resources
meta:
  name: FAC advanced search resources
  description: Find resources and instructions for using the advanced search tool from the FAC.
---

# Advanced search filters

The FAC has two search modes: [basic](https://app.fac.gov/dissemination/search/) and [advanced](https://app.fac.gov/dissemination/search/advanced/). Advanced search currently has more than a dozen search filters and is best for audit resolution officials in need of specific data sets.  These filters combine with each other to narrow down search results. It’s possible to combine filters and get no results.

**Example:** If you search a range of 8/1/2023 to 8/15/2023 for “FAC acceptance date,”  plus a specific UEI, you may not get any results because that entity didn’t submit in that specific date range.

Many of the filters available via advanced search are the same as [the basic filters]({{config.baseUrl}}search-resources/filters). The filters unique to advance search are:

- [Assistance Listing Number (ALN/CFDA)](#assistance-listing-number-alncfda)
- [Cognizant or oversight](#cognizant-or-oversight)
- [Audit findings](#audit-findings)
- [Direct funding](#direct-funding)
- [Major program](#major-program)
- [Passthrough name](#passthrough-name)

### <a name=assistance-listing-number-alncfda></a>Assistance Listing Number (ALN/CFDA)

We support search of both agency ALNs and ALNs plus program numbers. Your list can contain a mix of both, or you can search for just one or the other.

Enter one number per line.

> **Example**: If you enter `93`, the system will return all submissions that contained a federal award from agency number 93 (HHS).

> **Example**: If you enter the ALN plus program number `93.778`, the system will return all audits that contained a federal award issued from agency 93 (HHS), program 778 (Medical Assistance Program).

> **Example**: If you enter `93` on one line, and `20.600` on another, the system will return all submissions that contained an award for HHS, and all awards that included funding from ALN 20.600. 

### <a name=cognizant-or-oversight></a>Cognizant or oversight

This filter looks at which agency is the cognizant or oversight agency for an entity and can be used in multiple ways.

To see all audits with a specific reporting agency, leave the dropdown menu set to "Either" and enter a specific agency number in the text field. To narrow down the results, select "cognizant" or "oversight" from the dropdown.

You can also use the dropdown menu while leaving the text field blank. If you select "cognizant" without entering an agency number, the results will only include audits with a cognizant agency and not those with an oversight agency. There will be a mix of agencies represented as the cognizant

### <a name=audit-findings></a>Audit findings
Select which type of findings you want to see. If you select any option from this list, audits without findings won’t appear in your results.

### <a name=direct-funding></a>Direct funding
Using this filter narrows results to only those audits with direct or passthrough funding. To find audits that received one type of funding or the other from a specific agency, use this filter in combination with the ALN filter

### <a name=major-program></a>Major program
This filter narrows results to only those audits that received money from a major program or not. To find only audits that received major program funding from a specific agency, use this filter in combination with the ALN filter

### <a name=passthrough-name></a>Passthrough name
Enter one word per line.

This filter looks at awards listed as passed through to a subrecpient and the recipient of those awards. 

At this time, the FAC matches whole words, not parts of words. The terms “school” and “schools” are not the same.

The search ignores the capitalization of words. The terms “school,” “School,” and “SCHOOL” are all the same.

**Example:** If  you are looking for a school, you might use the word “SCHOOL” as a part of your search. This will find “Ripley School District of Oklahoma,” but it will not find “Sand Creek Community Schools.” To find both, you would enter “SCHOOL” on one line, and “SCHOOLS” on the next.