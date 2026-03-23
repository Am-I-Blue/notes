#!/bin/bash

# Loop over all .md files in the current folder
for file in *.md; do
    # Skip index.md (any case)
    if [[ "${file,,}" == "index.md" ]]; then
        continue
    fi

    # Replace empty Date lines (case-insensitive)
    sed -i.bak '/^[Dd][Aa][Tt][Ee]:[[:space:]]*$/s//$0 1970-01-01/' "$file"
done

echo "Done! Empty Date lines replaced with 1970-01-01 (index.md skipped)."
