---
layout: home.njk
title: FAC search results guide
meta:
  name: FAC search results guide
  description: Learn how to read and interpret the search results tables from the FAC.
---

# Interpreting the search results table

This page will show you how to interpret the various columns that make up the search results table for the FAC.

<img src="{{ config.baseUrl }}assets/img/search/searchresults.png"  alt="A screenshot of an example search results table from the FAC. The column headers, from left to right, read: 'Name', 'UEI or EIN', 'Acc Date', 'AY', 'Cog or Over', 'View', and 'PDF'."/>

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

You can also use the dropdown menu while leaving the text field blank. If you select "cognizant" without entering an agency number, the results will only include audits with a cognizant agency and not those with an oversight agency. There will be a mix of agencies represented as the cognizant.

> **Example**: If you leave the dropdown on “Either” and enter `93`, you will get back all submissions that have agency number 93 (HHS) as their cognizant or oversight agency.

> **Example**: If you select “Cognizant” from the dropdown and enter `93`, you will only get submissions that have agency number 93 (HHS) as their cognizant agency.

### <a name=audit-findings></a>Audit findings
Select which type of findings you want to see. If you select any option from this list, only audits with findings will appear in your results.

Checking “Any findings” will return submissions with findings of any type.. 

The more types of findings you select, the narrower your results will be. However, if you keep “Any findings” checked and check another type, the “Any findings” will overrule the more specific types.

### <a name=direct-funding></a>Direct funding
Using this filter narrows results to only those audits with direct or passthrough funding. To find audits that received one type of funding or the other from a specific agency, use this filter in combination with the ALN filter.

> **Example**: If you select “Direct funding” and enter `93` in the ALN filter, you will get back all submissions that received direct funding from agency number 93 (HHS).

### <a name=major-program></a>Major program
This filter narrows results to those audits that did or didn’t receive money from a qualifying major program. To find only audits that received major program funding from a specific agency, use this filter in combination with the ALN filter.

> **Example**: If you select “Y” and enter `93` in the ALN filter, you will get back all submissions that received major program funding from agency number 93 (HHS).

### <a name=passthrough-name></a>Passthrough name
Enter one word per line.

This filter looks at awards listed as passed through to a subrecpient and the recipient of those awards.

At this time, the FAC matches whole words, not parts of words. The terms “school” and “schools” are not the same.

The search ignores the capitalization of words. The terms “school,” “School,” and “SCHOOL” are all the same.

Enter one word per line.

**Example:** If  you are looking for a school, you might use the word “SCHOOL” as a part of your search. This will find “Ripley School District of Oklahoma,” but it will not find “Sand Creek Community Schools.” To find both, you would enter “SCHOOL” on one line, and “SCHOOLS” on the next.