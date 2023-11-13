---
layout: home.njk
title: FAC search resources
meta:
  name: FAC search resources
  description: Find resources and instructions for searching single audit data.
---

# Search resources

Single audit submissions accepted by the FAC are available for [search](https://app.fac.gov/dissemination/search/). This data is also available via the [FAC API]({{ config.baseUrl }}developers). 

The FAC is coordinating access to Tribal data with agencies. That access will be available soon, and will be announced through [our updates page]({{ config.baseUrl }}info/updates).

## Search filters

The FAC search currently has six search filters that combine with each other to narrow down search results. It’s possible to combine filters and get no results.

> **Example**: If you search a range of 8/1/2023 to 8/15/2023 for “FAC Release Date,”  plus a specific UEI, you won’t get any results because we didn’t collect or release any audits between August 1st and August 15th. Even if the UEI exists, this combination of filters won’t return any results.

The six filters currently available are:

### UEI or EIN

The FAC searches for all of the UEIs or EINS you enter; the system will ignore any that are incorrect.

Enter one UEI or EIN per line.

> **Example**: If you enter only `RHVRCYWNTFX3`, the system will return a single audit for Clinton County. If you add a second line, and enter `UVLVR8CN2FM4`, the system will return two results, one for Clinton County and one for Santa Cruz County.

### Assistance Listing Number (ALN/CFDA)

The system supports search for both ALNs and for program numbers. Your list can contain a mix of both, or you can search for just one or the other.

Enter one number per line.

> **Example**: If you enter the full ALN `93.778`, the system will return all audits that contained a federal award issued from agency number 93 (HHS), program 778 (Medical Assistance Program).

> **Example**: If you enter `93`, the system will return all submissions that contained a federal award from agency number 93 (HHS).

> **Example**: If you enter `93` on one line, and `20.600` on another, the system will return all submissions that contained an award for HHS, and all awards that included funding on ALN 20.600. 

### Name (Entity, Auditee, or Auditor)
The name search looks at multiple fields in the single audit submission. At this time, the FAC matches whole words, not parts of words. The terms “school” and “schools” are not the same.

The system ignores the capitalization of words. The terms “school,” “School,” and “SCHOOL” are all the same.

Enter one word per line.

> **Example**: If  you are looking for a school, you might use the word “SCHOOL” as a part of your search. This will return “Ripley School District of Oklahoma,” but it will not return “Sand Creek Community Schools.” To get both, you would enter “SCHOOL” on one line, and “SCHOOLS” on the next. 

### Audit year

This filters on the submission’s audit year. If you leave it blank, the system will return results from all audit years; if you check one, it limits your results to the selected year(s) only. The migration of historical audits from Census to our system won’t happen until early 2024.

### FAC acceptance date

Historically, this used to be FAC Release Date.  The current FAC system accepts and releases the single audit data immediately upon final submission by the auditee.

This field filters by the date the FAC accepted an audit. You can enter both a start and end date to find audits accepted during a specific window or you can search by only start or end date.

If you enter only a start date, the system wil lreturn all audits accepted after that date.

If you enter only an end date, the system will return all audits accepted before that date.

### Cognizant or oversight

To filter by cognizant or oversight agency, you must select which you are looking for as well as enter the federal agency number. 

If you select cognizant or oversight but don’t enter an agency number, the system won’t return any results. 

If you enter an agency number but don’t select cognizant or oversight, the system won’t return any results.
