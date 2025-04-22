---
layout: sidenav.njk
title: Data curation
meta:
  name: General migration transforms
  description: Documentation about the data migration from Census to GSA.
---

# {{title}}

The Federal Audit Clearinghouse holds the record of Single Audit submissions from 2016-present. It is easy to think that data collected in the past "never changes," but as systems evolve, so must the data and the tools that access it. And, sometimes, the data itself must change or be cared for. 

## What is data curation?

**Curation** is the act of looking after a collection. We use this word intentionally to describe how we manage the data contained within the FAC, as it implies that we do not simply *collect* and *store* data, but we must also *monitor* and *improve* the quality of that data over time, where possible. Sometimes we engage in curatorial acts because of errors discovered by users (or ourselves), and sometimes because of changes to the data collection or system itself.

Our curation process follows 6 high-level steps.

## 1. Identify an issue in the data 

A member of the public, grantee, Federal resolution official, IG, or a member of the Clearinghouse may identify some issue in the data. It might involve a single record, or it might be systemic across many, many records.

## 2. Document the issue 

We document our [data concerns]({{"../concerns/" | absoluteUrl}}) publicly. The FAC data is public, and it is important for users and systems downstream to know about any concerns we have about the data.

## 3. Implement a data quality regression test 

A regression test is a test that *fails* because of a known problem. Once the problem is fixed, the test *passes*, indicating the problem no longer exists. That test is then run regularly, in the future, to ensure that the problem does not happen again. Not all data errors can have regression tests applied, but we will strive to do so to ensure the quality of data is ever-improving.

## 4. Communicate a solution 

The Clearinghouse, in consultation with appropriate agencies and advisory boards, will propose a solution via our [Decision Record process](https://github.com/GSA-TTS/FAC/blob/main/docs/architecture/decisions/0001-record-architecture-decisions.md).

## 5. Implement the solution 

The solution will be implemented and executed, acknowleging our ongoing feature roadmap.

## 6. Log the change

The curation process generates an internal audit log; we will also publish, publicly, the results of the action to our [curation log]({{"../curation-log/" | absoluteUrl }}). This provides a public record of the completion of the curatoral act and the results of our work.

