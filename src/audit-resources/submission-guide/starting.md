---
layout: home.njk
title: Starting an audit
sidenav: true
sidenav_group: submission-guide
sticky_sidenav: true
subnav:
  - text: Auditee information
    href: '#auditee-information'
  - text: Audit access
    href: '#audit-access'
eleventyComputed:
    eleventyNavigation:
        key: Starting an audit
        parent: Audit submission resources
        order: 2
        title: Starting an audit
---
{% import "components/image_modal.njk" as image_modal with context %}

# Starting a new audit
The first step of beginning an audit is confirming your entity must submit an audit. You’ll answer a few questions about what type of entity you are and how much you spent in federal grants during the applicable fiscal year. 

Your answers to these questions can’t be changed once you complete this step. If you make a mistake in answering any of these questions, you must begin a new audit.

<img class="cursor-pointer" src="{{config.baseUrl}}assets/img/walkthrough/walkthrough-04-eligibility.png" width=500 style="margin: 1em; border: 1px solid #555;" aria-controls="image-modal-walkthrough/walkthrough-04-eligibility.png" data-open-modal />
{{ image_modal.modal('walkthrough/walkthrough-04-eligibility.png', 'assets/img/walkthrough/walkthrough-04-eligibility.png', 'A screenshot of the FAC submission eligibilty page. One multiple choice question and three true or false questions ask if an entity meets the single audit criteria.') }}

Per [2 CFR 200.501](https://www.ecfr.gov/current/title-2/section-200.501), the single audit submission process is for the following types of entities:
* Non-profits
* State and local governments
* Institutions of higher education
* Indian tribes or Tribal organizations

Entities that spend federal grant funds are required to submit an audit if they meet the following spending thresholds:
* $750,000 or more for Fiscal Years starting before October 1, 2024  
* $1,000,000 or more for Fiscal Years starting on or after October 1, 2024

### ACEE submissions
ACEE audits must be submitted directly to the Department of Treasury using [their documentation](https://home.treasury.gov/system/files/136/ACEE-Report-User-Guide.pdf). Please [contact the Department of Treasury](https://home.treasury.gov/utility/contact) with any additional questions on this topic.

## Auditee information
The FAC uses the Unique Entity ID (UEI) for all audit submissions.

* UEIs are 12-character alphanumeric IDs assigned by SAM.gov
* Data entry, entity registration, and searching in the FAC now require the use of an entity's UEI

You can’t begin an audit without a valid UEI for your entity.

The fiscal period start and end dates should be the start and end date for your entity and the expenditures covered in your audit.

<img class="cursor-pointer" src="{{config.baseUrl}}assets/img/walkthrough/walkthrough-05-auditee-info.png" width=500 style="margin: 1em; border: 1px solid #555;" aria-controls="image-modal-walkthrough/walkthrough-05-auditee-info.png" data-open-modal />
{{ image_modal.modal('walkthrough/walkthrough-05-auditee-info.png', 'assets/img/walkthrough/walkthrough-05-auditee-info.png', 'A screenshot of the FAC auditee information page. On the center left, there are three text input fields. From top to bottom: Entity UEI, Fiscal period start date, and Fiscal period end date.') }}


## Audit access
This is where you will list the auditee and auditor certifying officials, as well as anyone who will need to enter data or edit the single audit. Be sure to gather the names and email addresses of all individuals who will require access to the audit before proceeding with this step.

Enter the email address for everyone who will need to edit the audit submission. You should include your email address as well. **Make sure these email addresses match the email addresses connected to the users' Login.gov accounts.**

If you need to make changes to users after creating the audit submission, you can find instructions on [our manage user access page]({{ config.baseUrl }}audit-resources/user-access).

The FAC doesn't notify users when they've been added to a submission. We recommend notifying them yourself.

<img class="cursor-pointer" src="{{config.baseUrl}}assets/img/walkthrough/walkthrough-06-audit-access.png" width=500 style="margin: 1em; border: 1px solid #555;" aria-controls="image-modal-walkthrough/walkthrough-06-audit-access.png" data-open-modal />
{{ image_modal.modal('walkthrough/walkthrough-06-audit-access.png', 'assets/img/walkthrough/walkthrough-06-audit-access.png', 'A screenshot of the FAC audit submission access page. There are four sets of text input fields. Each set requests an email address, and a confirmation of the same address. From top to bottom, the sets are titled: Auditee certifying official, Auditor certifying official, Auditee contacts, Auditor contacts.') }}
