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

## Week of October 30, 2023

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

We’ve released search, and will be continuing to make improvements. We’ll also be focusing on the migration of historical data, and doing some preparatory work to make future work easier.

Our priorities are:
- Adding the ability to add, remove, or change auditors and certifying officials who are attached to the audit.
- Adding the ability to search for and download Tribal audits.
- Adding the ability to bulk download search results.
- Adding the ability to resubmit a previously submitted and completed audit.
- Adding email notifications to alert auditees and auditors that a step is ready for them to complete.

### Opportunities

Do you have an idea that could transform and improve grants management and oversight? 10x, a federal idea accelerator, is [accepting proposals for new investment opportunities](https://10x.gsa.gov/posts/2023-submission-period/). All Federal employees are invited to submit ideas by November 30th.

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
