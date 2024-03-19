---
layout: home.njk
title: Archived OMB announcements
meta:
  name: OMB announcements
  description: Historical announcements and deadline information from the Office of Management and Budget.
---

# Archived OMB announcements

View archived updates on single audit submission policies and deadlines from OMB below.

<div
  class="usa-summary-box"
  role="region"
  aria-labelledby="summary-box-key-information">
  <div class="usa-summary-box__body">
    <div class="usa-summary-box__text">
      <ul class="usa-list">
      {% for announcement in collections.archive %}
          <li>{{ announcement.content | safe }}</li>
      {% endfor %}
      </ul>
    </div>
  </div>
</div>