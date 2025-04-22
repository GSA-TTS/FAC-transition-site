---
# Metadata
layout: home.njk
title: SF-SAC schema validations
meta:
  name: SF-SAC schema validations
  description: Documentation about the data migration from Census to GSA.
# Layout
eleventyComputed:
  eleventyNavigation:
    key: Schema validations
    parent: Validations
in_page_nav: true
---

# {{title}}

Once we are done with our [intake validations]({{"../intake-validations/" | absoluteUrl}}), we convert our spreadsheet-oriented data representation into something that better reflects the meaning of the data we're collecting. But, before we store that data, we apply a *schema validation* to that data.

Schema validations involve validating the overall shape of the data, from the big picture all the way down to the details.

## Data has a shape?

All data has a shape. Simple data has simple shapes. For example:

* We could say that counting numbers are just digits. `3`, `5`, and `8` are all counting numbers.
* We might say that currency has a currency indicator, some number of digits, a decimal point, and two digits after the decimal point. For example, `$3.14` and <code>&pound;1.37</code> would then both be examples of numbers that represent currency.
* A zip code might be described as five digits, and sometimes it is allowed to have a hyphen and another four digits. When we describe zip codes as having this shape, both `40404` and `02492-1200` are zip codes.

More complex data has more complex shapes. In some parts of the world, people think names have three parts: a first name, a middle name, and a surname. 

```
{
  "first_name": "Alexander",
  "middle_name": "",
  "surname": "Hamilton"
}
```

Oh no! We found someone without a middle name! Should we... leave it blank? Do we validate that name as... correct? (This is the kind of question the FAC team has to ask *all the time*.) The point is that a *name* is something that has *parts*, in a way that numbers usually do not.

In the same spirit, the FAC converts the data collected via spreadsheet into a structure that gives meaningful names to each part of the data, and groups parts of the data where it makes sense to. Below is an example of part of one submission's Federal award data.

```
"FederalAwards": {
        "auditee_uei": "ABCDEFGHIJKL",
        "federal_awards": [
            {
                "cluster": {
                    "cluster_name": "RESEARCH AND DEVELOPMENT",
                    "cluster_total": 3419734
                },
                "program": {
                    "is_major": "Y",
                    "program_name": "FISHERIES DEVELOPMENT AND UTILIZATION 
                                     RESEARCH AND DEVELOPMENT GRANTS AND 
                                    COOPERATIVE AGREEMENTS PROGRAM",
                    "amount_expended": 32261,
                    "audit_report_type": "U",
                    "federal_agency_prefix": "11",
                    "federal_program_total": 209726,
                    "three_digit_extension": "427",
                    "number_of_audit_findings": 0,
                    "additional_award_identification": "NA15NMF4270262"
                },
                "subrecipients": {
                    "is_passed": "N"
                },
                "award_reference": "AWARD-0001",
                "loan_or_loan_guarantee": {
                    "is_guaranteed": "N"
                },
                "direct_or_indirect_award": {
                    "is_direct": "Y"
                }
            },
            ...
```

This representation, again using the [Javascript Object Notation](https://www.json.org/json-en.html), connects part of the data in meaningful ways. For example, we group information about the cluster and total cluster expenditures separate from information about the specific Federal program that the funding was issued under. Every form section has its own JSON representation, which reflects the SF-SAC and the meaningful connections between the data in that specific section.

## Validating the shape

The FAC uses a technology called [JSON Schemas](https://json-schema.org/) to validate this complex data shape. JSON Schemas give us a way of saying "we expect a Federal awards sheet to have a UEI, a list of awards, and a total expended." The schema below does exactly that.

```
local FederalAwards = Types.object {
  additionalProperties: false,
  properties: {
    auditee_uei: Base.Compound.UniqueEntityIdentifier,
    federal_awards: Types.array {
      items: FederalAwardEntry,
    },
    total_amount_expended: Types.number,
  },
  required: ['auditee_uei', 'total_amount_expended'],
  title: 'FederalAward',
  version: 20230408,
};
```

This tiny bit of the schema tells us that a valid JSON document representing Federal Awards will have three pieces: 

1. An `auditee_uei`, which will follow rules for what makes a valid `UniqueEntityIdentifier`
2. A list of `federal_awards`, where each element of the list will look like a `FederalAwardEntry`
3. A `total_amount_expended`, which should be a number.

The total expended has a simple shape; it is a number. The `FederalAwardEntry` is yet another complex shape that has to be validated; if any one award entry does not validate, the entire thing fails. Similarly, we have to break the UEI down, because UEIs are actually pretty complex, even though they are only 12 characters long. Here are all of the rules that have to be applied to validate a UEI:

```
local REGEX_UEI_ALPHA = 'A-HJ-NP-Z';
local REGEX_UEI_LEADING_CLOISTER = '[' + REGEX_UEI_ALPHA + '1-9]';
local REGEX_UEI_BODY_CLOISTER = '[' + REGEX_UEI_ALPHA + '0-9]';

local type_uei = Types.string {
  allOf: [
    // Is a string
    {
      minLength: 12,
      maxLength: 12,
    },
    {
      pattern: '^'
               + REGEX_UEI_LEADING_CLOISTER
               + REGEX_UEI_BODY_CLOISTER
               + '+$',
    },
    // Does not have 9 digits in a row
    {
      pattern: '^(?!'
               + REGEX_UEI_LEADING_CLOISTER
               + '+'
               + REGEX_UEI_BODY_CLOISTER
               + '*?[0-9]{9})'
               + REGEX_UEI_BODY_CLOISTER
               + '*$',
    },
    // Does not start with 9 digits in a row
    {
      pattern: '^(?![0-9]{9})',
    },
  ],
};
```

That UEI validation makes sure that UEIs entered into our system follow the rules defined for UEIs by SAM.gov. First, we make sure it is a string of length 12. Then, we make sure it starts with a valid letter. Moreso, we make sure there are not 9 digits in a row in the middle of the UEI; this is to prevent confusion with EINs and SSNs. 

The [complete schema for the Federal Awards](https://github.com/GSA-TTS/FAC/blob/826167b1e4142f6723177a161e60858053a99c16/backend/schemas/source/sections/FederalAwards.schema.jsonnet) section is several hundred lines long. It specifies everything we expect to see in this section of the form. We have a schema for every part of the data that comes into the FAC.

Every section of the SF-SAC has a schema just like this, making sure that the shape of the data in every section is validated all the way down.

## Defense in depth

The JSON Schemas provide a rigorous validation of the data, but do not provide errors that are friendly to users. This is why the [intake validations]({{'/data/reliability/validations/intake-validations/' | htmlBaseUrl(baseUrl)}}) came into being. At this point, the FAC team expects:

1. A user should never see an error from a JSON Schema. If that happens, we add a new intake validation with a user-centered, helpful error message.
2. JSON Schemas should be our backstop; they make sure, after transforming our data, that we made no mistakes.

## Cross-validations

Once we have a complete submission, we check for correctness across the entire submission. We call these [cross-validations]({{'/data/reliability/validations/cross-validations/' | htmlBaseUrl(baseUrl)}}).
