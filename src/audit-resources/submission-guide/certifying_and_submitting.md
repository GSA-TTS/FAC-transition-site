---
layout: home.njk
title: Submitting an audit
sidenav: true
sidenav_group: submission-guide
sticky_sidenav: true
subnav:
  - text: Making changes to your audit package
    href: '#making-changes-to-your-audit-package'
  - text: Audit certification process
    href: '#audit-certification-process'
  - text: Confirming submission
    href: '#confirming-submission'
  - text: Submission completed successfully
    href: '#submission-completed-successfully'
eleventyComputed:
    eleventyNavigation:
        key: Certifying and submitting an audit
        parent: Audit submission resources
        order: 4
        title: Certifying and submitting
---
{% import "components/image_modal.njk" as image_modal with context %}

## Making changes to your audit package

Any editor or certifying official can unlock the audit package and make changes before final submission. To do this, click the "Unlock" button to return to the main audit checklist. From here you can edit the webforms and/or re-upload new workbooks for the SF-SAC.

**Any changes will have to be re-validated and re-certified by both the Auditor and Auditee Certifying Officials.**

## Audit certification process

After you've completed the pre-certification validation, you can begin the audit certification process. **Audit submission** is a separate step, which must be completed **after audit certification.**

The Auditor Certifying Official **must certify first.**

Auditee Certifying Officials are responsible for the contents of the audit. **They must certify last and confirm the final submission.**

Any changes made after certification by either party will have to be re-certified by all. This could include re-uploads of the audit package or workbooks.

**Note:** If your Tribal entity has opted to suppress their audit on the Tribal release form, **this data will be kept private.**

Because our certification checklist applies to all audits, it includes the following statement: "The full reporting package and auditor's report may be shared publicly by the FAC or the report auditee, as required by Uniform Guidance."

This doesn’t mean that the submission will be shared publicly, only that it could be, if required by the Uniform Guidance. The guidance also allows Tribal entities to opt out of this requirement, and that’s why the FAC has the Tribal data release form.

If your Tribal entity has chosen to suppress its audit on the Tribal release form, this information will remain confidential. Only authorized agency users will be able to access your full submission. The final item on the certification checklist doesn't override the Tribal data release election.

**After completing the checklist, click “Save and continue to the next section.”**

<img class="cursor-pointer" src="{{config.baseUrl}}assets/img/walkthrough/walkthrough-16-certification.png" width=500 style="margin: 1em; border: 1px solid #555;" aria-controls="image-modal-walkthrough/walkthrough-16-certification.png" data-open-modal />
{{ image_modal.modal('walkthrough/walkthrough-16-certification.png', 'assets/img/walkthrough/walkthrough-16-certification.png', 'A screenshot of the FAC auditor certification checklist page. A list of checkboxes are listed with text requirements. A button below the list reads, "Save and continue to next section". To the right of this button a link reads, "Cancel".') }}

## Confirming submission

**Note: The Auditee Certifying Official must complete this step.** At the very bottom of your Submission checklist, select “Submit to the FAC for processing.”

To send your audit to the Federal Audit Clearinghouse, click the “Submit single audit package.” Once you submit your audit package, you can't make any further changes. What you have submitted is what will be available via the FAC's audit search.

After you submit your report to the FAC, it can take up to 24 hours for the system to process your upload. After this time, you will be able to download your report when you [search the FAC database](https://app.fac.gov/dissemination/search/).

The date the Auditee Certifying Official confirms submission is recorded as the FAC acceptance date.

We recommend you save a copy of your audit materials on your local machine. If you need to resubmit, having the originals will make the process much easier.

<img class="cursor-pointer" src="{{config.baseUrl}}assets/img/walkthrough/walkthrough-17-confirmation.png" width=500 style="margin: 1em; border: 1px solid #555;" aria-controls="image-modal-walkthrough/walkthrough-17-confirmation.png" data-open-modal />
{{ image_modal.modal('walkthrough/walkthrough-17-confirmation.png', 'assets/img/walkthrough/walkthrough-17-confirmation.png', 'A screenshot of a FAC confirmation page followed by instructions. The button below reads, "Submit single audit package". To the right of this button a link reads, "Cancel".') }}

## Submission completed successfully

After you submit your audit report, you will be redirected back to your “Submission home” area. Your audit “Status” should now show as “Accepted."
