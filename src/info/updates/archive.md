---
layout: home.njk
title: Archived updates from the FAC
meta:
  name: Archived updates from the Federal Audit Clearinghouse
  description: Read historical updates from the Federal Audit Clearinghouse.
---

# Archived updates from the FAC

The FAC is committed to working transparently and openly. In addition to [our regular updates](https://www.fac.gov/info/updates/), you can find historical updates below.

<div class="usa-accordion usa-accordion--bordered">
  <h4 class="usa-accordion__heading">
    <button
      type="button"
      class="usa-accordion__button"
      aria-expanded="true"
      aria-controls="b-a1"
    >
      Week of November 20, 2023
    </button>
  </h4>
  <div id="b-a1" class="usa-accordion__content usa-prose">

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
      aria-controls="b-a2"
    >
      Week of October 23, 2023
    </button>
  </h4>
  <div id="b-a2" class="usa-accordion__content usa-prose">

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
      aria-controls="b-a3"
    >
      Week of October 16, 2023
    </button>
  </h4>
  <div id="b-a3" class="usa-accordion__content usa-prose">

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
      aria-controls="b-a4"
    >
      Week of October 9, 2023
    </button>
  </h4>
  <div id="b-a4" class="usa-accordion__content usa-prose">

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
      aria-controls="b-a5"
    >
      Week of September 25, 2023
    </button>
  </h4>
  <div id="b-a5" class="usa-accordion__content usa-prose">

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
</div>
