---
layout: home.njk
title: Data reliability
meta:
  name: Data reliability
  description: Learn how we keep our data the Federal Audit Clearinghouse reliable.
terms:
  cfac: Census FAC
  cfac_url: https://facweb.census.gov/
  gfac: GSA FAC
  gfac_url: https://fac.gov/
eleventyComputed:
  eleventyNavigation:
    key: Data reliability
    parent: Home
---


# Overview

Data reliability is the measure of how accurate and complete a set of data is. Reliable data creates reproducible outcomes and performs consistently across repeated projections, analysis, and testing. <b>Data reliability for the Federal Audit Clearinghouse is crucial to building trust with our Federal partners and the public; The more reliable our data is, the more trust we build with our users.</b>

## What data do we provide?

The Federal Audit Clearinghouse (The FAC) collects Single Audit report packages, as required by [The Single Audit Act](https://www.govinfo.gov/content/pkg/PLAW-104publ156/pdf/PLAW-104publ156.pdf). This act mandates an annual audit of all non-Federal entities, including Tribes, that spend $1,000,000 or more of Federal Financial Assistance (Federal grant dollars) in a fiscal year. A Single Audit report package comprises two parts: The audit report PDF and Form SF-SAC. The audit report PDF is prepared by an independent auditor, and it presents both an organization's financial statements and compliance with Federal award requirements. Form SF-SAC is a set of excel worksheets that collect specific data pulled from the report PDF. The data requested in Form SF-SAC may vary based upon the reporting entity and their award requirements.

## Where does our data come from?

Single Audit report packages must be uploaded to fac.gov by the recipient of the Federal grant funding (the entity), and are independently certified as accurate by both the entity and conducting auditor before being published to our [searchable database](https://app.fac.gov/dissemination/search/). Tribal entities may choose to partially suppress their data from public view, in which case the full report can still be viewed by Federal employees with special permissions. We confirm the identities of these parties by requiring use of a Login.gov account in order to upload reporting packages. Login.gov is free to use, and has [the highest standards of security](https://login.gov/policy/) to keep our information safe including identity verification and [two-factor authentication](https://login.gov/help/get-started/authentication-methods/).

## How do we ensure data quality and reliability?

Data quality steps are built into each step of the FAC data pipeline, from intake to dissemination to periodic checks and monitoring. We think about data reliability in four distinct timeframes: collection, dissemination, ongoing curation, and periodic monitoring.

## Our Collection

To ensure the data we collect is reliable and consistent, we’ve built multiple levels of validation into the FAC intake system. For more information on how we collect data, visit our [audit resources page](https://www.fac.gov/audit-resources/). Here are the main kinds of validation a user will encounter when submitting an audit report:

1. <b>Web form validations.</b> These validations check that each of the web-based form fields on fac.gov contain the expected inputs. For example, a form validation might ensure phone numbers and dates are entered in the correct format or that required fields are filled out.
2. <b>Built-in workbook validations.</b> Because we collect much of our SF-SAC data via excel workbook, we can take advantage of the built-in data validation features commonly found in spreadsheet software. These validations are designed to help users understand our validation requirements and guide them toward entering the most appropriate information possible. Working with spreadsheets poses some limitations, which means we can’t rely on these validations alone, but they are still a useful tool.
3. <b>Upload validations.</b> When someone uploads a PDF or workbook file to the FAC, we check the file for security issues, completeness, and validity. If the file fails any of these steps, we provide an error message and next steps, but do not allow the file’s contents to proceed. If the file is a workbook, we run it through a more complex validation and either add it to the corresponding audit report or return a list of validation problems that must be resolved.
    * If you are interested in learning more about these more complex validations, you can find additional documentation in our open source GitHub repository [here](https://github.com/GSA-TTS/FAC).
4. <b>Cross validation.</b> Some of our validation checks span multiple workbooks or forms and can only be done after the user has provided a complete set of data. For example, the auditee’s UEI must be the same in every workbook and the total number of findings reported in the federal awards workbook must match the number of entries in the audit findings workbook. These cross-sectional checks must be completed before an audit report can move into the certification and submission phase.
5. <b>Eligibility checks.</b> This category includes other miscellaneous checks to ensure an entity is eligible to submit an audit report and includes elements like UEI validation and verifying the entity spent at least $750,000 during its audit period.

## Dissemination

Before an audit can become searchable (via the FAC’s search tool or API), we have to transform it from a collection of forms and workbooks into a shape that fits our data distribution model. This final step shouldn’t fail as long as the previous validation steps worked as expected, but there is always a chance of things going wrong. Rather than allow inconsistent audits to be disseminated, the FAC is built to reject audits that don’t meet this final validation step, alerting the FAC team to investigate the issue and re-trigger dissemination once it has been resolved.

## Curation and auditable edit checks

While we strongly prefer validating data as it’s submitted, there are a few points in the pipeline where manual intervention may be required. To ensure a clear and auditable history for each record, each manual intervention automatically generates metadata and attaches it to the audit report in question. Below are the manual interventions currently supported by the FAC, each of which generates its own record including, at minimum, a timestamp and the user who initiated the action.

* Manage an audit’s editors and certifying officials.
* Change a user’s permissions.
* Grant a validation waiver. These are special cases where extenuating circumstances prevent an entity from meeting our stringent validation requirements.
* Transform a historical record or allow it to pass unchanged. While migrating historical data into the new FAC system, many records failed to pass validation. Some of these could reasonably be transformed without changing the underlying meaning behind the data while others were either incomplete or couldn’t otherwise be transformed. Each of these has corresponding metadata that describes any transformations or blank fields allowed to pass through the validation pipeline.
* Change a record after it has been accepted and disseminated. This feature is not currently supported, but should be available in the coming months.

Not all of the above curation records and edit checks are publicly available. Some records are for internal purposes and are unrelated to the audits themselves. For the rest, we plan to design and build a publication pipeline in the coming months.

## Monitoring

The FAC has implemented a still-evolving schedule (we’re always improving!) for ongoing manual and automated analysis of our data collection. Our testing is designed to monitor these five essential quality metrics:

* Accuracy
* Completeness
* Consistency
* Validity
* Data Usage

Test frequency varies based upon individual metrics and procedures, with our most frequent tests running on an automated once-weekly basis.

## Continuous Improvement

We’re always working to improve the quality of our data. We ticket known issues or bugs in our product backlog on github as they are discovered; Because these are updated often visiting github is the best way to review our current issues. Please click here to view our product backlog. Once you’ve opened the backlog, select a Roadmap Item from the left hand column (for example: Data Quality) to view all existing tickets associated with that topic. Click on the title of individual tickets for more detail and see what plans we have for remediation. To learn what work we have planned next please view the fac.gov product roadmap at the top of our [Updates page](https://www.fac.gov/updates/).

## Working with data from The FAC

We welcome your questions and feedback via our [Helpdesk](https://support.fac.gov/hc/en-us/requests/new). The FAC help desk is staffed by our own implementation team, so rest assured that this is a reliable and direct way to contact us. We're currently designing more comprehensive instructional materials for working with our data, we appreciate your patience as we determine our best path forward.