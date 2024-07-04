---
layout: sidenav.njk
title: FAC data validations
meta:
  name: FAC data validations
  description: Documentation about the data migration from Census to GSA.
---

# {{title}}

The data coming into the FAC is validated through five distinct layers.

## In-form validations

The SF-SAC collection is made up of a collection of web forms and spreadsheets that are filled out and uploaded to fac.gov. Within both the web forms and spreadsheets, we have some input restrictions (e.g. making sure `Y` and `N` fields only contain `Y/N`) and validations that help grantees and auditors complete the forms correctly. It is difficult to add validations to spreadsheets in a way that works everywhere, so this layer is the simplest of our validation layers.

## Intake validations

The first layer of data validation is made up of many [intake validations]({{"intake-validations/" | absoluteUrl }}). This layer a sandwich of data transformation, validation, and then one more transformation to a form that will ultimately be used to store a user's submission. Each intake validation is a piece of code that does just one kind of validation. This lets us keep track of what each validation within the FAC does, and know exactly where those validations are applied.

Read more about our [intake validations]({{"intake-validations/" | absoluteUrl }}).

## Schema validations

A *schema* for a given piece of data is its form or shape. For example, we might say a zip code has the schema of five digits, and optionally, a hyphen followed by four more digits. A schema validation is where we look at a piece of data, and ask if everything about it has the right shape. 

Every form section in the SF-SAC has a shape. That shape is made up of the fields (names, zip codes, email addresses), and the data in those fields has a shape as well (zip codes and email addresses each have their own shape). The SF-SAC schema validations make sure that a submission, after going through our intake validations, ends up in the right shape for storage.

Read more about our [schema validations]({{"schema-validations/" | absoluteUrl }}).

## Cross-validations

Cross-validations look at the submission as a whole, and make sure everything is consistent *between* the SF-SAC sections. 

Read more about our [cross-validations]({{"cross-validations/" | absoluteUrl }}).

## Dissemination validations

The final step is to make sure that everything is where we expect it to be, before we consider a submission complete.

Read more about our [dissemination validations]({{"dissemination-validations/" | absoluteUrl }}).
