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

## Week of October 23, 2023

The FAC participated in the Single Audit Roundtable, providing an update on our work to date and planned next steps, and used the opportunity to discuss pressing needs for auditors, resolution officials, and IGs.

We released the GSA FAC as a minimal viable product. That means we are continuing to work and improve the FAC.

### What we delivered

We work in [an agile manner](https://asana.com/resources/agile-methodology). That means we have a long-term strategy, medium-term features we work to deliver, and make continuous improvement and bug fixes to the existing product. We update our system through pull requests, or PRs.

- Improvements take existing code or text and increase its quality
- Features add new capabilities or documentation to the FAC
- Validations increase the integrity of the data collected or disseminated by the FAC.

During the week of October 16th, the FAC team merged the following PRs that improved, added features to, or improved the validation of data in the system.

<table class="usa-table">
  <caption>
    FAC code releases for the week of Oct. 16, 2023.
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
      <th scope="row"><a href=https://github.com/GSA-TTS/FAC/pull/2569>2569</a></th>
      <td>
        Feature
      </td>
      <td>Add system command for generating test data in production environments</td>
    </tr>
    <tr>
      <th scope="row"><a href=https://github.com/GSA-TTS/FAC/pull/2572>2572</a></th>
      <td>
        Feature
      </td>
      <td>Allow users to unlock submissions once locked</td>
    </tr>
    <tr>
      <th scope="row"><a href=https://github.com/GSA-TTS/FAC/pull/2610>2610</a></th>
      <td>
        Feature
      </td>
      <td>Create backup of media files</td>
    </tr>
    <tr>
      <th scope="row"><a href=https://github.com/GSA-TTS/FAC/pull/2617>2617</a></th>
      <td>
        Feature
      </td>
      <td>Test data for historical data migration</td>
    </tr>
    <tr>
      <th scope="row"><a href=https://github.com/GSA-TTS/FAC/pull/2627>2627</a></th>
      <td>
        Feature
      </td>
      <td>Prepare workbook generator for use in historical migration</td>
    </tr>
    <tr>
      <th scope="row"><a href=https://github.com/GSA-TTS/FAC/pull/2563>2563</a></th>
      <td>
        Improvement
      </td>
      <td>Test data generator improvements to align with data intake checks</td>
    </tr>
    <tr>
      <th scope="row"><a href=https://github.com/GSA-TTS/FAC/pull/2568>2568</a></th>
      <td>
        Improvement
      </td>
      <td>Code simplification in end-to-end test environment</td>
    </tr>
    <tr>
      <th scope="row"><a href=https://github.com/GSA-TTS/FAC/pull/2571>2571</a></th>
      <td>
        Improvement
      </td>
      <td>Improve data generation command for reuse across environments</td>
    </tr>
    <tr>
      <th scope="row"><a href=https://github.com/GSA-TTS/FAC/pull/2595>2595</a></th>
      <td>
        Improvement
      </td>
      <td>Copy improvements and styling for submission unlock</td>
    </tr>
    <tr>
      <th scope="row"><a href=https://github.com/GSA-TTS/FAC/pull/2596>2596</a></th>
      <td>
        Improvement
      </td>
      <td>Remove unused application code</td>
    </tr>
    <tr>
      <th scope="row"><a href=https://github.com/GSA-TTS/FAC/pull/2613>2613</a></th>
      <td>
        Improvement
      </td>
      <td>Fix PDF download infrastructure</td>
    </tr>
    <tr>
      <th scope="row"><a href=https://github.com/GSA-TTS/FAC/pull/2624>2624</a></th>
      <td>
        Improvement
      </td>
      <td>Update software versions for deployment automations</td>
    </tr>
    <tr>
      <th scope="row"><a href=https://github.com/GSA-TTS/FAC/pull/2586>2586</a></th>
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
