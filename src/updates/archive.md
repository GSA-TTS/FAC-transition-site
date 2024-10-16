---
layout: home.njk
title: Archived updates from the FAC
meta:
  name: Archived updates from the Federal Audit Clearinghouse
  description: Read historical updates from the Federal Audit Clearinghouse.
---

# Archived updates from the FAC

The FAC is committed to working transparently and openly. In addition to [our regular updates]({{ config.baseUrl }}updates/), you can find historical updates below.

<div class="usa-accordion usa-accordion--bordered">
  <h4 class="usa-accordion__heading">
    <button
      type="button"
      class="usa-accordion__button"
      aria-expanded="true"
      aria-controls="b-may13"
    >
    Week of May 13, 2024
    </button>
  </h4>
  <div id="b-may13" class="usa-accordion__content usa-prose">

## Week of May 13, 2024

### Resubmission

We're continuing to work with our agency partners and OMB on single audit resubmission. We're conducting user interviews with inspectors general and audit resolution officials and consulting with OMB on policy.

### Historical data migration

The team continues to work on a remediation plan for the roughly 1,600 historical audits that failed the initial migration. These audits have a variety of data quality issues that we hope to resolve over the next few sprints

### May code freeze

The FAC will undergo a code freeze from 5/17 - 5/31 to allow for security penetration testing. This testing is a required part of our authority to operate. During this time, we won't be making any updates to the FAC.

</div>
</div>

<div class="usa-accordion usa-accordion--bordered">
  <h4 class="usa-accordion__heading">
    <button
      type="button"
      class="usa-accordion__button"
      aria-expanded="false"
      aria-controls="b-apr15"
    >
    Week of April 15, 2024
    </button>
  </h4>
  <div id="b-apr15" class="usa-accordion__content usa-prose">

## Week of April 15, 2024

### March peak season

