---
layout: home.njk
title: OMB Announcements
meta:
  name: OMB Announcements
  description: Announcements and deadline information from the Office of Management and Budget.
eleventyComputed:
  eleventyNavigation:
    key: OMB announcements
    parent: Home
---

# OMB Announcements

The Office of Management and Budget (OMB) sets the policy for single audit submissions and their deadlines. The announcements below are in effect; for historic decisions, view [our archive]({{ config.baseUrl }}omb/archive).

<div
  class="usa-summary-box"
  role="region"
  aria-labelledby="summary-box-key-information">
  <div class="usa-summary-box__body">
    <div class="usa-summary-box__text">
      <ul>
      {% for announcement in collections.omb %}
          <li>{{ announcement.content | safe }}</li>
      {% endfor %}
      </ul>
    </div>
  </div>
</div>