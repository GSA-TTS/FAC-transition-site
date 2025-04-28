---
# Metadata
layout: home.njk
title: FAC dissemination validations
meta:
  name: FAC dissemination validations
  description: Documentation about the data migration from Census to GSA.
# Layout
eleventyComputed:
  eleventyNavigation:
    key: Dissemination validations
    parent: Validations
in_page_nav: true
---

# {{title}}

<i>
Dissemination<br>
Valid and free from failure<br>
Except when it's not.<br>
</i>

The dissemination of data serves as one final check that we have all of the data we expect, and that it is of the correct type. It is unlikely at this point that we will detect an error. However, if we do, the dissemination of the data fails, allowing the FAC team and grantee/auditor understand why this happened, and resolve the error before passing data on to agencies and the public.


## From intake to validation

The last step in an SF-SAC submission is to go from these [internal tables to our external dissemination tables](https://github.com/GSA-TTS/FAC/blob/44ae639f70c4552fa584f7042e0c116b0cd93d29/backend/audit/intake_to_dissemination.py). From a systems perspective, we continue to proceed defensively, making no assumptions that all is well with the submission.

The FAC has an internal database for storing a submission; this is the JSON representation that reflects the shape of the SF-SAC. Once a submission is complete, we convert this into another shape for dissemination. Long-time users of the FAC will recognize this as the `general` table, the `federal_awards` table,  the `findings` table, and so on. Our [API]({{"/api" | absoluteUrl}}) is structured around this  shape, for consistency of experience for our users.


In converting data from our internal to external representation, we make sure all of the data is where we expect it. And, if the wrong *kind* of data is somewhere, it will fail to be written to our dissemination tables. In this regard, we make sure that one of two things is true:

1. Everything is in the correct place, and can be written out for agencies to begin their work, or 
2. Everything isn't, and the submission fails.

We have not seen this backstop triggered for a very long time. However, it is the final set of checks that are performed on the SF-SAC before we consider it a complete submission.

*Back to the [FAC data overview]({{"/data" | absoluteUrl}})*.
