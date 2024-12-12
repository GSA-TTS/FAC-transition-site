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

Tribal entities have the option to suppress parts of their single audit report data from our public search results. When a Tribal entity exercises this option, only Federal employees with approved access can search and download this protected information.

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
      <img class="cursor-pointer" src="{{config.baseUrl}}assets/img/{{item.data.image}}" width=400 style="margin-left: 2em; margin-bottom: 2em; float: right; border: 1px solid #555;" aria-controls="image-modal-{{item.data.image}}" data-open-modal />
      {{ image_modal.modal(item.data.image, 'assets/img/' + item.data.image) }}
  {% endif %}
        <h2 id="{{ item.data.title | slugify }}">{{item.data.title}}</h2>

  {{item.content | safe }}
  
  </div>
</div>
  {% endif %}
{% endfor %}
</div>
