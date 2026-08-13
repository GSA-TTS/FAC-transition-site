---
# Metadata
layout: home.njk
tags: curation_log
# Layout
eleventyComputed:
  eleventyNavigation:
    key: Update award references
    parent: Curation log
# Page data
concern: 2026-08-10-update-award-refs
slug: Update award references
adr: None
repair_date: 2026-08
github_pr: https://github.com/GSA-TTS/FAC/issues/5646
short: Update award references
---

# {{slug}}


Nineteen historical records contained inconsistent award reference
formatting between their 5-digit award references in the 'findings' API
endpoint and their corresponding 4-digit award references in 
workbooks, 'federal_awards' and 'passthrough' API endpoints.

The inconsistency resulted from the FAC's transition from 4-digit to
5-digit award references and submissions made using older workbook
versions.

The affected records were updated to 5-digit award references so the
references match across FAC data.

Affected records:

2021-12-GSAFAC-0000015760\
2022-09-GSAFAC-0000059900\
2022-12-GSAFAC-0000042738\
2022-12-GSAFAC-0000052602\
2023-03-GSAFAC-0000002448\
2023-06-GSAFAC-0000010718\
2023-06-GSAFAC-0000059855\
2023-09-GSAFAC-0000053081\
2023-12-GSAFAC-0000033265\
2023-12-GSAFAC-0000054619\
2023-12-GSAFAC-0000054722\
2024-03-GSAFAC-0000041792\
2024-03-GSAFAC-0000052787\
2024-06-GSAFAC-0000055737\
2024-06-GSAFAC-0000058574\
2024-06-GSAFAC-0000060392\
2024-06-GSAFAC-0000060492\
2024-06-GSAFAC-0000060532\
2024-06-GSAFAC-0000060704

The solution was implemented in 2026/08.

**Pull request**: [{{github_pr}}]({{github_pr}})

**Source issue**: [{{concern}}]({{ ["/data/reliability/concerns/", concern] | join | htmlBaseUrl(baseUrl) }})
