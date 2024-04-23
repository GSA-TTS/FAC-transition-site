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

Many of the filters available via advanced search are the same as the basic filters. The filters unique to advance search are:

- [Assistance Listing Number (ALN/CFDA)](#assistance-listing-number-alncfda)
- [Cognizant or oversight](#cognizant-or-oversight)
- [Audit findings](#audit-findings)
- [Direct funding](#direct-funding)
- [Major program](#major-program)
- [Passthrough name](#passthrough-name)

### <a name=assistance-listing-number-alncfda></a>Assistance Listing Number (ALN/CFDA)

Enter one number per line.

The system supports search for both ALNs and for program numbers. Your list can contain a mix of both, or you can search for just one or the other.

> **Example**: If you enter the full ALN `93.778`, the system will return all audits that contained a federal award issued from agency number 93 (HHS), program 778 (Medical Assistance Program).

> **Example**: If you enter `93`, the system will return all submissions that contained a federal award from agency number 93 (HHS).

> **Example**: If you enter `93` on one line, and `20.600` on another, the system will return all submissions that contained an award for HHS, and all awards that included funding on ALN 20.600. 

### <a name=cognizant-or-oversight></a>Cognizant or oversight

To filter by cognizant or oversight agency, you must select which you are looking for as well as enter the federal agency number. 

If you select cognizant or oversight but don’t enter an agency number, the system won’t return any results. 

If you enter an agency number but don’t select cognizant or oversight, the system won’t return any results.

### <a name=audit-findings></a>Audit findings
Select which type of findings you want to see. If you select any option from this list, audits without findings won’t appear in your results.

### <a name=direct-funding></a>Direct funding
Select either direct funding or passthrough funding if you want to limit your results to one or the other. This filter works best in combination with the ALN filter.

### <a name=major-program></a>Major program
Use this option to filter whether or not an audit received money from a specific major program. This is best used in combination with the ALN filter.

### <a name=passthrough-name></a>Passthrough name
Enter one word per line.

This filter looks at awards listed as being passed through and the recipient of those awards. 
At this time, the FAC matches whole words, not parts of words. The terms “school” and “schools” are not the same.

The search ignores the capitalization of words. The terms “school,” “School,” and “SCHOOL” are all the same.

**Example:** If  you are looking for a school, you might use the word “SCHOOL” as a part of your search. This will find “Ripley School District of Oklahoma,” but it will not find “Sand Creek Community Schools.” To find both, you would enter “SCHOOL” on one line, and “SCHOOLS” on the next.