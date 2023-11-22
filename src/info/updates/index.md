---
layout: home.njk
title: Updates from the FAC
meta:
  name: Updates from the Federal Audit Clearinghouse
  description: Stay up-to-date on the FAC transition and read the latest on the single audit process.
include_survey: true
---

# Updates from the FAC

To help you understand our work through the transition, we’ll provide regular updates that talk about the work we’re doing and what’s next. 

The Federal Audit Clearinghouse team works in the open. Our day-to-day task board can be found on [Github](https://github.com/orgs/GSA-TTS/projects/11/views/2) and prior updates are available in [our archive]({{ config.baseUrl }}info/updates/archive).

## Jump to

* [General updates](#general)
* Updates for [grantees and auditors](#grantees-and-auditors)
* Updates for [agencies](#agencies)

## Week of November 20, 2023

*This update is a bit richer given the cancellation of the November office hour for Federal partners.*

We completed the development work necessary to make it possible to unlock audits that had been locked for certification. Auditors and auditees are now able to unlock these audits to make further edits before re-locking for certification.


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
      <th scope="row"><a href=https://github.com/GSA-TTS/FAC/pull/2725>2725</a></th>
      <td>
        Feature
      </td>
      <td>Foundation for historic data migration</td>
    </tr>
    <tr>
      <th scope="row"><a href=https://github.com/GSA-TTS/FAC/pull/2681>2681</a></th>
      <td>
        Feature
      </td>
      <td>Reporting infrastructure rollout</td>
    </tr>
    <tr>
      <th scope="row"><a href=https://github.com/GSA-TTS/FAC/pull/2764>2764</a></th>
      <td>
        Improvement
      </td>
      <td>Fixes to workbook generation for historic data migration</td>
    </tr>
    <tr>
      <th scope="row"><a href=https://github.com/GSA-TTS/FAC/pull/2724>2724</a></th>
      <td>
        Improvement
      </td>
      <td>Improvements to the initial release of search</td>
    </tr>
    <tr>
      <th scope="row"><a href=https://github.com/GSA-TTS/FAC/pull/2734>2734</a></th>
      <td>
        Improvement
      </td>
      <td>Fixes to search on ALNs</td>
    </tr>
    <tr>
      <th scope="row"><a href=https://github.com/GSA-TTS/FAC/pull/2733>2733</a></th>
      <td>
        Improvement
      </td>
      <td>Consistent linking of search from fac.gov and application</td>
    </tr>
    <tr>
      <th scope="row"><a href=https://github.com/GSA-TTS/FAC/pull/2728>2728</a></th>
      <td>
        Improvement
      </td>
      <td>Cleanup of documents regarding product decisions</td>
    </tr>
    <tr>
      <th scope="row"><a href=https://github.com/GSA-TTS/FAC/pull/2683>2683</a></th>
      <td>
        Improvement
      </td>
      <td>Pagination in search results</td>
    </tr>
    <tr>
      <th scope="row"><a href=https://github.com/GSA-TTS/FAC/pull/2663>2663</a></th>
      <td>
        Improvement
      </td>
      <td>Updating privacy ACLs after AWS S3 changes</td>
    </tr>
    <tr>
      <th scope="row"><a href=https://github.com/GSA-TTS/FAC/pull/2642>2642</a></th>
      <td>
        Improvement
      </td>
      <td>Inexact matches on search fields</td>
    </tr>
    <tr>
      <th scope="row"><a href=https://github.com/GSA-TTS/FAC/pull/2651>2651</a></th>
      <td>
        Validation
      </td>
      <td>Placeholder for future workbook version checks</td>
    </tr>
    <tr>
      <th scope="row"><a href=https://github.com/GSA-TTS/FAC/pull/2640>2640</a></th>
      <td>
        Validation
      </td>
      <td>Improved validation around spaces in T3</td>
    </tr>
    <tr>
      <th scope="row"><a href=https://github.com/GSA-TTS/FAC/pull/2766>2766</a></th>
      <td>
        Decision
      </td>
      <td>User permission design for tribal audit access</td>
    </tr>
    <tr>
      <th scope="row"><a href=https://github.com/GSA-TTS/FAC/pull/2749>2749</a></th>
      <td>
        Decision
      </td>
      <td>New process for product decision making</td>
    </tr>
    <tr>
      <th scope="row"><a href=https://github.com/GSA-TTS/FAC/pull/2750>2750</a></th>
      <td>
        Decision
      </td>
      <td>Revision to decision making process</td>
    </tr>
    <tr>
      <th scope="row"><a href=https://github.com/GSA-TTS/FAC/pull/2686>2686</a></th>
      <td>
        Debt
      </td>
      <td>Removed “cms,” unused portions of code</td>
    </tr>
  </tbody>
</table>

### What's next?

#### Tribal data access controls

We have implemented the data access controls that are required to provide data access to Federal users who have a need-to-know for audits from tribes and tribal organizations. We are now loading users into the system, and we will notify NSACs and KSMLs when that is complete.

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



<h2 id="general" >General updates</h3>

{#
Updates are sorted with newest posts at the top. The "date" field in the update's front matter is what we use. The date in the filename is the date we create the file, and is never seen outside of the repo.
#}

<ul>
{% for item in collections.general | sort(true, true, "date") %}
    <li>{{item.content | safe }}</li>
{% endfor %}
</ul>

<h2 id="grantees-and-auditors">For grantees and auditors</h3>
<ul>
{% for item in collections.submitters | sort(true, true, "data.date") %}
    <li>{{item.content | safe }}</li>
{% endfor %}
</ul>


<h2 id="agencies">For Federal awarding agencies</h3>
<ul>
{% for item in collections.federal | sort(true, true, "time") %}
    <li>{{item.content | safe }}</li>
{% endfor %}
</ul>
