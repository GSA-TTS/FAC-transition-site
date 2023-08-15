#!/bin/bash

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
	"InstructionsSecondaryAuditors.libsonnet"
)

git clone --branch lh/workbook-instructions https://github.com/GSA-TTS/FAC wbi

for file in ${templates[@]}; do
	cp wbi/backend/schemas/output/excel/json/${file} src/_data/workbooks/${file}
done

for file in ${instructions[@]}; do
	cp wbi/backend/schemas/source/excel/libs/${file} src/_data/workbooks/${file}
	base=$(basename "${file}" .libsonnet)
	jsonnet src/_data/workbooks/${file} >"src/_data/workbooks/${base}.json"
done

rm -rf wbi
