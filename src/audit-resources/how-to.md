---
layout: home.njk
title: FAC Audit Submission Guide
meta:
  name: FAC Audit Submission Guide
  description: Walkthrough the new single audit submission process and follow step-by-step instructions for completion.
terms:
  cfac: Census FAC
  cfac_url: https://facweb.census.gov/
  gfac: GSA FAC
  gfac_url: https://fac.gov/
walkthrough_date: "20231220"
inlcude_survey: true
---

<div class="usa-in-page-nav-container">
    <aside
        class="usa-in-page-nav"
        data-title-text="On this page"
        data-title-heading-level="h2"
        data-scroll-offset="25"
        data-root-margin="0px 0px 0px 0px"
        data-threshold="1"
    ></aside>

    <main id="main-content" class="main-content usa-prose">

{# This has to be left aligned, or it won't convert to the h1 element. #}
# Submitting single audit reports using the Federal Audit Clearinghouse

        The Federal Audit Clearinghouse (FAC) is the place to submit federal grant audits. All entities that spend $750,000 or more in federal grant funds in a fiscal year must submit an audit.
        
        Our goal is to make the single audit submission process as easy as possible. To complete your audit, you'll fill out a series of webforms and upload a PDF of your audit reporting package. You'll also submit the SF-SAC as a series of XLSX workbooks.

        Everyone who edits or certifies a single audit submission must have an account with [Login.gov](https://login.gov/). This includes auditees and auditors. [Creating a Login.gov account](https://login.gov/create-an-account/) is fully online and secure.

        This guide goes through the submission process step-by-step.

        {% for item in collections.walkthrough %}
            {% if item.data.title | length %}
                    <div class="margin-top-8">
                        <h2 id="{{ item.data.title | slugify }}">{{item.data.title}}</h2>
                        <p>{{item.content | safe }}</p>

                        {% if item.data.image %}
                                <img src="{{config.baseUrl}}assets/img/walkthrough/{{walkthrough_date}}/{{item.data.image}}" width=500 style="margin: 1em; border: 1px solid #555;"/>
                        {% endif %}
                    </div>
            {% endif %}
        {% endfor %}
    </main>
</div>

<script src="https://touchpoints.app.cloud.gov/touchpoints/ba4ae239.js" async></script>