---
layout: sidenav.njk
title: SF-SAC schema validations
meta:
  name: SF-SAC schema validations
  description: Documentation about the data migration from Census to GSA.
---

# {{title}}

Schema validations involve validating the overall shape of the data, from the big picture all the way down to the details.

## The big picture: the shape of data

Once the intake validations have passed, we convert our spreadsheet-shaped data into something that reflects the meaning of the data. For example, here is how the FAC represents part of a Federal Awards sheet:

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

This representation, again using the [Javascript Object Notation](https://www.json.org/json-en.html), connects part of the data in meaningful ways. For example, we cluster information about the cluster and total cluster expenditures separate from information about the specific Federal program that the funding was issued under. Every form section has its own JSON representation, which reflects the SF-SAC and the meaningful connections between the data in that specific section.

## Validating the shape

The FAC uses a technology called [JSON Schemas](https://json-schema.org/) to validate the data at this point. JSON Schemas give us a way of saying (for example) "We expect a UEI to be twelve characters long, and to follow a specific set of rules... otherwise, it is not a UEI." Below is a portion of the schema for the Federal Awards form section.

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

To give a sense of how this becomes turtles all the way down, we break apart things like UEIs into their component pieces, making sure they're correct in shape:

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

That UEI validation makes sure that UEIs entered into our system follow the rules defined for UEIs by SAM.gov. First, we make sure it is a string of length 12. Then, we make sure it starts with a valid letter. Moreso, we make sure there are not 9 digits in a row in the middle of the UEI; this is to prevent confusion with EINs and SSNs. Every piece of data coming into the FAC undergoes this level of scrutiny via our JSON Schema validations.

The [complete schema for the Federal Awards](https://github.com/GSA-TTS/FAC/blob/826167b1e4142f6723177a161e60858053a99c16/backend/schemas/source/sections/FederalAwards.schema.jsonnet) section is several hundred lines long. It specifies everything we expect to see in this section of the form. We have a schema for every part of the data that comes into the FAC.

## "You shall not pass"

When the GSA FAC first opened its doors, we relied heavily on our JSON Schemas. They performed *marvelously*. We blocked all kinds of submissions.

However, the error messages were *horrible*. Completely incomprehensible, sometimes even to the GSA FAC team. This is why the [intake validations](intake-validations/) came into being. At this point, the GSA team expects:

1. A user should never see an error from a JSON Schema. If that happens, we add a new intake validation with a user-centered, helpful error message.
2. JSON Schemas should be our backstop; they make sure, after transforming our data, that we made no mistakes.

These expectations have served the team well. Users get good support from the messages provided by our intake validations, and the schemas have prevented us from storing data that is "wrong" in shape. 

## Cross-validations

Once we have a complete submission, we check for correctness across the entire submission. We call these [cross-validations]({{ "../cross-validations/" | absoluteUrl }})