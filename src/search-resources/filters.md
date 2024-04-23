---
layout: home.njk
title: FAC basic search resources
meta:
  name: FAC basic search resources
  description: Find resources and instructions for searching single audit data.
---

# Basic search filters

The FAC has two search modes: [basic](https://app.fac.gov/dissemination/search/) and [advanced](https://app.fac.gov/dissemination/search/advanced/). Basic search has eight search filters and is best for users wanting to confirm their submissions are complete. These filters combine with each other to narrow down search results. It’s possible to combine filters and get no results.

> **Example**: If you search a range of 8/1/2023 to 8/15/2023 for “FAC acceptance date,”  plus a specific UEI, you may not get any results because that entity didn’t submit in that specific date range.

The eight filters currently available are:
- [Audit year](#audit-year)
- [UEI or EIN](#uei-or-ein)
- [Name (entity, auditee, or auditor)](#name-entity-auditee-or-auditor)
- [FAC acceptance date](#fac-acceptance-date)
- [State](#state)
- [Fiscal year end month](#fiscal-year-end-month)
- [Entity type](#entity-type)
- [Report ID](#report-id)

### <a name=audit-year></a>Audit year

This filters on the submission’s audit year. If you leave it blank, the system will return results from all audit years; if you check one, it limits your results to the selected year(s) only. FAC data goes back to 2016.

### <a name=uei-or-ein></a>UEI or EIN

Enter one UEI or EIN per line.

The FAC searches for all of the UEIs or EINS you enter; the system will ignore any that are incorrect.

> **Example**: If you enter only `RHVRCYWNTFX3`, the system will return a single audit for Clinton County. If you add a second line, and enter `UVLVR8CN2FM4`, the system will return two results, one for Clinton County and one for Santa Cruz County.

### <a name=name-entity-auditee-or-auditor></a>Name (entity, auditee, or auditor)

Enter one word per line.

The name search looks at multiple fields in the single audit submission. At this time, the FAC matches whole words, not parts of words. The terms “school” and “schools” are not the same.

The system ignores the capitalization of words. The terms “school,” “School,” and “SCHOOL” are all the same.

> **Example**: If  you are looking for a school, you might use the word “SCHOOL” as a part of your search. This will return “Ripley School District of Oklahoma,” but it will not return “Sand Creek Community Schools.” To get both, you would enter “SCHOOL” on one line, and “SCHOOLS” on the next. 

### <a name=fac-acceptance-date></a>FAC acceptance date

Historically, this used to be FAC Release Date.  The current FAC system accepts and releases the single audit data immediately upon final submission by the auditee.

This field filters by the date the FAC accepted an audit. You can enter both a start and end date to find audits accepted during a specific window or you can search by only start or end date.

If you enter only a start date, the system will return all audits accepted after that date.

If you enter only an end date, the system will return all audits accepted before that date.

### <a name=state></a>State

Use the dropdown menu to select the state whose audits you'd like to see.

### <a name=fiscal-year-end-month></a>Fiscal year end month

Use the dropdown menu to select the end month of the auditee’s fiscal year.

### <a name=entity-type></a>Entity type

Select the type of entity you would like to return. You can select as many options as you’d like, or leave this filter blank.

### <a name=report-id></a>Report ID

If you know your report ID, you can enter it here to search the system. FAC report IDs generally look like `2022-06-GSAFAC-0000012345` for audits submitted directly to the new GSA FAC or `2022-06-CENSUS-0000123456` for historical records migrated from the Census FAC.