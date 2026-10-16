---
layout: home.njk
title: FAC Analytics User Guide
sidenav: true
sticky_sidenav: true
subnav:
  - text: Overview
    href: '#overview'
  - text: Using dashboard filters and search
    href: '#using-dashboard-filters-and-search'
  - text: Available dashboards
    href: '#available-dashboards'
  - text: Working with results
    href: '#working-with-results'
  - text: Troubleshooting
    href: '#troubleshooting'
  - text: Frequently asked questions
    href: '#frequently-asked-questions'
eleventyComputed:
    eleventyNavigation:
        key: FAC Analytics User Guide
        parent: FAC Analytics
        title: FAC Analytics User Guide
---

# FAC Analytics User Guide

## Overview

The Federal Audit Clearinghouse (FAC) Metabase dashboards let users explore audit submissions, federal award expenditures, audit findings, and more. Most dashboards include filters, tables, and visualizations to help you analyze audit data and export results for further use.

This guide explains how to search the dashboards, interpret the results, and download information for additional analysis.

## Using dashboard filters and search

Different dashboard filters use different input methods. Depending on the filter, you may need to select **Apply**, select **Update filter**, or press **Enter/Return** after entering your criteria.

- **State:** Enter the two-letter state abbreviation in uppercase.
- **Text searches:** Enter one or more search terms. With multiple terms, results must contain *all* the words, but they can appear in any order or in different parts of the text.
- **Multiple filters:** Combine filters to narrow the results to the records most relevant to your research.
- **Removing filters:** Select the **X** on an active filter to clear its value.

## Available dashboards

### Data Explorer (Browse General)

[Open the Data Explorer (Browse General) dashboard]({{ config.baseUrl }}analytics/data-explorer/)

The **Data Explorer (Browse General)** dashboard provides a report-level view of FAC submissions. Use it to research a particular auditee or identify groups of audits with shared characteristics.

Filters include Report ID, Audit Year, FAC Accepted Year, Auditee Name, UEI, EIN, State, Entity Type, Oversight Agency, Cognizant Agency, minimum federal expenditures, Low-Risk Auditee status, accounting framework indicators, Going Concern, Internal Control Deficiency, Material Weakness, and Material Noncompliance.

Report IDs link to the associated FAC dissemination records.

Results include Report ID, Audit Year, FAC Accepted Date, Auditee Name, UEI, EIN, State, Auditor Firm, Entity Type, Cognizant Agency, Oversight Agency, Total Federal Expenditures, Low Risk Auditee, GAAP, Special Purpose Framework Required, Special Purpose Framework, Going Concern, Internal Control Deficiency, Material Weakness Disclosed, and Material Noncompliance Disclosed.

<a href="{{ config.baseUrl }}assets/metabase/guide/metabase-data-explorer.png" target="_blank" rel="noopener" aria-label="Open full-size dashboard screenshot in a new tab"><img src="{{ config.baseUrl }}assets/metabase/guide/metabase-data-explorer.png" alt="FAC dashboard screenshot for data explorer.png" width="650" style="max-width:100%;height:auto;margin:1em 0;border:1px solid #777;"></a>

### Data Crosswalks

[Open the Data Crosswalks dashboard]({{ config.baseUrl }}analytics/data-crosswalk/)

The **Data Crosswalks** dashboard connects auditee and auditor identifiers across FAC records and audit years. Use it to research organizations whose names or identifiers have changed, find historical records containing `GSA_MIGRATION` instead of a UEI, identify additional UEIs and EINs, or investigate an auditor EIN.

You can search by **Auditee UEI**, **Auditee EIN**, or **Auditor EIN**. The dashboard has four views:

