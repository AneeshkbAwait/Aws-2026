#!/bin/bash

set -euo pipefail

NUM1=$1
NUM2=$2

SUM=$((NUM1 + NUM2))

# Adding Sum to $GITHUB_OUTPUT variable to make it available for next step in the same job or to another Job
echo "Sum=$SUM" >> $GITHUB_OUTPUT
echo "Summed value passed to output variable for access...................."

echo "Printing sum in current step= "$SUM

# Write to GitHub Actions Summary to Actions page in GitHub UI
{
  echo "# Addition Workflow Results"
  echo ""
  echo "| Parameter | Value |"
  echo "|---|---:|"
  echo "| First Number | $NUM1 |"
  echo "| Second Number | $NUM2 |"
  echo "| **Final Sum** | **$SUM** |"
  echo ""
  echo "### Execution Status"
  echo "Addition completed successfully!"
} >> "$GITHUB_STEP_SUMMARY"