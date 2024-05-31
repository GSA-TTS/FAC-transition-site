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

In February of 2024, we discovered a race hazard in the submission process. This allowed some data to be copied more than once from the intake tables to the dissemination tables. Users may see this appear as duplicate award reference lines both when using the API and when downloading indivudal SF-SAC summary reports from the search interface.

<div class="usa-accordion usa-accordion--bordered">
  <h4 class="usa-accordion__heading">
    <button
      type="button"
      class="usa-accordion__button"
      aria-expanded="false"
      aria-controls="historical-accepted-date"
    >
    Submitted (accepted) date in migrated data off-by-one
    </button>
  </h4>
  <div id="historical-accepted-date" class="usa-accordion__content usa-prose">

## Data scenario

While using the API to verify and validate the existence of historical PDFs, our team issued a query to obtain records by acceptance date. This didn't produce the expected results, because all acceptance dates are one day earlier than they should be.

Our investigation found the error to be in the code that converts historical records to the same time code as new submissions. This code works as expected for new submissions, but for historical submissions, it subtracted a day from every submitted date. 

This means all migrated audit records have an incorrect submission date.