- **UEI/EIN to All FAC Reports:** Find reports associated with an auditee across audit years. Where possible, EIN relationships connect older `GSA_MIGRATION` records with later reports containing valid UEIs. Results include Report ID, Audit Year, Auditee Name, UEI, EIN, State, and FAC Accepted Date.
- **Historical EIN/UEI/Name Relationships:** Review UEIs historically associated with an EIN, including the first and most recent audit years for each relationship. Results include EIN, UEI, Auditee Name, First Audit Year, and Most Recent Audit Year.
- **Primary and Additional Identifier Lookup:** Find submissions where a UEI or EIN appears as either the primary auditee identifier or an additional reported identifier. Results distinguish primary and additional matches and include the corresponding report, year, auditee name, identifiers, and state.
- **Auditor EIN Crosswalk:** View auditor firm names associated with an EIN across audit years, with the first and most recent audit years, report count, and an indicator of the most recent name. Capitalization-only differences are combined.

<a href="{{ config.baseUrl }}assets/metabase/guide/metabase-data-crosswalks.png" target="_blank" rel="noopener" aria-label="Open full-size dashboard screenshot in a new tab"><img src="{{ config.baseUrl }}assets/metabase/guide/metabase-data-crosswalks.png" alt="FAC dashboard screenshot for data crosswalks.png" width="650" style="max-width:100%;height:auto;margin:1em 0;border:1px solid #777;"></a>

### Findings (Browse Findings)

[Open the Findings (Browse Findings) dashboard]({{ config.baseUrl }}analytics/findings/)

The **Findings** dashboard helps users filter and analyze audit findings by type, such as material weaknesses, significant deficiencies, questioned costs, and repeat findings.

Use this dashboard to identify finding trends, review detailed finding descriptions, filter by audit year and category, and export the results for reporting and analysis.

Results include Report ID, Audit Year, FAC Accepted Date, Auditee Name, UEI, EIN, State, Auditor Firm, Auditor EIN, Auditor Email, ALN, Program Name, Cluster Name, Entity Type, Oversight Agency, Cognizant Agency, Total Federal Expenditures, Total Findings Count, Award Reference, Finding Reference, Compliance Requirement, Material Weakness, Major Program, Significant Deficiency, Questioned Costs, Repeat Finding, Prior Finding Reference Numbers, Modified Opinion, Other Findings, Other Matters, Agencies with Prior Findings, Direct Award, Has Subrecipient, Indirect Funding ID, Indirect Funding Name, and Loan.

<a href="{{ config.baseUrl }}assets/metabase/guide/metabase-findings.png" target="_blank" rel="noopener" aria-label="Open full-size dashboard screenshot in a new tab"><img src="{{ config.baseUrl }}assets/metabase/guide/metabase-findings.png" alt="FAC dashboard screenshot for findings.png" width="650" style="max-width:100%;height:auto;margin:1em 0;border:1px solid #777;"></a>

### Repeat Findings

[Open the Repeat Findings dashboard]({{ config.baseUrl }}analytics/repeat-findings/)

The **Repeat Findings** page contains two dashboards that work together: a discovery view to locate repeat findings and a tracker to reconstruct finding history across audit years.

#### Repeat Findings by ALN Prefix, State, and Year

Select an **ALN prefix**, **audit year**, and optional **state** to discover repeat findings. The ALN prefix identifies the federal agency administering or providing the funding. Results include Report ID, Audit Year, Auditee Name, UEI, EIN, ALN, State, Finding Reference, Compliance Requirement, Cognizant Agency, and Oversight Agency.

Use a returned Report ID, UEI, or EIN to examine the full finding history in the tracker.

#### FAC Repeat Findings Tracker

Search by **Report ID**, **Auditee UEI**, or **Auditee EIN** to reconstruct historical repeat-finding chains. The tracker uses EIN relationships to connect older records containing `GSA_MIGRATION` with newer records containing a valid UEI.

The tracker displays the latest report, auditee name, EIN, UEI history, finding-reference chain, report history, first and latest located audit years, responsible agency and its role, and whether a referenced prior finding appears to be missing. Results include Auditee Name, EIN, UEI History, Agency, Agency Role, Finding Chain, Chain Status, Missing Prior Finding, First Located Audit Year, Latest Audit Year, Years Located in Chain, Latest Finding Reference, Latest Report ID, and Finding and Report History.

