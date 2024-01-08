---
layout: home.njk
title: FAC API rollup tutorial
meta:
  name: FAC API rollup tutorial
  description: A tutorial focused on the rollup fields in the API
rollups:
    ALN:
        rolled: CFDA
        orig:  CFDA table
        criteria: A combination of agency and program number
        output: A CFDA/ALN number
        censusdesc: FIXME
        code: https://github.com/GSA-TTS/fac-api-examples/tree/main/rollups/01-aln
    COGOVER:
        rolled: FIXME
        orig:  FIXME
        criteria: FIXME
        output: FIXME
        censusdesc: FIXME
        code: https://github.com/GSA-TTS/fac-api-examples/tree/main/rollups/02-cogover
    QCOSTS:
        rolled: QCOSTS
        orig: QCOSTS from Findings table
        criteria: "If any of the auditees findings have QCOSTS = Y (QCOSTS from Findings Table)"
        output: Then QCOSTS in General table = Y otherwise QCOSTS = N
        censusdesc: Indicate whether or not the audit disclosed any known questioned costs.
        code: https://github.com/GSA-TTS/fac-api-examples/tree/main/rollups/03-qcosts
    CYFINDINGS:
        rolled: CYFINDINGS
        orig:  Findings Table
        criteria: If any records in the Findings table
        output: "CYFINDINGS=Y"
        censusdesc: >
            Indicate whether or not current year findings affecting direct funds were reported
        code: https://github.com/GSA-TTS/fac-api-examples/tree/main/rollups/04-cyfindings
    TYPEREPORT_MP:
        rolled: TYPEREPORT_MP
        orig: TYPEREPORT_MP from CFDA (now `federal_awards`) table
        criteria: Combines all values (U, D, A, S) entered in the TYPEREPORT_MP field from CFDA
        output: >
            "U" if all TYPEREPORT_MP = U or the non-"U" values listed once
        censusdesc: Type of Report Issued on the Major Program Compliance
        code: https://github.com/GSA-TTS/fac-api-examples/tree/main/rollups/050-typereportmp
    MATERIALWEAKNESS_MP:
        rolled: MATERIALWEAKNESS_MP
        orig: MATERIALWEAKNESS from Findings table
        criteria: If any of the auditee’s findings have MATERIALWEAKNESS = Y
        output: Then MATERIAL WEAKNESS_MP = Y
        censusdesc: >
            Indicate whether any reportable condition/signficant deficiency was disclosed as a material weakness for a major program in the Schedule of Findings and Questioned Costs
        code: https://github.com/GSA-TTS/fac-api-examples/tree/main/rollups/06-materialweakness
    REPORTABLECONDITION_MP:
        rolled: REPORTABLECONDITION_MP
        orig: SIGNIFICANTDEFICIENCY from Findings Table
        criteria: If any of the auditee’s findings have SIGNIFICANTDEFICIENCY = Y
        output: Then the REPORTABLE CONDITION_MP = Y
        censusdesc: >
            Whether or not the audit disclosed a reportable condition/significant deficiency for any major program in the Schedule of Findings and Questioned Costs
        code: https://github.com/GSA-TTS/fac-api-examples/tree/main/rollups/07-reportable
    PYSCHEDULE:
        rolled: PYSCHEDULE
        orig: Question 3.d. on the Audit Info tab
        criteria: If there is any number other than 00 listed
        output: PYSCHEDULE=Y
        censusdesc: >
            Indicate whether or not the report includes a Summary Schedule of Prior Year Audit Findings
        code: https://github.com/GSA-TTS/fac-api-examples/tree/main/rollups/08-pysched
---

{% macro rollup(tag) %}
<a name="{{tag}}" />
<table class="usa-table">
  <caption>
    Rolling up the Census {{tag}} column.
  </caption>
  <tbody>
    <tr>
      <th scope="col">Rolled Up Census Field and Table</th>
      <td> {{ rollups[tag].rolled }} </td>
    </tr>
    <tr>
      <th scope="col">Originating Census Field and Table</th>
      <td> {{ rollups[tag].orig }} </td>
    </tr>
    <tr>
      <th scope="col">Criteria</th>
      <td> {{ rollups[tag].criteria }} </td>
    </tr>
    <tr>
      <th scope="col">Output</th>
      <td> {{ rollups[tag].output }} </td>
    </tr>
    <tr>
      <th scope="col">Census Data Dictionary description</th>
      <td> {{ rollups[tag].censusdesc }} </td>
    </tr>
    <tr>
      <th scope="col">FAC API example code</th>
      <td> <a href="{{ rollups[tag].code }}">{{ rollups[tag].code }}</a> </td>
    </tr>
  </tbody>
</table>
{% endmacro %}

# FAC API rollup tutorial

The FAC API follows the historical data format distributed by Census. This reflects a design choice to provide *some* consistency in the migration of systems and data from Census to GSA.

