---
layout: home.njk
title: The Federal Audit Clearinghouse transition
meta:
  name: The Federal Audit Clearinghouse transition
  description: The Federal Audit Clearinghouse is transitioning from the Census to GSA in October, 2023.
---

# The FAC transition

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

## Ready to file?

To <a href="https://facweb.census.gov/uploadpdf.aspx">file your 2022 audits</a> and to <a href="https://facdissem.census.gov/Main.aspx">download 2022 and earlier data</a>, visit the current Federal Audit Clearinghouse page on [census.gov's website](https://facweb.census.gov/uploadpdf.aspx).  

## Updates

We provide regular [FAC updates for federal staff as well as grantees and auditors](updates/).

## See the FAC

We have [an overview of the FAC process for grantees and auditors](walkthrough/).


<!-- 
Stay up-to-date on the progress of the fac.gov transition by signing up for our monthly newsletter.
-->

<!-- 
* AmeriCorps is the first external partner to use the new data dissemination API built by our FAC engineers.
* We've introduced [GitHub FAC Discussions](https://github.com/GSA-TTS/FAC/discussions) to communicate with developers who are using the FAC API in their work. The GitHub site is primarily for a tech audience to ask questions, share ideas, and engage with other community members. It's open to federal employees and contractors. Be sure to review and abide by the code of conduct.
* We're wrapping up user research with Audit Resolution Officials, where we interviewed 18 individuals from 12 different agencies. The conversations were invaluable and provided insights into how FAC's data dissemination tools are being used and will help guide our future design processes.
* We're working with grantee and audit organizations like the American Institute of Certified Public Accountants, the National Association of State Auditors, Comptrollers and Treasurers, the National Grants Management Association, and GRANTS.GOV to keep all stakeholders informed regarding the FAC transition.

You can also read more from the project team on [our GitHub repository](https://github.com/GSA-TTS/FAC/wiki) or on this website.
-->