**Note:** A missing prior finding may mean the referenced record is not available in FAC data or the historical chain cannot be fully resolved.

<a href="{{ config.baseUrl }}assets/metabase/guide/metabase-repeat-findings.png" target="_blank" rel="noopener" aria-label="Open full-size dashboard screenshot in a new tab"><img src="{{ config.baseUrl }}assets/metabase/guide/metabase-repeat-findings.png" alt="FAC dashboard screenshot for repeat findings.png" width="650" style="max-width:100%;height:auto;margin:1em 0;border:1px solid #777;"></a>

### Pass-Through Recipient and Subrecipient Findings

[Open the Pass-Through Recipient and Subrecipient Findings dashboard]({{ config.baseUrl }}analytics/passthrough/)

This dashboard compares two different kinds of award activity:

- **Pass-through recipient activity:** The auditee received a federal award indirectly through another entity (`is_direct = No`).
- **Subrecipient activity:** The auditee passed federal funds onward to a subrecipient (`is_passthrough_award = Yes`).

Filter by audit year, agency prefix, or ALN extension. The dashboard includes separate state maps for each kind of activity. Select a state on a map to populate the corresponding detailed findings table.

Each map shows the **percentage of findings** associated with audit reports containing the selected kind of award activity, relative to all findings in that state. A larger percentage does **not** necessarily mean a greater number of findings overall.

Results include Report ID, Audit Year, Auditee Name, UEI, EIN, State, ALN, Finding Reference, Compliance Requirement, Material Weakness, Significant Deficiency, Questioned Costs, and Repeat Finding.

**Important:** FAC findings are reported at the audit-report level. These measures show that a report contains the relevant award activity; they do **not** establish that an individual finding is tied to a particular award.

### Text Search

[Open the Text Search dashboard]({{ config.baseUrl }}analytics/text-search/)

The **Text Search** dashboard searches narrative information that is difficult to explore with standard categorical filters. It provides separate searches for **Findings Text**, **Corrective Action Plans (CAPs)**, **SEFA Note Content**, **Accounting Policies**, and **De Minimis Rate Explanations**.

Enter your term or terms in the appropriate text filter. Results contain all entered terms, but the words need not be adjacent or in the same order. You can further narrow the results with filters such as Audit Year, Auditee Name, UEI, EIN, State, and Compliance Requirement.

Results include Report ID, Audit Year, Auditee Name, UEI, EIN, State, Finding Reference, Compliance Requirement, and the relevant narrative text.

### Oversight Summaries

[Open the Oversight Summaries dashboard]({{ config.baseUrl }}analytics/oversight-summaries/)

The **Oversight Summaries** dashboard summarizes audit submissions, federal award volume, and findings for selected **Oversight** and **Cognizant** agencies. Filter by agency and audit year. When multiple agencies are selected, use the comparison view to review them together.

The dashboard includes an agency-code reference, summary statistics, and an agency comparison view. Results include Audit Year, Agency Type, Agency, Total Submissions, Total Award Volume, and Total Findings.

<a href="{{ config.baseUrl }}assets/metabase/guide/metabase-oversight-summaries.png" target="_blank" rel="noopener" aria-label="Open full-size dashboard screenshot in a new tab"><img src="{{ config.baseUrl }}assets/metabase/guide/metabase-oversight-summaries.png" alt="FAC dashboard screenshot for oversight summaries.png" width="650" style="max-width:100%;height:auto;margin:1em 0;border:1px solid #777;"></a>

### Yearly Trends

[Open the Yearly Trends dashboard]({{ config.baseUrl }}analytics/yearly-trends/)

The **Yearly Trends** dashboard provides graphs showing how FAC audit activity changes over time. It includes yearly **submission counts**, **total federal award dollars**, and **finding counts**, including the number of audits reporting zero findings. Adjust the audit-year filter to explore trends across years.

### State Graphs

[Open the State Graphs dashboard]({{ config.baseUrl }}analytics/state-graphs/)

