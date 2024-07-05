---
layout: sidenav.njk
title: FAC data validations
meta:
  name: FAC data validations
  description: Documentation about the data migration from Census to GSA.
---

# {{title}}

The data coming into the FAC is validated in five distinct ways.

## In-form validations

The SF-SAC is made up of a collection of web forms and spreadsheets that are filled out by grantees and auditors. Within both the web forms and spreadsheets, we have input restrictions and validations that help people complete the forms correctly. 

Because it is difficult to add validations to spreadsheets in a way that works everywhere, this is one of the simplest validation layers in the FAC.

## Intake validations

The second layer of data validation is made up of many [intake validations]({{"intake-validations/" | absoluteUrl }}). Here, we transform the spreadsheet or form a user submits into a shape that is more manageable for valiation. We then apply many validations, one after another, to help ensure data quality. Where we find errors, we do our best to provide error messages that guide people to a correct submission.

Read more about our [intake validations]({{"intake-validations/" | absoluteUrl }}).

## Schema validations

A *schema* describes something's *form* or *shape*. For example, we might say the schema for a zip code is five digits followed by an optional hyphen and four more digits. A *schema validation* is where we look at a piece of data, and ask if everything about it has the right shape. 

Every form section in the SF-SAC has a shape. That shape is made up of the fields (names, zip codes, email addresses), and each piece of data in each field has a shape of its own. The SF-SAC schema validations make sure that a submission, after going through our intake validations, ends up in the right shape for storage.

Read more about our [schema validations]({{"schema-validations/" | absoluteUrl }}).

## Cross-validations

Because the SF-SAC is made up of multiple sections, we have to make sure the sections make sense with respect to each-other. Cross-validations look at the submission as a whole, and make sure everything is consistent *between* the SF-SAC sections. 

Read more about our [cross-validations]({{"cross-validations/" | absoluteUrl }}).

## Dissemination validations

The final step is to make sure that everything is ready for sharing with agencies and the public. This means we make sure every piece of data we're expecting as part of an SF-SAC submission is present and accounted for. Our goal is to block as many errors as possible; if we don't, then we'll have to [document the errors that get past us and fix them]({{"../curation/" | absoluteUrl}}).

Read more about our [dissemination validations]({{"dissemination-validations/" | absoluteUrl }}).
