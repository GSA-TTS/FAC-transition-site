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
      <th scope="row">Bill of Rights</th>
      <td>
        The first ten amendments of the U.S. Constitution guaranteeing rights
        and freedoms.
      </td>
      <td>1791</td>
    </tr>
    <tr>
      <th scope="row">Declaration of Sentiments</th>
      <td>
        A document written during the Seneca Falls Convention outlining the
        rights that American women should be entitled to as citizens.
      </td>
      <td>1848</td>
    </tr>
    <tr>
      <th scope="row">Emancipation Proclamation</th>
      <td>
        An executive order granting freedom to slaves in designated southern
        states.
      </td>
      <td>1863</td>
    </tr>
  </tbody>
</table>

### Items of note:

### What's next?



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
