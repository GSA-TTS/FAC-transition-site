---
layout: home.njk
title: Tribal audit submissions
meta:
  name: Tribal audit submissions
  description: Learn how to log in to access Tribal audit data from the Federal Audit Clearinghouse
terms:
  cfac: Census FAC
  cfac_url: https://facweb.census.gov/
  gfac: GSA FAC
  gfac_url: https://fac.gov/
include_survey: true
eleventyComputed:
  eleventyNavigation:
    key: Tribal audits
    parent: Home
---
{% import "components/image_modal.njk" as image_modal with context %}

# Searching Tribal audit submissions

Tribal entities have the option to suppress certain parts of their single audit report data from public access. When a Tribal entity exercises this option, the following information is not available through the FAC's public search:

- Notes to the Schedule of Expenditures of Federal Awards (SEFA)
- Audit finding text
- Corrective action plan text
- The audit report PDF

Other information from the submission remains publicly available and will appear in a regular FAC search. Federal employees with approved access can view and download the suppressed information.

## What does 'is_public' mean in the API?

The /general API endpoint includes an is_public field. For a Tribal entity that has chosen to suppress its audit data, is_public is set to False.

An is_public value of False does not mean that the entire submission is hidden from public search or from the public API. The submission and its nonsuppressed data remain publicly available. It means that the protected portions listed above, including the audit report PDF, are not publicly available.

Federal employees with approved access can view and download the suppressed information.

# Federal access to Tribal suppressed data
If you are a Federal employee who needs access to Tribal data via our [web search](https://app.fac.gov/dissemination/search/), please contact your agency's National Single Audit Coordinator (NSAC) or Key Single Audit Management Liaison (KSAML) and ask them to email their written approval to [*support@fac-gov.zendesk.com*](mailto:support@fac-gov.zendesk.com). Once we’ve received their confirmation we will add you to the list of approved users.

To access this suppressed data via our API your agency must request and submit a copy of the Tribal Data API Access Attestation form via the [FAC Helpdesk](https://support.fac.gov/hc/en-us/requests/new). Please visit our [Tribal API page](https://www.fac.gov/api/tribal/) for more information.  

Once you’ve gained access, here is how to search for suppressed Tribal audits via our [web search](https://app.fac.gov/dissemination/search/):

<ol>
{% for item in collections.tribal | sortAscendingByName %}
  {% if item.data.title | length %}
  <li>
    <a href="#{{item.data.title | slugify }}">{{item.data.title}}</a>
  </li>
  {% endif %}
{% endfor %}

<div class="grid-container">

{% for item in collections.tribal | sortAscendingByName %}

  {% if item.data.title | length %}

    <div class="grid-row">
      <div class="grid-col-12 margin-top-8">

  {% if item.data.image %}
      <img class="cursor-pointer" src="{{config.baseUrl}}assets/img/{{item.data.image}}" alt="{{item.data.image_alt}}" width=400 style="margin-left: 2em; margin-bottom: 2em; float: right; border: 1px solid #555;" aria-controls="image-modal-{{item.data.image}}" data-open-modal />
      {{ image_modal.modal(item.data.image, 'assets/img/' + item.data.image, item.data.image_alt) }}
  {% endif %}
        <h2 id="{{ item.data.title | slugify }}">{{item.data.title}}</h2>

  {{item.content | safe }}
  
  </div>
</div>
  {% endif %}
{% endfor %}
</div>
