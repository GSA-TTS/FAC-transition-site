---
layout: sidenav.njk
title: SF-SAC intake validations
meta:
  name: SF-SAC intake validations
  description: Documentation about the data migration from Census to GSA.
baseurl: https://github.com/GSA-TTS/FAC/tree/44ae639f70c4552fa584f7042e0c116b0cd93d29/backend/audit/intakelib/checks
---

# {{title}}

Intake validations are the first layer of validation that the SF-SAC undergoes as it is uploaded to the FAC. In order to validate SF-SAC form sections, we do three things:

1. Convert the spreadsheet into JSON
2. Validate the data in this intermediate JSON form
3. Convert the data to a meaningful semantic representation

Each of these steps provides more (or less) validation of the submission.


## Step 1: From spreadsheet to JSON

Spreadsheets are first converted into JSON, or [Javascript Object Notation](https://www.json.org/json-en.html). Internally, this is referred to as the *intermediate representation*, or IR. This IR is a small language for describing spreadsheets where named ranges are used to define regions of data. We describe this representation more fully as part of our [intakelib](https://github.com/GSA-TTS/FAC/blob/414f9932b3797de68c7271ba0b471c9b834062ce/backend/audit/intakelib/README.md) documentation.

This conversion is a validation of its own kind; we only process spreadsheets that are saved in the Excel 2007 XML-based format. We chose this, because many current spreadsheet manipulation tools (e.g. LibreOffice) are capable of saving data in this format, meaning that it is possible to prepare an SF-SAC submission using free and open source software.

## Step 2: Validating the intermediate form

The FAC validates the data represented in its intermediate form, because it is easier to work with than the original spreadsheet used to submit data as part of the SF-SAC. All sections have a common set of validations applied For example, we make sure every form section has a UEI defined. Then, we apply section-specific validations; Federal Awards is the most complex form section, and therefore many of our data validations are applied to that portion of the submission. 

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

### Reporting errors

Intake validations are critical for several reasons.

1. They are user-centered. <br>Each validation produces errors that are human-friendly. They are what help auditors and grantees find errors in their submissions, and fix those errors. Our messages specify errors down to the specific cell, and are refined for usability based on user feedback.
2. They are self-contained.<br>Each validation does only one thing. This helps the GSA team with maintaining the validations.
3. They are comprehensive.<br>The intake validations are intended to cover all possible error conditions we might encounter. In the event that an auditor or grantee finds a new, surprising way to enter data into our forms... we add a new intake validation.

Ultimately, our goal is for the intake validations to provide a good user experience when part of the SF-SAC is completed incorrectly.

## Step 3: Convert the data into a meaningful form

After intake validations are applied, we then transform the data into its storage form. This is another JSON representation, but it is more meaningful. Instead of representing the spreadsheet, it represents the meaningful connections between portions of the data. This form is then further validated by our [schema validations]({{ "../schema-validations/" | absoluteUrl }}).