This tutorial will look at some of the fields "left behind" in the transition, and how those fields can easily be computed using the data already in the FAC's API.

## About this code

The code for this tutorial can be found in the [fac-api-examples](https://github.com/GSA-TTS/fac-api-examples) repository.

Sincere thanks are due HHS for providing documentation regarding many of these rollup fields. If you see space for improvement, please reach out via our [help desk](https://support.fac.gov/hc/en-us).

### Rollups covered

* [ALN (previously CFDA)](#ALN)
* [COGOVER](#COGOVER)
* [QCOSTS](#QCOSTS)
* [CYFINDINGS](#CYFINDINGS)
* [TYPEREPORT_MP](#TYPEREPORT_MP)
* [MATERIALWEAKNESS_MP](#MATERIALWEAKNESS_MP)
* [REPORTABLECONDITION_MP](#REPORTABLECONDITION_MP)
* [PYSCHEDULE](#PYSCHEDULE)

## Example: ALN (previously CFDA)

{{ rollup("ALN") }}

The ALN is a number with the shape `12.345`. Sometimes it is `12.RD`, or `12.U01`. Historically, it is sometimes even messier. 

The FAC does not distribute the ALN. It distributes the agency prefix and the program number. The agency prefix is the number to the left of the dot, and the program number is the value to the right of the dot. 

Given a report ID, there may be multiple awards. These will be in the `federal_awards` endpoint.

For each of those, a programmer will want two fields: the `federal_agency_prefix` and `federal_award_extension`. 

To get from those two to a single ALN, they should be combined as a string with a `.` in the middle. 

### Output

```
2023-06-GSAFAC-0000000002 ['84.027', '84.027', '84.173', '84.173', '84.010', '84.367', '84.424', '84.424', '84.425', '84.425', '84.425', '84.425', '84.425', '84.425', '84.425', '10.553', '10.555', '10.575', '10.649', '10.555']
2023-06-GSAFAC-0000000688 ['14.155', '14.195', '14.018', '14.228']
2022-12-GSAFAC-0000001061 ['16.557', '16.524', '16.841', '16.526', '93.497', '16.575']
```

## Example: Given a report ID, calculate COGOVER

{{ rollup("COGOVER") }}

Every audit has an agency who is either cognizant or has oversight. The FAC populates one of two fields in every record: `cognizant_agency` or `oversight_agency`. Only one of the two fields will ever be populated.

Census included a field called `cog_over` that would be set to `C` if the audit had an agency that was cognizant, and `O` if the audit had an agency who had oversight. 

#### Output

```
2023-06-GSAFAC-0000000002 O
2023-06-GSAFAC-0000000688 O
2022-12-GSAFAC-0000001061 O
```

## Example: Are there questioned costs?

{{ rollup("QCOSTS") }}

The `QCOSTS` rollup did a bit more work. In the original table, this field looked at all questioned costs fields, and if any of them were "yes," then this field was "yes."

```
IF the audit has any findings AND one of the questioned cost fields are `true`
THEN this is true
ELSE false
```

To compute this using the new FAC data, we need to pull those questioned costs fields and do the check.

### Output

From the first 30 audits that come back, three of them have findings. 

```
2023-01-GSAFAC-0000000854 N
2023-06-GSAFAC-0000000688 N
2022-12-GSAFAC-0000001061 N
2023-06-GSAFAC-0000000733 N
2023-06-GSAFAC-0000001206 N
2023-05-GSAFAC-0000001215 N
2021-06-GSAFAC-0000000998 N
2023-06-GSAFAC-0000002250 N
2022-12-GSAFAC-0000000861 N
2023-06-GSAFAC-0000000779 N
2023-06-GSAFAC-0000000800 N
2023-04-GSAFAC-0000000495 N
2023-02-GSAFAC-0000000773 N
2023-03-GSAFAC-0000000812 Y
2023-06-GSAFAC-0000000127 N
2023-06-GSAFAC-0000000050 N
2023-06-GSAFAC-0000000198 N
...
```

## Example: Are there current year findings?

{{ rollup("CYFINDINGS") }}

The `CYFINDINGS` looks at the `/findings` endpoint for a given report ID. If there are findings, it is `True`. If there are no findings, it is `False`.


### Output

From the first 5 audits that come back, none have findings. 

```
2023-01-GSAFAC-0000000854 N
2023-06-GSAFAC-0000000688 N
2022-12-GSAFAC-0000001061 N
2023-06-GSAFAC-0000000733 N
2023-06-GSAFAC-0000001206 N
```

## Example: Major program report type?

{{ rollup("TYPEREPORT_MP") }}

The logic for this rollup is set-based.

```
"U" if all TYPEREPORT_MP = U or the non-"U" values listed once
```

In Python, we've unpacked this in the example code as follows:

```
    types = set()
    for art in json:
        if art["audit_report_type"] != "":
            types.add(art["audit_report_type"])
    if types == {"U"}:
        return "U"
    elif "U" not in types: 
        return set_to_string(types)
    else:
        return "ERR"    
```

For each row in `federal_awards`, we look at the report type, and add it to a `set`. If the end result is that the entirety of the set is `{"U"}`, we return `"U"`. Otherwise, we collapse the set to a single string (e.g. `"AD"`). We include the "ERR" case, but do not expect it to be possible to reach. 

### Output

```
2023-06-GSAFAC-0000000198 U
2022-12-GSAFAC-0000000165 U
2023-06-GSAFAC-0000000339 U
2023-06-GSAFAC-0000001644 U
2023-06-GSAFAC-0000000967 U
```

## Example: 

{{ rollup("MATERIALWEAKNESS_MP") }}

This rollup is straight-forward:

```
If any of the auditee’s findings have MATERIALWEAKNESS = Y	
Then MATERIAL WEAKNESS_MP = Y
```

The FAC stores this value in the `general` table under the key `is_internal_control_material_weakness_disclosed`. Note that the FAC stores *yes* values as `"Yes"`, and *no* values as `"No"`. The example code maps these back to `Y/N` to demonstrate mapping values to the old-style. 

### Output

```
2023-01-GSAFAC-0000000854 N
2023-06-GSAFAC-0000000688 N
2022-12-GSAFAC-0000001061 N
2023-06-GSAFAC-0000000733 N
2023-06-GSAFAC-0000001206 N
2023-05-GSAFAC-0000001215 N
2021-06-GSAFAC-0000000998 N
2023-06-GSAFAC-0000002250 N
2022-12-GSAFAC-0000000861 N
2023-06-GSAFAC-0000000779 N
2023-06-GSAFAC-0000000800 N
2023-04-GSAFAC-0000000495 N
2023-02-GSAFAC-0000000773 N
2023-03-GSAFAC-0000000812 Y
2023-06-GSAFAC-0000000127 N
2023-06-GSAFAC-0000000050 N
2023-06-GSAFAC-0000000198 N
2022-12-GSAFAC-0000000165 N
2023-06-GSAFAC-0000000339 N
2023-06-GSAFAC-0000001644 N
```

## Example: 

{{ rollup("REPORTABLECONDITION_MP") }}

This is almost identical in construction to the previous example.

### Output

```
2023-01-GSAFAC-0000000854 N
2023-06-GSAFAC-0000000688 N
2022-12-GSAFAC-0000001061 N
2023-06-GSAFAC-0000000733 N
2023-06-GSAFAC-0000001206 N
2023-05-GSAFAC-0000001215 N
2021-06-GSAFAC-0000000998 N
2023-06-GSAFAC-0000002250 N
2022-12-GSAFAC-0000000861 N
2023-06-GSAFAC-0000000779 N
2023-06-GSAFAC-0000000800 N
2023-04-GSAFAC-0000000495 N
2023-02-GSAFAC-0000000773 N
2023-03-GSAFAC-0000000812 Y
2023-06-GSAFAC-0000000127 N
2023-06-GSAFAC-0000000050 N
2023-06-GSAFAC-0000000198 N
2022-12-GSAFAC-0000000165 N
2023-06-GSAFAC-0000000339 N
2023-06-GSAFAC-0000001644 N
```

## Example: Previous year findings?

{{ rollup("PYSCHEDULE") }}

This involves looking at the array of values in `agencies_with_prior_findings` in `general`, splitting on the string (and stripping any spaces for good measure) and asking whether or not any agencies had findings. 

In Python, we'll do this by converting the list to a set, and deciding if the set is non-empty.

```
    # If there is any number other than 00 listed	
    # Then PYSCHEDULE=Y
    set_of_agencies = set()
    for find in json:
        numbers = list(filter(lambda n: n != "00", 
                         [n.strip() for n in find[AWPF].split(',')]
                         ))
        set_of_agencies.update(numbers)
    # An empty set is "false" in python
    return bool(set_of_agencies)
```

### Output

```
2023-01-GSAFAC-0000000854 N
2023-06-GSAFAC-0000000688 N
2022-12-GSAFAC-0000001061 N
2023-06-GSAFAC-0000000733 N
2023-06-GSAFAC-0000001206 N
2023-05-GSAFAC-0000001215 N
2021-06-GSAFAC-0000000998 N
2023-06-GSAFAC-0000002250 N
2022-12-GSAFAC-0000000861 N
2023-06-GSAFAC-0000000779 Y
2023-06-GSAFAC-0000000800 N
2023-04-GSAFAC-0000000495 N
...
```

<!-- 

<a name="" />

## Example: 

{{ rollup("") }}

### Output

```
```

-->