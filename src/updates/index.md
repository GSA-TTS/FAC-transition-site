---
layout: home.njk
title: Updates from the FAC
meta:
  name: Updates from the Federal Audit Clearinghouse
  description: Stay up-to-date on the FAC transition and read the latest on the single audit process.
include_survey: true
---

# Updates from the FAC

To help you understand our work, we’ll provide regular updates on the work we’re doing and what’s next. 

The Federal Audit Clearinghouse team works in the open. Our day-to-day task board can be found on [Github](https://github.com/orgs/GSA-TTS/projects/11/views/2) and prior updates are available in [our archive]({{ config.baseUrl }}updates/archive).

## Jump to

* [General updates](#general)
* Updates for [grantees and auditors](#grantees-and-auditors)
* Updates for [agencies](#agencies)

## Week of June 3

### Security testing

The FAC completed our compliance-required security testing earlier this month and received a positive report from our oversight body. With this testing complete, the FAC has now done the majority of our Authorization to Operate (ATO) assessment. We're now working with our assessment team to complete the remaining documentation requirements. The ATO process identifies areas of potential security risk and ensures we've taken steps to reduce or eliminate those risks. It also documents our policies for keeping the FAC up-to-date. You can read more about the ATO process on [digital.gov](http://digital.gov/).

### Historical data migration

The team is closing in on final remediation for the historical audits that failed initial migration. These audits have a variety of data quality issues that don't meet the FAC's validation standards. For example, some historical audits are missing contact information for certifying officials; others incorrectly report total federal program expenditures. We follow a standardized process to address each of these issues. First, we describe the issue and analyze its prevalence in the dataset. Next, the team brainstorms ways to fix the issue, such as calculating the correct total for a summary field or using a placeholder value where information is missing. Finally, we apply the remediation to the problematic data. If you would like to learn more, visit [this GitHub issue](https://github.com/GSA-TTS/FAC/issues/3364) where we are tracking the work.

### Fixes and improvements

While the ATO team conducted the security testing, our engineering team continued to work on bug fixes and other site improvements. In the last month, the team:
- added a timer to the search results page
- improved accessibility testing
- fixed a bug related to sorting search results by cog/over

For more information on these fixes and more, see [the FAC's June 6th release](https://github.com/GSA-TTS/FAC/releases/tag/v1.20240606).

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
