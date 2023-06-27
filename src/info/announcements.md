---
layout: home.njk
title: OPM Announcements
meta:
  name: OPM Announcements
  description: Announcements and deadline information from the Office of Personnel Management.
---

# Announcements

<div class="usa-alert usa-alert--info">
  <div class="usa-alert__body">
    <h4 class="usa-alert__heading">In brief</h4>
    <p class="usa-alert__text">
        OPM is extending the 2023 submission deadline
        <ul>
{% for item in collections.general | sort(true, true, "date") %}
    <li>{{item.content | safe }}</li>
{% endfor %}
</ul>.
    </p>
  </div>
</div>