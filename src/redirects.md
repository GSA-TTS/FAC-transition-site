---
# This method of redirecting comes from user @warpfork
# https://github.com/11ty/eleventy/issues/510#issuecomment-824104799

# This file does hijinx with the "pagination" system to generate many small pages from one set of data...
# and uses that do to redirects from some URLs to others.
# We use this to try to keep old links working.
#
# There's limited power to this approach (it only works for specific pages listed; it can't glob),
# but those are limitations inherent to an approach that works via static site gen, rather than via server configuration.
# The related upside of an approach that works via static site gen is the portability.
pagination:
  data: redirects
  size: 1
  alias: redirect
redirects:
#   Search resources
  - {"from": "/data/resources/", "to": "/search-resources/"}
  - {"from": "/data/tribal/", "to": "/search-resources/tribal/"}
#   API pages
  - {"from": "/developers/", "to": "/api/"}
  - {"from": "/developers/dictionary/", "to": "/api/dictionary/"}
  - {"from": "/developers/getting-started/", "to": "/api/getting-started/"}
  - {"from": "/developers/rollups/", "to": "/api/rollup/"}
  - {"from": "/developers/differences/", "to": "/api/differences/"}
  - {"from": "/developers/api-versioning/", "to": "/api/versioning/"}
  - {"from": "/developers/terms/", "to": "/api/terms/"}
#   Audit resources
  - {"from": "/audits/", "to": "/audit-resources/"}
  - {"from": "/resources/instructions/", "to": "/audit-resources/how-to/"}
  - {"from": "/resources/workbooks/federal-awards/", "to": "/audit-resources/sf-sac/federal-awards/"}
  - {"from": "/resources/workbooks/notes-to-sefa/", "to": "/audit-resources/sf-sac/notes-to-sefa/"}
  - {"from": "/resources/workbooks/federal-awards-audit-findings/", "to": "/audit-resources/sf-sac/federal-awards-audit-findings/"}
  - {"from": "/resources/workbooks/federal-awards-audit-findings-text/", "to": "/audit-resources/sf-sac/federal-awards-audit-findings-text/"}
  - {"from": "/resources/workbooks/corrective-action-plan/", "to": "/audit-resources/sf-sac/corrective-action-plan/"}
  - {"from": "/resources/workbooks/additional-ueis-workbook/", "to": "/audit-resources/sf-sac/additional-ueis-workbook/"}
  - {"from": "/resources/workbooks/secondary-auditors-workbook/", "to": "/audit-resources/sf-sac/secondary-auditors-workbook/"}
  - {"from": "/resources/workbooks/additional-eins-workbook/", "to": "/audit-resources/sf-sac/additional-eins-workbook/"}
#   Info
  - {"from": "/resources/instructions/user-access/", "to": "/audit-resources/user-access/"}
  - {"from": "/info/updates/", "to": "/updates/"}
  - {"from": "/info/updates/archive/", "to": "/updates/archive/"}
  - {"from": "/info/announcements/", "to": "/omb/"}
permalink: "{{ redirect.from }}"
layout: redirect.njk
---