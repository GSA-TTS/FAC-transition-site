---
layout: home.njk
title: FAC search resources
meta:
  name: FAC search resources
  description: Find resources and instructions for searching single audit data.
eleventyComputed:
  eleventyNavigation:
    key: Search filters
    parent: Search resources
---

# Search filters

Searching the FAC can be done [here](https://app.fac.gov/dissemination/search/), where multiple filters can be used to narrow down search results. It’s possible to combine filters and get no results.

> **Example**: If you search a range of 8/1/2023 to 8/15/2023 for “FAC acceptance date,”  plus a specific UEI, you may not get any results because that entity didn’t submit in that specific date range.

The filters currently available are:
- [Audit year](#audit-year)
- [UEI or EIN](#uei-or-ein)
- [Assistance Listing Number (ALN/CFDA)](#assistance-listing-number-alncfda)
- [Name (entity, auditee, or auditor)](#name-entity-auditee-or-auditor)
- [FAC acceptance date](#fac-acceptance-date)
- [State](#state)
- [Cognizant or oversight](#cognizant-or-oversight)
- [Audit findings](#audit-findings)
- [Direct funding](#direct-funding)
- [Major program](#major-program)
- [Fiscal year end month](#fiscal-year-end-month)
- [Type of compliance requirement](#type-of-compliance-requirement)
- [Entity type](#entity-type)
- [Passthrough name](#passthrough-name)
- [Federal program name](#federal-program-name)
- [Report ID](#report-id)

## <a name=audit-year></a>Audit year

This filters on the submission’s audit year. If you leave it blank, the system will return results from all audit years; if you check one, it limits your results to the selected year(s) only. FAC data goes back to 2016.

## <a name=uei-or-ein></a>UEI or EIN

Enter one UEI or EIN per line.

The FAC searches for all of the UEIs or EINS you enter; the system will ignore any that are incorrect.

<!-- TODO: A single audit? -->
> **Example**: If you enter only `RHVRCYWNTFX3`, the system will return a single audit for Clinton County. If you add a second line, and enter `UVLVR8CN2FM4`, the system will return two results, one for Clinton County and one for Santa Cruz County.


## <a name=assistance-listing-number-alncfda></a>Assistance Listing Number (ALN/CFDA)

We support search of both agency ALNs and ALNs plus program numbers. Your list can contain a mix of both, or you can search for just one or the other.

Enter one number per line.

> **Example**: If you enter `93`, the system will return all submissions that contained a federal award from agency number 93 (HHS).

> **Example**: If you enter the ALN plus program number `93.778`, the system will return all audits that contained a federal award issued from agency 93 (HHS), program 778 (Medical Assistance Program).

> **Example**: If you enter `93` on one line, and `20.600` on another, the system will return all submissions that contained an award for HHS, and all awards that included funding from ALN 20.600.


## <a name=name-entity-auditee-or-auditor></a>Name (entity, auditee, or auditor)

Enter one word per line.

The name search looks at multiple fields in the single audit submission. At this time, the FAC matches whole words, not parts of words. The terms “school” and “schools” are not the same.

The system ignores the capitalization of words. The terms “school,” “School,” and “SCHOOL” are all the same.

> **Example**: If  you are looking for a school, you might use the word “SCHOOL” as a part of your search. This will return “Ripley School District of Oklahoma,” but it will not return “Sand Creek Community Schools.” To get both, you would enter “SCHOOL” on one line, and “SCHOOLS” on the next.


## <a name=fac-acceptance-date></a>FAC acceptance date

Historically, this used to be FAC Release Date.  The current FAC system accepts and releases the single audit data immediately upon final submission by the auditee.

This field filters by the date the FAC accepted an audit. You can enter both a start and end date to find audits accepted during a specific window or you can search by only start or end date.

If you enter only a start date, the system will return all audits accepted after that date.

If you enter only an end date, the system will return all audits accepted before that date.


## <a name=state></a>State

Use the dropdown menu to select the state whose audits you'd like to see.


## <a name=cognizant-or-oversight></a>Cognizant or oversight

This filter looks at which agency is the cognizant or oversight agency for an entity and can be used in multiple ways.

To see all audits with a specific reporting agency, leave the dropdown menu set to "Either" and enter a specific agency number in the text field. To narrow down the results, select "cognizant" or "oversight" from the dropdown.

You can also use the dropdown menu while leaving the text field blank. If you select "cognizant" without entering an agency number, the results will only include audits with a cognizant agency and not those with an oversight agency. There will be a mix of agencies represented as the cognizant.

> **Example**: If you leave the dropdown on “Either” and enter `93`, you will get back all submissions that have agency number 93 (HHS) as their cognizant or oversight agency.

> **Example**: If you select “Cognizant” from the dropdown and enter `93`, you will only get submissions that have agency number 93 (HHS) as their cognizant agency.


## <a name=audit-findings></a>Audit findings
Select which type of findings you want to see. If you select any option from this list, only audits with findings will appear in your results.

Checking “Any findings” will return submissions with findings of any type..

The more types of findings you select, the narrower your results will be. However, if you keep “Any findings” checked and check another type, the “Any findings” will overrule the more specific types.


## <a name=direct-funding></a>Direct funding
Using this filter narrows results to only those audits with direct or passthrough funding. To find audits that received one type of funding or the other from a specific agency, use this filter in combination with the ALN filter.

> **Example**: If you select “Direct funding” and enter `93` in the ALN filter, you will get back all submissions that received direct funding from agency number 93 (HHS).


## <a name=major-program></a>Major program
This filter narrows results to those audits that did or didn’t receive money from a qualifying major program. To find only audits that received major program funding from a specific agency, use this filter in combination with the ALN filter.

> **Example**: If you select “Y” and enter `93` in the ALN filter, you will get back all submissions that received major program funding from agency number 93 (HHS).


## <a name=fiscal-year-end-month></a>Fiscal year end month

Use the dropdown menu to select the end month of the auditee’s fiscal year.


## <a name=type-of-compliance-requirement></a>Type of compliance requirement

Use the dropdown menu to select one or more types of compliance requirements.

Types of compliance requirements identify the areas tested by auditors for major federal programs, such as allowable costs, eligibility, reporting, or subrecipient monitoring. Selecting a type of compliance requirement will limit the results to audits where that compliance requirement was reported for a major program.

You can select as many options as you’d like or leave this filter blank.


## <a name=entity-type></a>Entity type

Select the type of entity you would like to return. You can select as many options as you’d like or leave this filter blank.


## <a name=passthrough-name></a>Passthrough name
Enter one word per line.

This filter looks at awards listed as passed through to a subrecipient and the recipient of those awards.

At this time, the FAC matches whole words, not parts of words. The terms “school” and “schools” are not the same.

The search ignores the capitalization of words. The terms “school,” “School,” and “SCHOOL” are all the same.

Enter one word per line.

**Example:** If you are looking for a school, you might use the word “SCHOOL” as a part of your search. This will find “Ripley School District of Oklahoma,” but it will not find “Sand Creek Community Schools.” To find both, you would enter “SCHOOL” on one line, and “SCHOOLS” on the next.


## <a name=federal-program-name></a>Federal program name

Enter one or more words from the name of a federal program.

This filter searches the federal program names associated with awards reported in single audit submissions. You can use it to find audits that include awards for a particular federal program without knowing the program’s Assistance Listing Number (ALN).


## <a name=report-id></a>Report ID

If you know your report ID, you can enter it here to search the system. FAC report IDs generally look like `2022-06-GSAFAC-0000012345` for audits submitted directly to the new GSA FAC or `2022-06-CENSUS-0000123456` for historical records migrated from the Census FAC.
