---
layout: home.njk
title: Accessing the FAC
sidenav: true
sidenav_group: submission-guide
sticky_sidenav: true
subnav:
  - text: Your audit submissions
    href: '#your-audit-submissions'
  - text: Submission checklist
    href: '#submission-checklist'
eleventyComputed:
    eleventyNavigation:
        key: Accessing the FAC
        parent: Audit submission resources
        order: 1
        title: Accessing the FAC
---
{% import "components/image_modal.njk" as image_modal with context %}

# Accessing the FAC

To start a new audit, edit one in progress, or certify an audit, you must first sign in to fac.gov using your Login.gov account.

<img class="cursor-pointer" src="{{config.baseUrl}}assets/img/shared/home-annotated.png" width=500 style="margin: 1em; border: 1px solid #555;" aria-controls="image-modal-shared/home-annotated.png" data-open-modal />
{{ image_modal.modal('shared/home-annotated.png', 'assets/img/shared/home-annotated.png', 'A screenshot of the FAC home page. In the top right, the "sign in" button.') }}

Everyone involved in the audit process must have an account with [Login.gov](https://login.gov/). This includes auditees and auditors.

[Creating a Login.gov account](https://login.gov/create-an-account/) is fully online and secure. **When creating your Login.gov account, be sure to use the email address you want associated with your audit submission.**

<img class="cursor-pointer" src="{{config.baseUrl}}assets/img/shared/login.png" width=500 style="margin: 1em; border: 1px solid #555;" aria-controls="image-modal-shared/login.png" data-open-modal />
{{ image_modal.modal('shared/login.png', 'assets/img/shared/login.png', 'A screenshot of the Login.gov login page. From top to bottom: an email address input, a password input, a "Sign in" button, and a "Create an Account" button.') }}

## Your audit submissions

Once logged in, you can create a new audit and see the status of audits currently in progress. You'll be able to view the status of all audits associated with your email address. 

You can also delete any “In Progress” audits from this view by clicking on the trash can icon in the table. Anyone with access to an audit can delete it while it’s still in progress.

If you don't see the audit you expect to find after signing in, have the audit editor confirm that the email address associated with your Login.gov account is listed correctly on the audit. They can do this by going to the [manage user access](https://www.fac.gov/audit-resources/user-access) section of the audit.

To edit or certify an "In Progress" audit, click the link for the corresponding report in the “Status” column on the far left of the audits table. 

<img class="cursor-pointer" src="{{config.baseUrl}}assets/img/walkthrough/walkthrough-03-create.png" width=500 style="margin: 1em; border: 1px solid #555;" aria-controls="image-modal-walkthrough/walkthrough-03-create.png" data-open-modal />
{{ image_modal.modal('walkthrough/walkthrough-03-create.png', 'assets/img/walkthrough/walkthrough-03-create.png', 'A screenshot of the FAC "My submissions" page. From top to bottom: A table titled "Audits in progress", a table titled "Completed audits", a section titled "Create a new audit", an unchecked box that reads, "I agree to the terms and conditions". At the bottom of the page, a disabled button reads, "Start a new submission".') }}

## Submission checklist

Once you select an audit, you’ll see its submission checklist.

This checklist allows you to track your progress towards completing an audit  submission. The steps for completing an audit must be done in order. Each step will unlock once you’ve completed the required previous steps. You can go back to make changes to a previous step on the checklist as well.

<img class="cursor-pointer" src="{{config.baseUrl}}assets/img/walkthrough/walkthrough-09-submission-checklist.png" width=500 style="margin: 1em; border: 1px solid #555;" aria-controls="image-modal-walkthrough/walkthrough-09-submission-checklist.png" data-open-modal />
{{ image_modal.modal('walkthrough/walkthrough-09-submission-checklist.png', 'assets/img/walkthrough/walkthrough-09-submission-checklist.png', 'A screenshot of the FAC submission checklist page. A series of requirements are listed with links to their respective web forms. Sections that have already been completed are highlighted with green text, and have a green checkmark to their left. At the bottom, a section labeled "Audit submission" is contained in a green box.') }}

