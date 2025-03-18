---
layout: home.njk
title: Completing your audit
sidenav: true
sidenav_group: submission-guide
sticky_sidenav: true
subnav:
  - text: General information form
    href: '#general-information-form'
  - text: Audit information form
    href: '#audit-information-form'
  - text: Upload the audit reporting package PDF
    href: '#upload-the-audit-reporting-package-pdf'
  - text: Upload the SF-SAC
    href: '#upload-the-sf-sac'
  - text: Tribal data release
    href: '#tribal-data-release'
  - text: Pre-certification validation
    href: '#pre-certification-validation'
  - text: Lock for certification
    href: '#lock-for-certification'
  - text: Downloading an “In Progress” audit
    href: '#downloading-an-in-progress-audit'
eleventyComputed:
    eleventyNavigation:
        key: Completing your audit
        parent: Audit submission resources
        order: 3
        title: Completing your audit
---
{% import "components/image_modal.njk" as image_modal with context %}

# Completing your audit
Once you’ve completed the eligibility and auditee information steps, you’ll be ready to complete a series of webforms and the SF-SAC workbooks that make up the audit itself.

## General information form
In this form, you'll enter general information about the audit and auditee.

### Fiscal period
These fields will be automatically filled in based on the dates you entered when you began the audit.

### Audit type
The FAC accepts two types of audits: single audits and program-specific audits. Refer to [2 CFR 200.507](https://www.ecfr.gov/current/title-2/section-200.507) for more information on program-specific audit requirements.

### Audit period
Select how long of a period your audit covers. Refer to [2 CFR 200.504](https://www.ecfr.gov/current/title-2/section-200.504) for information audit frequency.

### Auditee Information

### EINs
Enter your entity’s EIN and confirm it isn’t a social security number. Then indicate whether or not your audit covers other entities, such as grant subrecipients, with their own EINs. If you indicate “yes” in this section, you’ll have to upload the Additional EINs workbook later on.

### Auditee details
Enter the name and address for your audit entity. Don’t enter your own name or address.

### Auditee Unique Entity Identifier (UEI)
This information will be automatically populated based on the information you provided when you began the audit.

### Auditee contact information
Enter the name, title, and contact information for the auditee’s main point of contact. This is typically who will be certifying the audit on behalf of the auditee.

### Primary auditor information
If multiple audit organizations worked on this audit, only include the lead or coordinating auditor's information.

### Auditor EIN
Enter your auditor’s EIN and confirm it isn’t a social security number. 

### Auditor details
Enter the name of the firm that completed your audit, followed by its address. After that, you’ll enter the personal information of your auditor, including their name and contact information.

Finally, indicate whether or not a secondary auditing firm contributed to your audit. If you indicate “yes” in this section, you’ll have to upload the Secondary auditor’s workbook later on.

<img class="cursor-pointer" src="{{config.baseUrl}}assets/img/walkthrough/walkthrough-07-general-info.png" width=500 style="margin: 1em; border: 1px solid #555;" aria-controls="image-modal-walkthrough/walkthrough-07-general-info.png" data-open-modal />
{{ image_modal.modal('walkthrough/walkthrough-07-general-info.png', 'assets/img/walkthrough/walkthrough-07-general-info.png', 'A screenshot of the FAC general information page. The first three sections are visible. From top to bottom, they read: Fiscal Period, Type of audit, Audit period.') }}


## Audit information form
Use this form to submit information about the auditee's financial statements and federal programs according to [2 CFR 200.510](https://www.ecfr.gov/current/title-2/section-200.510).

This is also where you'll identify any federal programs covered in the audit.

### Financial Statements
Each of the questions in this section must be answered before you can move on to the next.

First, you’ll indicate your auditor’s determination of how your entity applied generally accepted accounting principles (GAAP) to their financial statements. You may select multiple options.

If you select the final option in the list, you will have to answer an additional three questions on the specifics of your special purpose framework. 

Next you’ll mark whether or not your auditor included a “going concern” in your audit, followed by questions about significant deficiencies, material weaknesses, and material non compliance.

For program-specific audits, you can answer “No” for each of these questions as they don’t apply to your circumstances.

### Federal programs
The questions in this section are about the audited funds. You must answer all questions before you can move on to the next section.

The first question refers to the sources of funding received by the entity. Answer yes or no based on your auditor’s report. If you’re submitting a program-specific audit, select “No” because this isn’t relevant to your audit.

The dollar threshold distinction between Type A and Type B programs is next. You can refer to [2 CFR 200.518](https://www.ecfr.gov/current/title-2/section-200.518) for more information. For audits with a fiscal year starting before October 1, 2024, this number must be $750,000 or higher. For audits with a fiscal year starting on or after October 1, 2024, this number must be $1,000,000 or higher.

For program-specific audits, enter either $750,000 or $1,000,000, depending on your fiscal year, as a placeholder amount so you can continue your submission.

Round up to the nearest whole dollar, don’t include cents.

The auditor should refer to [2 CFR 200.520](https://www.ecfr.gov/current/title-2/section-200.520) to determine if the auditee is low-risk. Select the appropriate answer based on the auditor’s determination.

The final part of this section is to select any funding agencies that have prior audit findings relating to their awards. Select all that apply or “None” if there are no prior audit findings.

<img class="cursor-pointer" src="{{config.baseUrl}}assets/img/walkthrough/walkthrough-08-audit-info.png" width=500 style="margin: 1em; border: 1px solid #555;" aria-controls="image-modal-walkthrough/walkthrough-08-audit-info.png" data-open-modal />
{{ image_modal.modal('walkthrough/walkthrough-08-audit-info.png', 'assets/img/walkthrough/walkthrough-08-audit-info.png', 'A screenshot of the FAC audit information page. A series of questions determines details on the audit. The two sections are labeled "Financial statements" and "Federal programs".') }}


## Upload the audit reporting package PDF
You must merge all components of the audit report package into a PDF file before uploading. Be sure your PDF file meets the uniform guidelines:

* Less than 30MB
* Unlocked with no password requirements
* Converted from an electronic document and text searchable
* Unencrypted
* Printing and content copying allowed

The reporting package must include the following:

* Financial statements and schedule of expenditures of Federal awards outlined in Uniform Guidance codes [2 CFR 200.510(a)](https://www.ecfr.gov/current/title-2/part-200/section-200.510#p-200.510(a)) and [(b)](https://www.ecfr.gov/current/title-2/part-200/section-200.510#p-200.510(b)), respectively;
* Summary schedule of prior audit findings discussed in [2 CFR 200.511(b)](https://www.ecfr.gov/current/title-2/part-200/section-200.511#p-200.511(b));
* Auditor's report(s) discussed in [2 CFR 200.515](https://www.ecfr.gov/current/title-2/section-200.515); and
* Corrective action plan discussed in [2 CFR 200.511(c)](https://www.ecfr.gov/current/title-2/section-200.511#p-200.511(c)).

**Make sure to remove all Personally Identifiable Information (PII) before uploading your PDF.**

PII includes but is not limited to Social Security Numbers, account numbers, vehicle identification numbers, copies of canceled checks, student names, dates of birth, personal addresses, or personal phone numbers.

You’ll also have to enter the page number for each required section of the PDF. These fields are marked with a red asterisk.

<img class="cursor-pointer" src="{{config.baseUrl}}assets/img/walkthrough/walkthrough-10-pdf.png" width=500 style="margin: 1em; border: 1px solid #555;" aria-controls="image-modal-walkthrough/walkthrough-10-pdf.png" data-open-modal />
{{ image_modal.modal('walkthrough/walkthrough-10-pdf.png', 'assets/img/walkthrough/walkthrough-10-pdf.png', 'A screenshot of the FAC single audit upload page. At the top of the image, formatting requirements are listed for a FAC-compliant PDF. Below the instructions, eleven text inputs ask for the page numbers of certain elements. Below the text inputs is a file input element.') }}


## Upload the SF-SAC
Next you'll upload the SF-SAC. This is a series of XLSX workbooks that collects the data on any audit findings, corrective action plans, etc., [per 2 CFR 200.512(c)](https://www.ecfr.gov/current/title-2/part-200/subpart-F#p-200.512(c)).

We've provided [download links and instructions]({{ config.baseUrl }}audit-resources/sf-sac) for each of these workbooks. **We recommend following the instructions carefully as you complete the SF-SAC.**

<img class="cursor-pointer" src="{{config.baseUrl}}assets/img/walkthrough/walkthrough-11-workbook.png" width=500 style="margin: 1em; border: 1px solid #555;" aria-controls="image-modal-walkthrough/walkthrough-11-workbook.png" data-open-modal />
{{ image_modal.modal('walkthrough/walkthrough-11-workbook.png', 'assets/img/walkthrough/walkthrough-11-workbook.png', 'A screenshot of a FAC workbook upload page. At the top of the image is the workbook title.  Below the title are links to the instructions and workbook download for this section. Below the links is a file input element. A disabled button below the file input reads, "Return to Report Home". To the right of this button a link reads, "Cancel".') }}


## Tribal data release
Per [2 CFR 200.512(b)(2)](https://www.ecfr.gov/current/title-2/part-200/subpart-F#p-200.512(b)(2)), Indian Tribes or Tribal Organizations will need to opt in or opt out of making their reporting package publicly available. **This step must be completed by the Auditee Certifying Official.**

<img class="cursor-pointer" src="{{config.baseUrl}}assets/img/walkthrough/walkthrough-12-tribal-data.png" width=500 style="margin: 1em; border: 1px solid #555;" aria-controls="image-modal-walkthrough/walkthrough-12-tribal-data.png" data-open-modal />
{{ image_modal.modal('walkthrough/walkthrough-12-tribal-data.png', 'assets/img/walkthrough/walkthrough-12-tribal-data.png', 'A screenshot of the FAC "Tribal data release" page. At the top of the image is the page title.  Below the title is a brief to the citation for this section, which is followed by the certification section. In the certification section, are two fields for name and title of the auditee certifying official to agree and sign to the citation. A button below the section reads, "Agree to Tribal data release". To the right of this button a link reads, "Cancel".') }}


## Pre-certification validation
This step confirms you entered your data correctly throughout your audit package. It also cross-validates the data in the forms and the SF-SAC workbooks against each other.

The system will identify any errors. You'll be able to edit/re-upload any affected sections before certification.

<img class="cursor-pointer" src="{{config.baseUrl}}assets/img/walkthrough/walkthrough-13-validation.png" width=500 style="margin: 1em; border: 1px solid #555;" aria-controls="image-modal-walkthrough/walkthrough-13-validation.png" data-open-modal />
{{ image_modal.modal('walkthrough/walkthrough-13-validation.png', 'assets/img/walkthrough/walkthrough-13-validation.png', 'A screenshot of the FAC validation page. At the top of the image is the page title.  Below the title is the instructions for this section, which is followed by a table that lists any errors. A button below the section reads, "Begin validation". To the right of this button, a disabled button reads "Proceed to certification", then a link reads, "Cancel".') }}


## Lock for certification
After validation, you'll lock your audit submission for certification.

If you need to make edits after this step, you can unlock your submission from the audit status page. If you unlock after validation, you will have to re-validate and re-lock your data once you’ve completed your edits.

<img class="cursor-pointer" src="{{config.baseUrl}}assets/img/walkthrough/walkthrough-14-lock.png" width=500 style="margin: 1em; border: 1px solid #555;" aria-controls="image-modal-walkthrough/walkthrough-14-lock.png" data-open-modal />
{{ image_modal.modal('walkthrough/walkthrough-14-lock.png', 'assets/img/walkthrough/walkthrough-14-lock.png', 'A screenshot of the FAC lock for certification page. At the top of the image is the page title.  Below the title is the instructions. A button below the section reads, "Lock for certification". To the right of this button a link reads, "Cancel".') }}


## Downloading an “In Progress” audit
Once your audit is locked for certification, you can download a copy of your "In Progress" for your records. Select “SF-SAC preview” to download a copy of your SF-SAC, and select “PDF preview” to download a copy of your audit report PDF.  

<img class="cursor-pointer" src="{{config.baseUrl}}assets/img/walkthrough/walkthrough-15-making-changes.png" width=500 style="margin: 1em; border: 1px solid #555;" aria-controls="image-modal-walkthrough/walkthrough-15-making-changes.png" data-open-modal />
{{ image_modal.modal('walkthrough/walkthrough-15-making-changes.png', 'assets/img/walkthrough/walkthrough-15-making-changes.png', 'A screenshot of the FAC lock for certification page. At the top of the image is the page title.  Below the title is the instructions. A button below the section reads, "Lock for certification". To the right of this button a link reads, "Cancel".') }}
