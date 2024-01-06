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
        code: 
    PYSCHEDULE:
        rolled: PYSCHEDULE
        orig: Question 3.d. on the Audit Info tab
        criteria: If there is any number other than 00 listed
        output: PYSCHEDULE=Y
        censusdesc: >
            Indicate whether or not the report includes a Summary Schedule of Prior Year Audit Findings
        code: 
    TYPEREPORT_MP:
        rolled: TYPEREPORT_MP
        orig: TYPEREPORT_MP from CFDA table
        criteria: Combines all values (U, D, A, S) entered in the TYPEREPORT_MP field from CFDA
        output: >
            "U" if all TYPEREPORT_MP = U or the non-"U" values listed once
        censusdesc: Type of Report Issued on the Major Program Compliance
        code: 
    MATERIALWEAKNESS_MP:
        rolled: MATERIALWEAKNESS_MP
        orig: MATERIALWEAKNESS from Findings table
        criteria: If any of the auditee’s findings have MATERIALWEAKNESS = Y
        output: Then MATERIAL WEAKNESS_MP = Y
        censusdesc: >
            Indicate whether any reportable condition/signficant deficiency was disclosed as a material weakness for a major program in the Schedule of Findings and Questioned Costs
        code: 
    REPORTABLECONDITION_MP:
        rolled: REPORTABLECONDITION_MP
        orig: SIGNIFICANTDEFICIENCY from Findings Table
        criteria: If any of the auditee’s findings have SIGNIFICANTDEFICIENCY = Y
        output: Then the REPORTABLE CONDITION_MP = Y
        censusdesc: >
            Whether or not the audit disclosed a reportable condition/significant deficiency for any major program in the Schedule of Findings and Questioned Costs
        code: 
---

{% macro rollup(tag) %}
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

### Rollups covered

* [ALN (previously CFDA)](#aln)
* [COGOVER](#cogover)
* [QCOSTS](#qcosts)


<a name="aln" />

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

<a name="cogover" />

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

<a name="qcosts" />

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
2023-06-GSAFAC-0000000002 False
2023-06-GSAFAC-0000000688 False
2022-12-GSAFAC-0000001061 False
2023-06-GSAFAC-0000000733 False
2022-12-GSAFAC-0000000192 False
2023-03-GSAFAC-0000000307 False
2022-12-GSAFAC-0000000861 False
2023-06-GSAFAC-0000000087 False
2022-12-GSAFAC-0000000172 False
2023-06-GSAFAC-0000000800 False
2022-12-GSAFAC-0000000123 False
2023-04-GSAFAC-0000000495 False
2023-03-GSAFAC-0000000812 True
2023-06-GSAFAC-0000000206 False
2023-06-GSAFAC-0000000050 False
2023-06-GSAFAC-0000000198 False
2022-06-GSAFAC-0000000652 True
2023-01-GSAFAC-0000000036 False
2023-06-GSAFAC-0000000804 False
2023-02-GSAFAC-0000000353 False
2023-03-GSAFAC-0000001140 False
2023-06-GSAFAC-0000000280 False
2023-07-GSAFAC-0000001016 False
2023-01-GSAFAC-0000001122 False
2023-05-GSAFAC-0000000550 False
2023-05-GSAFAC-0000001052 False
2022-12-GSAFAC-0000000152 True
2022-12-GSAFAC-0000000193 False
2023-06-GSAFAC-0000000462 False
2023-04-GSAFAC-0000000116 False
```

