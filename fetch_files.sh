#!/bin/bash
set -o errexit

git clone https://github.com/GSA-TTS/FAC wbs-main

# Copy in the workbook templates
cp wbs-main/backend/schemas/output/excel/xlsx/*.xlsx assets/workbooks/

rm -rf wbs-main
