---
layout: home.njk
title: FAC search results guide
meta:
  name: FAC search results guide
  description: Learn how to read and interpret the search results tables from the FAC.
eleventyComputed:
  eleventyNavigation:
    key: Results guide
    parent: Search resources
---

# Interpreting the search results table

This page will show you how to interpret the various columns that make up the search results table for the FAC. All search results display in the same table, regardless of whether you're using the [basic](https://app.fac.gov/dissemination/search/) or [advanced](https://app.fac.gov/dissemination/search/advanced/) search.

The search results table consists of the following columns:

- [Name](#name)
- [UEI or EIN](#uei)
- [Acc Date](#acc-date)
- [AY](#AY)
- [Cog or Over](#cog-over)
- [View](#view)
- [PDF](#PDF)

Each column can also be sorted, using the up or down arrows at the top of the column. Sorting a column sorts all results, not just those on the page disiplayed. If you sort a column and then advance to the next page of results, the sorting will still be applied.

The "Download all" button above the table will combine the SF-SAC summary results for every audit in the search results, up to 1,000 results, into a single download file.

<img src="{{ config.baseUrl }}assets/img/search/search-results.png"  alt="A screenshot of an example search results table from the FAC. The column headers, from left to right, read: 'Name', 'UEI or EIN', 'Acc Date', 'AY', 'Cog or Over', 'View', and 'PDF'."/>

## <a name=name></a>Name column

This column displays the entity name for each result.

## <a name=uei>UEI or EIN column

This column displays either the UEI or the EIN for each result. UEIs are 12-digit alpha numeric identifiers, and EINs are nine-digit numeric identifiers. UEIs replaced EINS across the federal government in 2022. Audits submitted before April of 2022 will use an EIN, and audits submitted after this date will use a UEI.

## <a name=acc-date>Acc date column

"Acc date" stands for Acceptance date. This column displays the date the FAC accepted the audit. For records from September 2023 and before, the acceptance date listed is one day earlier than they were submitted due to a migration error from the Census to the GSA FAC.

## <a name=AY>AY column

"AY" stands for audit year. The FAC uses this term rather than “fiscal year” as different entities have different fiscal year start and end dates, but the audit year is consistent across entities.

## <a name=cog-over>Cog or Over column

This column lists an entity’s cognizant or oversight entity by agency number. For more information on cognizant and oversight agencies, [read more at our help center](https://support.fac.gov/hc/en-us/articles/23465317541261-What-s-the-difference-between-a-cognizant-agency-and-an-oversight-agency-How-does-the-FAC-determine-which-I-have).

## <a name=view>View column

Clicking on the eye icon in this column will take you to the individual summary result page for that result. On that page you'll be able to download the auditee's summary SF-SAC and PDF report, as well as view their general information.

## <a name=PDF>PDF column

Clicking on the download link in this column will automatically download the PDF report for that result. If this column is blank for an auditee, it means they are a Tribal entity who has chosen to keep their PDF report private. If you're a Federal employee and believe you should have access to Tribal data, please [contact our helpdesk](https://support.fac.gov/hc/en-us/requests/new).
