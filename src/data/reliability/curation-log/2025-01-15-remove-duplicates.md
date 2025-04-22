---
# Metadata
layout: home.njk
tags: curation_log
# Layout
eleventyComputed:
  eleventyNavigation:
    key: Repair duplicate rows
    parent: Curation log
# Page data
concern: 2024-02-duplicate-rows
slug: Repair of duplicated data rows
adr: None
repair_date: 2025-01
github_pr: https://github.com/GSA-TTS/FAC/issues/4630
short: Duplicate rows were removed
---

# {{slug}}


The issue of duplicated rows in some tables was caused by a bug in the submission process of the SF-SAC. This bug was addressed, but the duplicate rows remained.

The solution&mdash;to delete the rows&mdash;was implemented in 2025/01. 

**Pull request**: [{{github_pr}}]({{github_pr}})

**Source issue**: [{{concern}}]({{ ["/data/reliability/concerns/", concern] | join | htmlBaseUrl(baseUrl) }})