The FAC received 5,403 single audit submissions between March 25 and April 1. During this time, [our helpdesk](https://support.fac.gov/hc/en-us/requests/new) resolved more than 400 tickets, most via one-touch and in less than 24 hours.

<div class="grid-container">
    <div class="grid-row">
        <div class="tablet:grid-col"><img src="{{ config.baseUrl }}assets/img/helpdesk/helpdesk_tickets_march.png" alt="bar chart of helpdesk tickets for the last week of March 2024" /></div>
        <div class="tablet:grid-col"><img src="{{ config.baseUrl }}assets/img/helpdesk/helpdesk_response_march.png" alt="bar chart of response times to helpdesk tickets for the last week of March 2024" /></div>
    </div>

As the rate of submissions tapers off, the team is returning its focus to feature delivery and site maintenance.

### Tribal API

Tribal audits are now available to authorized users [via the API]({{ config.baseUrl }}api/tribal). Documentation on this process has been shared with interested agencies. If you would like to learn more about access to the API, please contact the FAC helpdesk.

### Advanced search

At the end of March, we experienced a performance outage for the FAC search. To resolve this, the team created [an advanced search option](https://app.fac.gov/dissemination/search/advanced/) to better serve audit resolution officials. A more [basic search option](https://app.fac.gov/dissemination/search/) is also still available for quicker confirmation of submitted reports.

During the outage, we uploaded [daily findings workbooks]({{ config.baseUrl }}status/findings) to support resolution work. This page will remain available until May.

### What's next?

#### Resubmission

The team is beginning the work on single audit resubmission. We're in the early stages of user interviews to determine the feature requirements. We're also talking with our agency partners about the resubmission process and how its triggered.

#### May code freeze

The FAC will undergo a code freeze from 5/17 - 5/31 to allow for security penetration testing. This testing is a required part of our authority to operate. During this time, we won't be making any updates to the FAC.

</div>
</div>

<h4 class="usa-accordion__heading">
  <button
    type="button"
    class="usa-accordion__button"
    aria-expanded="false"
    aria-controls="b-feb26"
  >
    Week of February 26, 2024
  </button>
</h4>
<div id="b-feb26" class="usa-accordion__content usa-prose">

## Week of February 26, 2024

Our work through the end of February and into March is focused in three areas:

1. Improving search.
2. Improving access to Tribal data.
3. Preparing for the March submission deadline.

### Improving search

We added new search filters, covered in ticket [#3407](https://github.com/GSA-TTS/FAC/issues/3407). These new filters allow for:

1. Searching audits by finding type. 
2. Filtering by direct or passthrough funding.
3. Filtering by whether an audit is on a major program or not.

We're continuing to improve search performance and are tracking our plans in story [#3388](https://github.com/GSA-TTS/FAC/issues/3388). 

 If you encounter issues with any of these new features, please let us know [via the FAC helpdesk](https://support.fac.gov/hc/en-us/requests/new).

### Improving access to Tribal data

We're reviewing ticket [#2298](https://github.com/GSA-TTS/FAC/issues/2298). This will make Tribal data available to Federal partners via the FAC API. The team is also close to completing ticket [#3331](https://github.com/GSA-TTS/FAC/issues/3331), which will make the public portion of Tribal audits appropriately visible in search.

### March submission deadline

It's possible to [use the FAC API](https://github.com/GSA-TTS/fac-api-examples/tree/main/count-march-submissions) to predict what is coming in March. Here are plots of the submissions-per-day to the FAC from March of 2016 through 2022.

<div class="grid-container">
    <div class="grid-row">
        <div class="tablet:grid-col"><img src="{{ config.baseUrl }}assets/img/updates/submissions-in-2016.png" alt="Histogram of submissions in 2016" /></div>
        <div class="tablet:grid-col"><img src="{{ config.baseUrl }}assets/img/updates/submissions-in-2017.png" alt="Histogram of submissions in 2017" /></div>
        <div class="tablet:grid-col"><img src="{{ config.baseUrl }}assets/img/updates/submissions-in-2018.png" alt="Histogram of submissions in 2018" /></div>
        <div class="tablet:grid-col"><img src="{{ config.baseUrl }}assets/img/updates/submissions-in-2019.png" alt="Histogram of submissions in 2019" /></div>
    </div>
    <div class="grid-row">
        <div class="tablet:grid-col"><img src="{{ config.baseUrl }}assets/img/updates/submissions-in-2020.png" alt="Histogram of submissions in 2020" /></div>
        <div class="tablet:grid-col"><img src="{{ config.baseUrl }}assets/img/updates/submissions-in-2021.png" alt="Histogram of submissions in 2021" /></div>
        <div class="tablet:grid-col"><img src="{{ config.baseUrl }}assets/img/updates/submissions-in-2022.png" alt="Histogram of submissions in 2022" /></div>
        <div class="tablet:grid-col"></div>
    </div>
</div>

The Clearinghouse typically sees between 700 and 900 audit submissions per day at the end of March. In 2022, the Census Bureau saw close to 2000 audits submitted in one day.

We're doing many things to prepare for this submission volume. Since our launch, we've run two "copies" of the FAC to handle submissions. This means that, if two people are uploading audits to the FAC, one might get "FAC 1," and the other "FAC 2," so they both experience good web performance. As we go into March, we are increasing that number to 10, and can double that to 20 if necessary. This way, if 10 people are uploading data at the same time, they will each experience the same level of performance.

This is possible because the FAC is built on top of technologies like [cloud.gov](https://cloud.gov) and [Login.gov](https://login.gov).

### What's next?

We're keeping our focus on March. Looking ahead to the next few months, we'll be:

- Focusing on performance improvements and growing our team’s capacity for user support.

- Providing documentation on the migration of historical and how to use it.

- Improving search to support Federal oversight work and the public’s use of FAC data.

</div>

<h4 class="usa-accordion__heading">
  <button
    type="button"
    class="usa-accordion__button"
    aria-expanded="false"
    aria-controls="b-feb5"
  >
    Week of February 5, 2024
  </button>
</h4>
<div id="b-feb5" class="usa-accordion__content usa-prose">

The team has been focused on completing a migration of data from Census to GSA. This update covers mid-December to the current week.

### Historic data transfer

**Single Audit submissions from 2016–present are now available from the GSA FAC, and the Census Bureau is shutting down their data distribution.** Single Audits from prior years will appear in our search results. This is a major milestone, and future work will involve documenting the data migration, our continued curation of this data, and improvements to how this data is queried and used.

The migration caused some disruptions to service. With 10 times more data, our system has struggled to keep up with volume for some of our search filters. The most affected filter is the ALN search. Results for this filter show whether an audit contains findings (“Findings My ALN/Findings Other ALN”). Before the migration, this filter applied to small amounts of data, but after adding prior years, this began crashing the system. We've removed this feature to resolve the system strain. Our team is working on a replacement feature to handle the larger amount of data.

### What we delivered

We work in [an agile manner](https://asana.com/resources/agile-methodology). That means we have a long-term strategy, medium-term features we work to deliver, and make continuous improvement and bug fixes to the existing product. 

#### Customer experience
We achieved “helpdesk zero” in the last week of January. We had no questions come in on a workday, and we emptied our queue so we had no support questions left to answer. We have continued to empty our question queue on a near-daily basis.

The team currently replies to a ticket within 1.5 hours of receipt, and closes 75% of tickets within 8 hours. The helpdesk remains an excellent place to get timely support.

#### UX/Design

We completed user testing on navigation changes for [FAC.gov]({{ config.baseUrl }}). This validated a new site structure that will be easier for users to navigate.

The team finalized a research plan around audit resolution work. We began interviews with audit resolution officials, IG offices, and other users.

#### Submission improvements

We made multiple improvements to the submission experience. We use research and interviews with our users, as well as issues reported in the helpdesk, to guide this work.

- Added an SF-SAC summary report, allowing users to review the form data for in-progress and completed audits (PR [3025](https://github.com/GSA-TTS/FAC/pull/3025)).

- Significantly sped up PDF validation (PR [3057](https://github.com/GSA-TTS/FAC/pull/3057)).

- Submitters can now unlock an in-progress audit anytime up to the time of final submission (PR [3136](https://github.com/GSA-TTS/FAC/pull/3136)).

- Synchronization fixes between the audit state and submission checklist (PR [3144](https://github.com/GSA-TTS/FAC/pull/3144)).

- Users no longer have to log out and back in for changes to user access (e.g. changing the Auditee Certifying Official email address) to take effect. (PR [3194](https://github.com/GSA-TTS/FAC/pull/3194)). 

- Simplified the submission checklist after an audit is validated and locked for certification. (PR [3197](https://github.com/GSA-TTS/FAC/pull/3197)).

- Improved validations regarding reference numbers (PR [3221](https://github.com/GSA-TTS/FAC/pull/3221)).

- Added the ability to download Audit Report Packages and the SF-SAC for in-progress review (PR [3212](https://github.com/GSA-TTS/FAC/pull/3212)).

- Many search performance improvements (PR [3283](https://github.com/GSA-TTS/FAC/pull/3283)).

- Fixes around our new “testing” banner and pre-certification report generation (PRs [3261](https://github.com/GSA-TTS/FAC/pull/3261), [3326](https://github.com/GSA-TTS/FAC/pull/3326), [3333](https://github.com/GSA-TTS/FAC/pull/3333)).

- Improved validation error reporting around ALNs (PR [3230](https://github.com/GSA-TTS/FAC/pull/3230)). 

- Improved validation and error reporting around empty/zero loan balances (PR [3335](https://github.com/GSA-TTS/FAC/pull/3335)).

#### Intake, Search, and API

We also made multiple improvements to the audit search experience.

- A small update to SF-SAC summary exports (PR [3296](https://github.com/GSA-TTS/FAC/pull/3296)) that adds ALNs to the Federal Awards sheet.

- Fixed a performance bug within the FAC API (PR [3355](https://github.com/GSA-TTS/FAC/pull/3355)).

### What's next?

We're anticipating March to be a busy month. To support this, we'll be:

- **Focusing on performance improvements** and growing our team’s capacity for user support so that the auditors and auditees are well-supported during this time.

- **Providing documentation** regarding the migration of Census data to GSA and how to use it effectively.

- **Improving search**, both to support Federal oversight work as well as the public’s experience with FAC data.

- **Adding Tribal data access to the API** (PR [3359](https://github.com/GSA-TTS/FAC/pull/3359)) and writing documentation and legal agreements to accompany it.

</div>

  <h4 class="usa-accordion__heading">
    <button
      type="button"
      class="usa-accordion__button"
      aria-expanded="false"
      aria-controls="b-a1"
    >
      Week of December 18, 2023
    </button>
  </h4>
  <div id="b-a1" class="usa-accordion__content usa-prose">

This week we've made improvements to user access roles, search results, and Tribal data access.

### What we delivered

We work in [an agile manner](https://asana.com/resources/agile-methodology). That means we have a long-term strategy, medium-term features we work to deliver, and make continuous improvement and bug fixes to the existing product. 

#### Audit access management

We improved [the user access experience]({{ config.baseUrl }}resources/instructions/user-access) for single audits. Users can now change both the auditor and auditee certifying official for a submission and add new audit editors. 

Future improvements will allow for the removal of other contributors to a submission.

#### Search improvements

We added the ability to filter search results by auditee state. We also enhanced the results returned by the ALN filter, making it possible to see if a submission includes audit findings.

#### Tribal data access controls

We have implemented [access controls for Tribal audit data]({{ config.baseUrl }}data/tribal), and notified NSACs and KMSALs. This data will now appear in searches for logged in Federal users who have access.

#### Summary reports 

We added the ability to download a summary report for an individual single audit submission. This combines all data from a single SF-SAC into one Excel document.

#### Pre-certification review

Auditors and auditees can now review a submission after it is validated and locked, but before it is certified.

### What's next?

#### Historic data migration

We continue to work with Census on the migration of historic data.

</div>

  <h4 class="usa-accordion__heading">
    <button
      type="button"
      class="usa-accordion__button"
      aria-expanded="false"
      aria-controls="b-a2"
    >
      Week of November 20, 2023
    </button>
  </h4>
  <div id="b-a2" class="usa-accordion__content usa-prose">

  *This update is a bit richer given the cancellation of the November office hour for Federal partners.*

We completed the development work necessary to make it possible to unlock audits that had been locked for certification. Auditors and auditees are now able to unlock these audits to make further edits before re-locking for certification.

### What we delivered

We work in [an agile manner](https://asana.com/resources/agile-methodology). That means we have a long-term strategy, medium-term features we work to deliver, and make continuous improvement and bug fixes to the existing product. We update our system through pull requests, or PRs.

#### Tribal data access controls

We have implemented the data access controls that are required to provide data access to Federal users who have a need-to-know for audits from tribes and tribal organizations. We are now loading users into the system, and we will notify NSACs and KSMLs when that is complete.

### What's next?

#### Historic data migration

We're charged with improving the quality of the data the FAC collects and disseminates. This is challenging but critical work that is necessary if we want the SF-SAC data to be meaningful for oversight. Because of this, we're approaching the migration of historical data from Census as an exercise in data improvement.

We believe it is important for users of FAC data to understand how we're carrying out this work. For today, this is the summary of our process.

1. **Copy.** We have to transfer terabytes of databases and more than 650,000 files from Census to GSA. 

1. **Analyze.** The data is not perfect. The GSA team needs to understand all the ways that the data does, and doesn’t, meet our new validation standards.

1. **Migrate.** We’ll begin by migrating 2022 data. Our team will use the Census data to construct “virtual submissions” to the FAC. Doing this will apply all of our integrity checks, confirming the data coming in is of the highest quality. 

1. **Record Changes.** As we migrate the data, some things might have to be changed. For example, date formats might change. Anything that changes as part of the migration will be recorded.

1. **Record Failures.** Many of these “virtual submissions” will fail to pass our new integrity checks. We'll keep track of them, and set them aside.

1. **Adjust.** We'll go back to step 2, looking at only the records that failed to migrate. We'll then adjust how we are migrating the data so that we can transfer more historical submissions.

1. **Repeat.** We'll repeat steps 2-6 until we have migrated the submissions from 2022.

Our initial goal is to migrate the last 5 years of data with the highest possible integrity. This will improve the quality of the FAC data and create a public record of the migration. 

We're highlighting this process for two reasons:

1. **The data migration is about data integrity.** This work is about improving the integrity of historical FAC data.

1. **The data migration is iterative.** This is not a singular, massive migration of data. It's a sequence of small migrations. 

We'll write more about the migration in the future, and documentation about the migration as a whole is part of what we'll deliver with this work.

#### Other priorities

The historical data migration occupies a lot of our team’s time. However, we are also working on bug fixes, infrastructure, and a few features that we know are important to public and Federal users. Our current feature priorities as we close out 2023 are:

- Adding the ability to add, remove, or change auditors and certifying officials who are attached to the audit.

- Adding the ability to search for single audits by auditee state.

- Improving the visibility of findings on audits.

- Providing summary reports for both single audit submissions and for all results of a search.

</div>

<h4 class="usa-accordion__heading">
    <button
      type="button"
      class="usa-accordion__button"
      aria-expanded="false"
      aria-controls="b-a3"
    >
      Week of October 20, 2023
    </button>
  </h4>
  <div id="b-a3" class="usa-accordion__content usa-prose">

We launched search and are ready for users to begin searching single audit reports. This initial iteration of search leverages six different filters for sorting data.

### What we delivered

We work in [an agile manner](https://asana.com/resources/agile-methodology). That means we have a long-term strategy, medium-term features we work to deliver, and make continuous improvement and bug fixes to the existing product. We update our system through pull requests, or PRs.

- Features add new capabilities or documentation to the FAC.
- Improvements take existing code or text and increase its quality.
- Validations increase the integrity of the data collected or disseminated by the FAC.
- Decision records chart our product planning and decision making process.
- Debt payment removes, cleans up, or otherwise improves existing code.

<table class="usa-table">
  <caption>
    FAC feature additions, system improvements, and data validations for the week of October 30, 2023.
  </caption>
  <thead>
    <tr>
      <th scope="col">PR</th>
      <th scope="col">Type</th>
      <th scope="col">Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row"><a href="https://github.com/GSA-TTS/FAC/pull/2725">2725</a></th>
      <td>
        Feature
      </td>
      <td>Foundation for historic data migration</td>
    </tr>
    <tr>
      <th scope="row"><a href="https://github.com/GSA-TTS/FAC/pull/2681">2681</a></th>
      <td>
        Feature
      </td>
      <td>Reporting infrastructure rollout</td>
    </tr>
    <tr>
      <th scope="row"><a href="https://github.com/GSA-TTS/FAC/pull/2764">2764</a></th>
      <td>
        Improvement
      </td>
      <td>Fixes to workbook generation for historic data migration</td>
    </tr>
    <tr>
      <th scope="row"><a href="https://github.com/GSA-TTS/FAC/pull/2724">2724</a></th>
      <td>
        Improvement
      </td>
      <td>Improvements to the initial release of search</td>
    </tr>
    <tr>
      <th scope="row"><a href="https://github.com/GSA-TTS/FAC/pull/2734">2734</a></th>
      <td>
        Improvement
      </td>
      <td>Fixes to search on ALNs</td>
    </tr>
    <tr>
      <th scope="row"><a href="https://github.com/GSA-TTS/FAC/pull/2733">2733</a></th>
      <td>
        Improvement
      </td>
      <td>Consistent linking of search from fac.gov and application</td>
    </tr>
    <tr>
      <th scope="row"><a href="https://github.com/GSA-TTS/FAC/pull/2728">2728</a></th>
      <td>
        Improvement
      </td>
      <td>Cleanup of documents regarding product decisions</td>
    </tr>
    <tr>
      <th scope="row"><a href="https://github.com/GSA-TTS/FAC/pull/2683">2683</a></th>
      <td>
        Improvement
      </td>
      <td>Pagination in search results</td>
    </tr>
    <tr>
      <th scope="row"><a href="https://github.com/GSA-TTS/FAC/pull/2663">2663</a></th>
      <td>
        Improvement
      </td>
      <td>Updating privacy ACLs after AWS S3 changes</td>
    </tr>
    <tr>
      <th scope="row"><a href="https://github.com/GSA-TTS/FAC/pull/2642">2642</a></th>
      <td>
        Improvement
      </td>
      <td>Inexact matches on search fields</td>
    </tr>
    <tr>
      <th scope="row"><a href="https://github.com/GSA-TTS/FAC/pull/2651">2651</a></th>
      <td>
        Validation
      </td>
      <td>Placeholder for future workbook version checks</td>
    </tr>
    <tr>
      <th scope="row"><a href="https://github.com/GSA-TTS/FAC/pull/2640">2640</a></th>
      <td>
        Validation
      </td>
      <td>Improved validation around spaces in T3</td>
    </tr>
    <tr>
      <th scope="row"><a href="https://github.com/GSA-TTS/FAC/pull/2766">2766</a></th>
      <td>
        Decision
      </td>
      <td>User permission design for tribal audit access</td>
    </tr>
    <tr>
      <th scope="row"><a href="https://github.com/GSA-TTS/FAC/pull/2749">2749</a></th>
      <td>
        Decision
      </td>
      <td>New process for product decision making</td>
    </tr>
    <tr>
      <th scope="row"><a href="https://github.com/GSA-TTS/FAC/pull/2750">2750</a></th>
      <td>
        Decision
      </td>
      <td>Revision to decision making process</td>
    </tr>
    <tr>
      <th scope="row"><a href="https://github.com/GSA-TTS/FAC/pull/2686">2686</a></th>
      <td>
        Debt
      </td>
      <td>Removed “cms,” unused portions of code</td>
    </tr>
  </tbody>
</table>

### What's next?

We’ve released search, and will be continuing to make improvements. We’ll also be focusing on the migration of historical data, and doing some preparatory work to make future work easier.

Our priorities are:
- Adding the ability to add, remove, or change auditors and certifying officials who are attached to the audit.
- Adding the ability to search for and download Tribal audits.
- Adding the ability to bulk download search results.
- Adding the ability to resubmit a previously submitted and completed audit.
- Adding email notifications to alert auditees and auditors that a step is ready for them to complete.

### Opportunities

Do you have an idea that could transform and improve grants management and oversight? 10x, a federal idea accelerator, is [accepting proposals for new investment opportunities](https://10x.gsa.gov/posts/2023-submission-period/). All Federal employees are invited to submit ideas by November 30th.
  
  </div>

  <h4 class="usa-accordion__heading">
    <button
      type="button"
      class="usa-accordion__button"
      aria-expanded="false"
      aria-controls="b-a4"
    >
      Week of October 23, 2023
    </button>
  </h4>
  <div id="b-a4" class="usa-accordion__content usa-prose">

The FAC participated in the Single Audit Roundtable, providing an update on our work to date and planned next steps, and used the opportunity to discuss pressing needs for auditors, resolution officials, and IGs.

We released the GSA FAC as a minimal viable product. That means we are continuing to work and improve the FAC.

### What we delivered

We work in [an agile manner](https://asana.com/resources/agile-methodology). That means we have a long-term strategy, medium-term features we work to deliver, and make continuous improvement and bug fixes to the existing product. We update our system through pull requests, or PRs.

- Features add new capabilities or documentation to the FAC
- Improvements take existing code or text and increase its quality
- Validations increase the integrity of the data collected or disseminated by the FAC.

<table class="usa-table">
  <caption>
    FAC feature additions, system improvements, and data validations for the week of October 16, 2023.
  </caption>
  <thead>
    <tr>
      <th scope="col">PR</th>
      <th scope="col">Type</th>
      <th scope="col">Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row"><a href="https://github.com/GSA-TTS/FAC/pull/2569">2569</a></th>
      <td>
        Feature
      </td>
      <td>Add system command for generating test data in production environments</td>
    </tr>
    <tr>
      <th scope="row"><a href="https://github.com/GSA-TTS/FAC/pull/2572">2572</a></th>
      <td>
        Feature
      </td>
      <td>Allow users to unlock submissions once locked</td>
    </tr>
    <tr>
      <th scope="row"><a href="https://github.com/GSA-TTS/FAC/pull/2610">2610</a></th>
      <td>
        Feature
      </td>
      <td>Create backup of media files</td>
    </tr>
    <tr>
      <th scope="row"><a href="https://github.com/GSA-TTS/FAC/pull/2617">2617</a></th>
      <td>
        Feature
      </td>
      <td>Test data for historical data migration</td>
    </tr>
    <tr>
      <th scope="row"><a href="https://github.com/GSA-TTS/FAC/pull/2627">2627</a></th>
      <td>
        Feature
      </td>
      <td>Prepare workbook generator for use in historical migration</td>
    </tr>
    <tr>
      <th scope="row"><a href="https://github.com/GSA-TTS/FAC/pull/2563">2563</a></th>
      <td>
        Improvement
      </td>
      <td>Test data generator improvements to align with data intake checks</td>
    </tr>
    <tr>
      <th scope="row"><a href="https://github.com/GSA-TTS/FAC/pull/2568">2568</a></th>
      <td>
        Improvement
      </td>
      <td>Code simplification in end-to-end test environment</td>
    </tr>
    <tr>
      <th scope="row"><a href="https://github.com/GSA-TTS/FAC/pull/2571">2571</a></th>
      <td>
        Improvement
      </td>
      <td>Improve data generation command for reuse across environments</td>
    </tr>
    <tr>
      <th scope="row"><a href="https://github.com/GSA-TTS/FAC/pull/2595">2595</a></th>
      <td>
        Improvement
      </td>
      <td>Copy improvements and styling for submission unlock</td>
    </tr>
    <tr>
      <th scope="row"><a href="https://github.com/GSA-TTS/FAC/pull/2596">2596</a></th>
      <td>
        Improvement
      </td>
      <td>Remove unused application code</td>
    </tr>
    <tr>
      <th scope="row"><a href="https://github.com/GSA-TTS/FAC/pull/2613">2613</a></th>
      <td>
        Improvement
      </td>
      <td>Fix PDF download infrastructure</td>
    </tr>
    <tr>
      <th scope="row"><a href="https://github.com/GSA-TTS/FAC/pull/2624">2624</a></th>
      <td>
        Improvement
      </td>
      <td>Update software versions for deployment automations</td>
    </tr>
    <tr>
      <th scope="row"><a href="https://github.com/GSA-TTS/FAC/pull/2586">2586</a></th>
      <td>
        Validation
      </td>
      <td>Assert all data ranges expected are present in workbooks</td>
    </tr>
  </tbody>
</table>

### Challenges

We encountered a bug on Friday, October 27th. This is not a bug in our software, but in one of our support systems. We are working with our systems providers to understand this bug and resolve it. Until it is resolved, we have to slow releases into our production environment. **This bug does not impact data quality or the current operation of the FAC.**

### What's next?

We are currently working on [search](https://github.com/GSA-TTS/FAC/issues/2236). We have a version ready for release, but are unable to promote it to production due to underlying system issues. Search includes the ability to download PDFs, both via the website and API.

After releasing search, our priorities are:
- Adding the ability to add, remove, or change auditors and certifying officials who are attached to the audit.
- Adding the ability to search for and download Tribal audits.
- Adding the ability to resubmit a previously submitted and completed audit.
- Adding email notifications to alert auditees and auditors that a step is ready for them to complete.
- Adding the ability to bulk download search results.

### Opportunities

Do you have an idea that could transform and improve grants management and oversight? 10x, a federal idea accelerator, is [accepting proposals for new investment opportunities](https://10x.gsa.gov/posts/2023-submission-period/). All Federal employees are invited to submit ideas by November 30th.
  
  </div>
  
  <h4 class="usa-accordion__heading">
    <button
      type="button"
      class="usa-accordion__button"
      aria-expanded="false"
      aria-controls="b-a5"
    >
      Week of October 16, 2023
    </button>
  </h4>
  <div id="b-a5" class="usa-accordion__content usa-prose">

We released the GSA FAC as a minimal viable product. That means we are continuing to work and improve the FAC. We work in [an agile manner](https://asana.com/resources/agile-methodology).

### Items of note:

- All UEIs are validating.
- We made significant improvements to workbook validations and their associated instructions.

If you previously encountered challenges submitting your workbooks, we recommend you try again.

### What's next?

We are currently working on [search](https://github.com/GSA-TTS/FAC/issues/2236). We hope to demonstrate a prototype to Federal partners this week for early feedback. We anticipate having the ability to search for and download audits by the end of October.

Our pending feature priorities are:
- Adding the ability to unlock audit submissions to edit and then re-lock for certification instead of starting a new submission.
- Adding the ability to add, remove, or change auditors and certifying officials who are attached to the audit.
- Adding the ability to resubmit a previously submitted and completed audit.
- Adding email notifications to alert auditees and auditors that a step is ready for them to complete.
  
  </div>

  <h4 class="usa-accordion__heading">
    <button
      type="button"
      class="usa-accordion__button"
      aria-expanded="false"
      aria-controls="b-a6"
    >
      Week of October 9, 2023
    </button>
  </h4>
  <div id="b-a6" class="usa-accordion__content usa-prose">

We released the GSA FAC as a minimal viable product. That means we are continuing to work and improve the FAC. We work in [an agile manner](https://asana.com/resources/agile-methodology).

The GSA FAC team worked to minimize change between submission systems. We have worked closely with auditors, auditees, and Federal users to achieve this.

### Items of note:

- We've updated [our UEI validation criteria](https://support.fac.gov/hc/en-us/articles/20299116907149-UEI-validation) to only require that an entity's UEI exists. This should reduce the number of UEI errors users experience.
- We know some users have found the error messages for workbook validation confusing. We are working to improve these messages.

### What's next?

We know that not every tool you are used to is currently available, and we are working quickly to add features in the coming months.

Our goal is to be transparent and share our areas of focus. You can see what features are coming up in [our backlog](https://github.com/orgs/GSA-TTS/projects/13/views/1). 

We are currently working on [search](https://github.com/GSA-TTS/FAC/issues/2236). This will give Federal and public users the ability to find and download completed audits. Our goal is to have a first version of search and download available by the end of October.

Our other feature priorities are:
- Adding the ability to unlock audit submissions to edit and then re-lock for certification instead of starting a new submission.
- Adding the ability to add, remove, or change auditors and certifying officials who are attached to the audit.
- Adding the ability to resubmit a previously submitted and completed audit.
- Adding email notifications to alert auditees and auditors that a step is ready for them to complete.
  
  </div>

  <h4 class="usa-accordion__heading">
    <button
      type="button"
      class="usa-accordion__button"
      aria-expanded="false"
      aria-controls="b-a7"
    >
      Week of September 25, 2023
    </button>
  </h4>
  <div id="b-a7" class="usa-accordion__content usa-prose">

We're excited to see completed audits coming in and data exporting via the FAC API. That said, we know there have been some issues. We're doing our best to provide help center support for those as fast as possible.

### Items of note:

- Some auditors and auditees experienced errors when trying to validate their UEIs. We identified the cause of the issue with sam.gov and believe we have implemented a fix.
- We are now collecting single audit submissions from Indian Tribes and Tribal organizations.
- Our engineering team improved workbook validations and addressed a bug in the FAC API.

### What's next?

We know that not every tool you are used to is currently available, and we are working quickly to add features in the coming months.

Our goal is to be transparent and share our areas of focus. You can see what features are coming up in [our backlog](https://github.com/orgs/GSA-TTS/projects/13/views/1). 

We are currently working on [search](https://github.com/GSA-TTS/FAC/issues/2236). This will give Federal and public users the ability to find and download completed audits. We track our [day-to-day work on our task board](https://github.com/orgs/GSA-TTS/projects/11).
 
  </div>


