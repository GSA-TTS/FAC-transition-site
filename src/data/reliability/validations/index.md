---
# Metadata
layout: home.njk
title: FAC data validations
meta:
  name: FAC data validations
  description: How we validate submissions to the Federal Audit Clearinghouse.
# Layout
eleventyComputed:
  eleventyNavigation:
    key: Validations
    parent: Reliability
in_page_nav: true
---

# {{title}}

We run multiple layers of validation to ensure every audit submitted to the Federal Audit Clearinghouse (FAC) is accurate, consistent, and ready for public use.

This page walks through how we validate each submission-from the moment it's uploaded to the moment it's published.

---

## In-Form validations

When grantees and auditors fill out the SF-SAC-whether online or in a spreadsheet-we provide built-in checks to catch common errors. These help users avoid mistakes like missing values or invalid dates before the submission even reaches us.

---

## Step 1: Intake validations

As each part of the SF-SAC is submitted, we convert the data into a structured format (JSON) and run a series of validations.

These checks:

- Catch missing or incorrect values (like a missing UEI or incorrect fiscal year)
- Provide user-friendly error messages to help fix mistakes
- Continuously expand to cover new error scenarios

You can explore the current validations we run on our [GitHub repository](https://github.com/GSA-TTS/FAC/tree/main/backend/audit/intakelib/checks).

---

## Step 2: Schema validations

Once intake checks pass, we validate the *structure* of the data using what's called a JSON Schema. This step ensures that:

- Fields are formatted correctly (e.g., UEIs are 12 characters long)
- Numbers, dates, and lists follow expected patterns
- Each section of the form fits a standard shape

These schema validations serve as a backstop, confirming that the data is ready to be stored correctly in our system.

---

## Step 3: Cross-validations

The SF-SAC form has multiple sections that need to agree with each other.

Cross-validations check for internal consistency, for example:

- Making sure the same UEI appears across all sections
- Preventing the same person from certifying as both auditor and auditee
- Verifying that Tribal entities properly consent to share their audit

These are the last checks before a submission is certified.

---

## Step 4: Dissemination validations

After a submission is certified, we convert it into a format for public access�used in our downloadable files and [API]({{'/api/' | absoluteUrl}}).

This final validation ensures:

- Every required piece of data is present
- Nothing breaks during the conversion process
- Bad data doesn't make it into public-facing tools

If a problem slips through, we document and fix it as part of our [curation process]({{"../curation/" | absoluteUrl}}).



