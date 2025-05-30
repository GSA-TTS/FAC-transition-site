---
# Metadata
layout: home.njk
title: SF-SAC intake validations
meta:
  name: SF-SAC intake validations
  description: Documentation about the data migration from Census to GSA.
# Layout
eleventyComputed:
  eleventyNavigation:
    key: Intake validations
    parent: Validations
in_page_nav: true
# Page data
baseurl: https://github.com/GSA-TTS/FAC/blob/414f9932b3797de68c7271ba0b471c9b834062ce/backend/audit/intakelib/checks/
---

# {{title}}

Intake validations are run as an audit is submitted piece-by-piece. In order to validate SF-SAC form sections, we do three things:

1. Convert the spreadsheet into JSON
2. Validate the data in this intermediate JSON form
3. Convert the data to a meaningful semantic representation

Each of these steps helps ensure a better submission to the FAC.


### Reporting errors

Intake validations are critical for several reasons.

1. **They are user-centered**. <br>When a validation finds a mistake in the data, we try and produce error messages that are human-friendly. They are what help auditors and grantees fix errors they may have made. Our messages specify errors down to the specific cell, and are refined for usability based on user feedback.
2. **They are self-contained**.<br>Each validation does only one thing. This helps the GSA team with maintaining the validations.
3. **They are comprehensive**.<br>The intake validations are intended to cover all possible error conditions we might encounter. In the event that an auditor or grantee finds a new, surprising way to enter data into our forms... we add a new intake validation.

Ultimately, our goal is for the intake validations to provide a good user experience when part of the SF-SAC is completed incorrectly while simultaneously ensuring that we colelct quality data via the form.

## Step 1: Convert the spreadsheet into JSON

Spreadsheets are first converted into JSON, or [Javascript Object Notation]({{glossary.sites.json.url}}). Internally, this is referred to as the *intermediate representation*. This intermediate representation is a small language that uses named ranges to define regions of data. We describe this representation more fully as part of our [intakelib](https://github.com/GSA-TTS/FAC/blob/414f9932b3797de68c7271ba0b471c9b834062ce/backend/audit/intakelib/README.md) documentation.

This conversion is a validation of its own kind; if we cannot convert the input to our intermediate representation, it is obviously not an SF-SAC upload! The SF-SAC forms must be saved in an Excel 2007 XML-based format (or `xlsx`). We chose this because many current spreadsheet manipulation tools (e.g. [LibreOffice]({{glossary.sites.libreoffice.url}})) are capable of saving data in this format. This means that it is possible to prepare an SF-SAC submission using free and open source software.

## Step 2: Validate the data

The intermediate form makes the data validation easier. Every section of the SF-SAC has a common set of validations applied. For example, we make sure every form section has a UEI defined. Then, we apply section-specific validations.

<div class="usa-table-container" tabindex="0">
<table class="usa-table">
    <caption>
    Validations applied to the SF-SAC at time of intake.
    </caption>
    <thead>
    <tr>
        <th scope="col">Form section</th>
        <th scope="col">Validation</th>
        <th scope="col">Description</th>
    </tr>
    </thead>
    <tbody>
{%- for section in curation.intake_validations -%}
    <tr>
        <td><b>{{section.form}}</b></td>
        <td></td>
        <td></td>
    </tr>
    {%- for check in section.checks -%}
        <tr>
            <td>&nbsp;</td>
            <td scope="row"><a href='{{ check.url | replace("BASEURL", baseurl) }}'>{{check.check}}</a></td>
            <td>{{check.description}}</td>
        </tr>
    {%- endfor -%}
{%- endfor -%}
</tbody>
</table>
</div>


## Step 3: Convert the data to a meaningful form

After intake validations are applied, we then transform the data into its storage form. This is another JSON representation, but it is more meaningful. Instead of representing the spreadsheet, it represents the meaningful connections between portions of the data. This form is then further validated by our [schema validations]({{ "../schema-validations/" | absoluteUrl }}).