The **State Graphs** dashboard provides geographic views of federal expenditures, findings rates, and low-risk auditee rates by state for a selected audit year.

Select a state interactively to view more detailed information. Use the maps to compare geographic patterns in federal expenditures and audit characteristics across states.

<a href="{{ config.baseUrl }}assets/metabase/guide/metabase-state-graphs.png" target="_blank" rel="noopener" aria-label="Open full-size dashboard screenshot in a new tab"><img src="{{ config.baseUrl }}assets/metabase/guide/metabase-state-graphs.png" alt="FAC dashboard screenshot for state graphs.png" width="650" style="max-width:100%;height:auto;margin:1em 0;border:1px solid #777;"></a>

## Working with results

### Export data

To download the results from a table or visualization:

1. Hover over the table or visualization.
2. Select the **three-dot menu (⋯)** in the upper-right corner.
3. Select **Download results**.
4. Choose a file format, such as **CSV** or **Excel**. For graphs and charts, **PNG** downloads the graphic itself rather than the underlying table data.

### Customize a table

- **Resize columns:** Drag a column boundary to change its width.
- **Sort results:** Select a column heading to sort in ascending or descending order. An indicator shows the active sort.
- **Scroll horizontally:** Use the horizontal scroll bar at the bottom to view columns that are off-screen.
- **Change filters:** Add, remove, or combine filters to broaden or narrow your results.
- **Open related records:** Select linked Report IDs or other linked values to open the relevant FAC record or detail page.
- **Adjust browser zoom:** Zoom in or out when a table is too wide or difficult to read.

## Troubleshooting

If you see a dashboard error or results that do not appear to match your filters:

1. Check that all required filter values have been entered.
2. Select **Apply** or **Update filter**, or press **Enter/Return**, as appropriate for that filter.
3. Refresh the page.
4. If the filter has a default value, remove it and manually re-enter the value. Some defaults can lead to stale searches.
5. If the problem continues, submit a ticket to the **FAC Help Desk**.

## Frequently asked questions

### How can I track repeat findings?

Use **Repeat Findings**. First filter by ALN prefix, audit year, and optional state to find repeat findings. Then enter a Report ID, UEI, or EIN in the tracker to reconstruct the finding chain across years. The tracker uses EIN to connect older `GSA_MIGRATION` records with later UEI-based records.

### How can I see findings tied to questioned costs?

Use **Findings (Browse Findings)** and set **Questioned Costs = Yes** to isolate findings that report questioned costs.

### How can I analyze audit activity for a specific state?

Use the **State** filter in **Data Explorer (Browse General)** to narrow the list of submissions. Use **State Graphs** to compare geographic patterns.

### How can I research a specific entity, UEI, or EIN?

Use **Data Explorer (Browse General)** for report-level details and **Data Crosswalks** for historical UEI/EIN relationships, entity-name changes, and additional identifiers.

### How can I explore trends over time?

Use **Yearly Trends** to compare audit submissions, federal award volume, and findings across audit years.

### How can I review findings by category?

Use **Findings (Browse Findings)**. Apply a filter such as **Material Weakness = Yes** or **Significant Deficiency = Yes**.

### How can I compare pass-through recipient and subrecipient findings by state?

Use **Pass-Through Recipient and Subrecipient Findings**. Its two maps show the percentage of findings associated with reports containing each type of award activity. Select a state to see the corresponding finding details.

### How can I find findings associated with a particular federal program (ALN)?

Use **Findings (Browse Findings)**. Filter by ALN, agency prefix, or ALN extension to view program, auditee, finding, and auditor information.

### How can I search narrative text across FAC submissions?

Use **Text Search**. Select the relevant narrative field—Findings Text, CAPs, SEFA Notes, Accounting Policies, or De Minimis Rate Explanations—and enter your search terms. Records must contain all entered terms.

### How can I review historical identifiers, including `GSA_MIGRATION` records?

Use **Data Crosswalks**. Search by UEI or EIN to locate associated reports and historical identifier relationships, including older records whose UEI field contains `GSA_MIGRATION`.
