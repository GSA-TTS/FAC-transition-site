---
# Metadata
layout: home.njk
title: General migration transforms
meta:
  name: General migration transforms
  description: Documentation about the data migration from Census to GSA.
# Layout
eleventyComputed:
  eleventyNavigation:
    key: General transforms
    parent: Historic migration
in_page_nav: true
---

# {{title}} 

There are five general transforms that were applied consistency across all migrated data.

## Remove hyphens and pad ZIP codes

All ZIP codes in the Census data required specialized handling. We transformed ZIP codes by removing hyphens (if present) and adding a leading zero when necessary.

When we encountered a ZIP code
- If the ZIP is settings.GSA_MIGRATION, return it
- If the ZIP code has hyphen, remove the hyphen
- If the ZIP code has 4 or 8 digits, pads with a leading zero
- Returns the ZIP code if it has 5 digits or 9 digits (after padding if needed)

In any other case, we raised an error to iterate and handle the case. It is through this iterative process that we developed the rules above.

Code: [xform_remove_hyphen_and_pad_zip](https://github.com/GSA-TTS/FAC/blob/main/backend/census_historical_migration/transforms/xform_remove_hyphen_and_pad_zip.py)

## Retrieve UEI

We checked every migrated record for a UEI. If it was present, we used it. Otherwise, we used `GSA_MIGRATION`. All UEIs were then validated as part of our migration process.

Code: [xform_retrieve_uei](https://github.com/GSA-TTS/FAC/blob/main/backend/census_historical_migration/transforms/xform_retrieve_uei.py)

## String to boolean

Census represented Y/N values as the strings `"Y"` and `"N"`; the GSA data system internally represents these as the boolean values `True` and `False`. During migration, we needed to convert `"Y"` values to `True` and `"N"` values to `False`. 

Code: [string_to_bool](https://github.com/GSA-TTS/FAC/blob/main/backend/census_historical_migration/transforms/xform_string_to_bool.py)

## String to integer

In some cases, Census recorded numerical data as strings, where GSA represents numbers as numbers. This required a type conversion from strings to integers.

Where we expected values to be integers, we attempted a conversion, and raised errors where something non-convertable (e.g. `"N/A"`) was encountered.

Code: [string_to_int](https://github.com/GSA-TTS/FAC/blob/main/backend/census_historical_migration/transforms/xform_string_to_int.py)

## String to string

In some cases, Census stored a `NULL` value where we expected a string. We therefore had a (seemingly redundant) conversion called `string_to_string` that would make sure all values in a string-oriented field were actually strings. This may have meant converting a `NULL` value to the empty string, `""`.

Code: [string_to_string](https://github.com/GSA-TTS/FAC/blob/main/backend/census_historical_migration/transforms/xform_string_to_string.py)

## Uppercase Y or N

There were values that Census stored as `"Y"` or `"N"`, but sometimes stored a lowercase `"y"` or `"n"` instead. This code normalized those values for consistent processing, and raised errors if anything unexpected was encountered.

Code: [uppercase_y_or_n](https://github.com/GSA-TTS/FAC/blob/main/backend/census_historical_migration/transforms/xform_uppercase_y_or_n.py)
