---
layout: home.njk
title: Interpreting FAC records
meta:
  name: Instructions for interpreting FAC records.
  description: Read how to best interpret FAC records.
---

# Interpreting FAC records

The FAC houses single audit submission data dating back to 2016. In addition to the records collected by the GSA FAC starting in October 2023, we migrated several years' worth of historical records from the Census Bureau's system.

As with any large collection of data, there are some known inconsistencies and input/output issues. The accordions below describe these known scenarios.

<div class="usa-accordion usa-accordion--bordered">
  <h4 class="usa-accordion__heading">
    <button
      type="button"
      class="usa-accordion__button"
      aria-expanded="false"
      aria-controls="replicated-rows"
    >
    Replicated federal awards rows
    </button>
  </h4>
  <div id="replicated-rows" class="usa-accordion__content usa-prose">

## Data scenario

In February of 2024, we discovered a data issue that allowed some data to be copied more than once from the submitted data to the data made available from the FAC. Users may see this appear as duplicate award reference lines both when using the API and when downloading indivudal SF-SAC summary reports from the search interface.

For example, in the photo below, first three rows (green) are correct. The second three rows (purple) are  duplicates of the first three rows.

<img src="{{ config.baseUrl }}assets/img/data/duplicatedatarows.png" alt="spreadsheet table showing duplicated rows of data, distinguished in purple and green"/>

At this time, the team doesn't have a solution to this data problem. If you see duplicate award rows in your downloaded data, please disregard them.

</div>

<div class="usa-accordion usa-accordion--bordered">
  <h4 class="usa-accordion__heading">
    <button
      type="button"
      class="usa-accordion__button"
      aria-expanded="false"
      aria-controls="historical-accepted-date"
    >
    Historical record submitted (accepted) date off-by-one
    </button>
  </h4>
  <div id="historical-accepted-date" class="usa-accordion__content usa-prose">

## Data scenario

All historical records have an incorrect FAC acceptance date. When our team migrated these records from the Census, we ran a bit of code to make the historical time codes match the one used by our new system. As a result, this subtracted one day from every submitted date, giving them an acceptance date one day early.

In the photos below, you can see examples of where these incorrect dates display in search results.

<img src="{{ config.baseUrl }}assets/img/data/acceptancedate_01.png" alt="a view of FAC search results with a historical record acceptance date circled in red"/>

<img src="{{ config.baseUrl }}assets/img/data/acceptancedate_02.png" alt="a view of a historical FAC record summary result page with the acceptance date circled in red"/>

</div>

<div class="usa-accordion usa-accordion--bordered">
  <h4 class="usa-accordion__heading">
    <button
      type="button"
      class="usa-accordion__button"
      aria-expanded="false"
      aria-controls="historical-fiscal-end"
    >
    Historical record fiscal year end-date off-by-one
    </button>
  </h4>
  <div id="historical-fiscal-end" class="usa-accordion__content usa-prose">

## Data scenario

All historical records have an incorrect fiscal year. When we migrated these records from the Census, the code we ran to convert the dates to the time codes used by the GSA FAC added an extra day. As a result, the search summary results pages show a start date one day earlier than what it should be.

In the photos below, you can see examples of where these incorrect dates display on the summary results pages for individual records.

<img src="{{ config.baseUrl }}assets/img/data/fiscalstart_01.png" alt="a view of FAC search results with a historical record incorrect fiscal start date circled in red"/>

<img src="{{ config.baseUrl }}assets/img/data/fiscalstart_02.png" alt="a view of FAC search results with a historical record incorrect fiscal start date circled in red"/>

</div>