---
layout: home.njk
title: OMB Announcements
meta:
  name: OMB Announcements
  description: Announcements and deadline information from the Office of Management and Budget.
---

# Announcements

<div
  class="usa-summary-box"
  role="region"
  aria-labelledby="summary-box-key-information">
  <div class="usa-summary-box__body">
    <h4 class="usa-summary-box__heading" id="summary-box-key-information">
OMB is extending the 2023 submission deadline.</h4>
    <div class="usa-summary-box__text">
      <ul class="usa-list">
      {% for announcement in collections.frontpage %}
        {% if "frontpage" in announcement.data.tags %}
          <li>{{ announcement.content | safe }}</li>
        {% endif %}
      {% endfor %}
      </ul>
    </div>
  </div>
</div>