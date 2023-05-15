---
layout: home.njk
walkthrough:
    - title:
      body: 
      image: 
    - title: Landing page
      body: Your submission will begin with the fac.gov app homepage. You will need to sign in.
      image: audit-home-page-20230515.png
    - title: login.gov
      body: |
        First, **everyone** will need to have an account with [https://login.gov/](https://login.gov/). 
        
        Both auditors and grantees **must** have login.gov accounts. 
      image: login-20230515.png
    - title: Create a new audit
      body: Once logged in, you can create a new audit, or see audits in-flight or already completed.
      image: audit-create-new-20230515.png
    - title: Criteria check
      body: To start, we make sure you actually have to submit an audit.
      image: submission-criteria-20230515.png
    - title: Auditee information
      body: |
        Next, we ask for the auditee UEI. 
        
        **You must have a UEI**.

        Everywhere that EINs were used previously, the Single Audit now expects UEIs.
      image: auditee-info-20230515.png
    - title: General information
      body: |
        We then ask for general information: auditor address, auditee address, and the like. 
      image: general-info-20250515.png
    - title: Workbook uploads
      body: |
        Once you have entered the general info, we ask you to upload a series of XLSX workbooks.

        We will be providing templates for these files, and they will be available from fac.gov.
        
        Like prior years, there are some controls and validations build into the workbooks to help make sure your data entry is consistent. We check the basics (e.g. that you have correctly formatted your UEI), but it is up to you to check the correctness of your audit and findings.  
      image: workbook-upload-20250515.png
    - title: Audit package upload
      body: |
        As in the past, you will be asked to upload the audit package as a PDF.

        continue to expect the PDF to be unlocked and generated so that the text is accessible.
      image: upload-audit-package.png
    - title: Certify your audit
      body: |
        Once you have uploaded all of your workbooks, and they are all validated, you can certify the correctness and completeness of your audit.

        The Auditor Certifying Official **must** certify first.

        The Auditee Certifying Official certifies second, as the auditee bears the ultimate responsibility for the contents of the Single Audit.

        If anything changes after the auditor certification (e.g. a workbook or the audit package is re-uploaded), then the Auditor Certifying Official will need to certify again.
      image: auditor-certification.png
    - title: Almost done
      body: |
        After both the auditor and auditee have certified the Single Audit, it is possible to submit the entire package to the FAC.
      image: submission-almost-done.png
    - title: Success!
      body: | 
        You're done!

        We highly recommend you keep a copy of all of your audit materials. If you find you need to resubmit, having the originals will make it *much* easier to reupload.
      image: submitted-success.png
    - title:
      body: 
      image: 
    - title:
      body: 
      image: 
---

# FAC walkthrough

What will the new FAC look like?

We have built the new FAC to be accessible and consistent. It should "feel" like the old FAC, but it is ready for improvements in years to come.

Click on the screenshots to zoom in.

{% for item in walkthrough %}
{% if item.title | length %}

<div class="grid-container">
  <div class="grid-row">
    <div class="grid-col-3">

{% if item.image %}
    <img src="/assets/img/walkthrough/{{item.image}}" width=300 style="border: 1px solid #555"/>
{% endif %}
    </div>
    <div class="grid-col-3 margin-left-3">
      <h2>{{item.title}}</h2>
 
{{item.body }}
    </div>
  </div>
{% endif %}
</div>
{% endfor %}
