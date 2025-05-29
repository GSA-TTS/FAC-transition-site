---
layout: home.njk
title: Legacy and Versioning
meta:
  name: FAC API: Legacy and Versioning
  description: Information on FAC API versioning, legacy compatibility, tribal audits, and differences from prior systems.
eleventyComputed:
  eleventyNavigation:
    key: Legacy and Versioning
    parent: API resources
in_page_nav: true
---

# Legacy and Versioning

The FAC API was launched in 2023 to provide modern, structured access to federal single audit data. This page explains how the current system differs from previous versions, outlines versioning principles, and describes special handling for tribal and roll-up audits.

---

## API Versioning

The base path for the API is currently `/v1`. If future updates introduce changes that are not backward-compatible, we will increment the version number and preserve access to previous versions for a period of time.

All requests to the API must begin with the version prefix. For example:

```
GET /v1/general
```

This approach allows us to improve and expand the API without breaking existing implementations.

---

## Differences from Previous Systems

The FAC API replaces older systems that relied on bulk file downloads and ad hoc requests. Compared to prior data access mechanisms, the current API provides:

- Real-time access to structured data
- Improved consistency and validation
- Filtering, pagination, and sorting
- Clear documentation and version control
- Standardized error responses

This modernization enables easier integration with oversight tools, dashboards, and research systems.

---

## Handling Tribal and Roll-up Audits

The API includes specific fields and logic to support tribal governments and roll-up submissions (where one submission covers multiple entities).

### Tribal Governments

Tribal submissions are identified in the `is_tribal` field. You can filter for these submissions using:

```
GET /v1/general?is_tribal=true
```

This helps agencies, auditors, and researchers focus on submissions from tribal entities.

### Roll-up Submissions

Some audits cover multiple related entities (e.g., school districts or municipalities). These are known as roll-up submissions. The `is_rollup` field can be used to identify them:

```
GET /v1/general?is_rollup=true
```

Additional fields describe the number of entities included and other summary information. Roll-up audits are grouped and published with care to reflect this complexity while maintaining transparency.

---

## Summary

The FAC API has been designed to support long-term access to trustworthy audit data. Through versioning, structured endpoints, and special handling for legacy and roll-up cases, the API provides robust support for a wide range of users and use cases.

