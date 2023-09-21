#!/bin/bash
set -o errexit

templates=(
	"additional-ueis-workbook.json"
	"audit-findings-text-workbook.json"
	"corrective-action-plan-workbook.json"
	"federal-awards-audit-findings-workbook.json"
	"federal-awards-workbook.json"
	"notes-to-sefa-workbook.json"
	"secondary-auditors-workbook.json"
)

schemas=(

)

instructions=(
	"InstructionsSecondaryAuditors.libsonnet"
	"InstructionsFederalAwardsFindings.libsonnet"
	"InstructionsAdditionalUEIs.libsonnet"
	"InstructionsCorrectiveActionPlan.libsonnet"
	"InstructionsFederalAwards.libsonnet"
	"InstructionsFederalAwardsAuditFindingsText.libsonnet"
	"InstructionsFederalAwardsFindings.libsonnet"
	"InstructionsNotestoSEFA.libsonnet"
	"InstructionsSecondaryAuditors.libsonnet"
)


# FIXME: We have to switch to the branch that is a prod tag 
# for this script. We need to pull instructions and workbooks from a production
# tag, otherwise we will get dynamic changes from main. 
# ... when the time for that change comes, anyway.

git clone --branch lh/workbook-instruction-updates https://github.com/GSA-TTS/FAC wbi

for file in ${instructions[@]}; do
	cp wbi/backend/schemas/source/excel/libs/${file} src/_data/workbooks/${file}
	base=$(basename "${file}" .libsonnet)
	jsonnet src/_data/workbooks/${file} >"src/_data/workbooks/${base}.json"
done

rm -rf wbi

git clone https://github.com/GSA-TTS/FAC wbs-main

for file in ${templates[@]}; do
	cp wbs-main/backend/schemas/output/excel/json/${file} src/_data/workbooks/${file}
done


# Copy in the workbook templates
cp wbs-main/backend/schemas/output/excel/xlsx/*.xlsx assets/workbooks/

rm -rf wbs-main
