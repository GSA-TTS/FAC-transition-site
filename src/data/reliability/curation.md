---
# Metadata
layout: home.njk
title: How we prepare the data
meta:
  name: How we prepare the data
  description: How the Federal Audit Clearinghouse cleans, fixes, and transforms data for public use.
# Layout
eleventyComputed:
  eleventyNavigation:
    key: Curation
    parent: Data
in_page_nav: true
---

# How we prepare the data

We want you to trust the data in the Federal Audit Clearinghouse (FAC). That means we don't just collect and store information-we also maintain and improve it over time. This page explains the steps we take to clean up, fix, and prepare the data you see on this site.

## Why do we make changes?

Sometimes we discover mistakes in the data. Other times, the systems or rules that shape the data change. Our job is to keep the data accurate, consistent, and useful for public oversight.

---

## Our curation process

Here's what happens when we find a problem:

### 1. We identify the issue  
A data issue might come from a user, an inspector general, or someone on our team. It could be a typo in one record or a widespread issue across many.

### 2. We document it  
We publish known issues on our [data concerns]({{"../concerns/" | absoluteUrl}}) page. Transparency matters, and it's important to let users know what we've found.

### 3. We write a test  
When possible, we write a test that will fail if the problem happens again. This helps us catch the issue automatically in the future.

### 4. We propose a fix  
We share our proposed solution through our [Decision Record process](https://github.com/GSA-TTS/FAC/blob/main/docs/architecture/decisions/0001-record-architecture-decisions.md). We may consult with other federal offices before finalizing a plan.

### 5. We fix the data  
Once a fix is approved, we update the affected records. These changes are always made with care and according to our data policies.

### 6. We log what changed  
We track what we changed, both in an internal log and in a public [curation log]({{"../curation-log/" | absoluteUrl}}). This way, everyone can see what was done and why.

---

## How we transform tables

As part of our migration from Census to GSA, we had to clean up old tables to match new standards. Here are examples of the changes:

- **Renaming fields** for clarity (e.g., `awd_amt` became `award_amount`)
- **Splitting combined fields** (e.g., one field holding multiple years was split into separate year-based fields)
- **Fixing formatting** (e.g., removing stray characters or aligning date formats)

These transformations don't change the meaning of the data. They make it easier to understand, use, and compare.

---

## General adjustments we make

In addition to fixing specific problems, we make ongoing improvements such as:

- Filling in missing values when we can verify them
- Correcting data types (e.g., changing a ZIP code stored as a number into a string to preserve leading zeroes)
- Ensuring consistency across years, even when the original format changed
