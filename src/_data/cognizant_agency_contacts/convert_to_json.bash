# Read all CSVs in the working directory.
# Covert them to JSON, and save them to the working directory.
for csvf in `ls *.csv`; do
    echo Converting $csvf
    base="${csvf%.csv}"
    cat $csvf | \
        python -c 'import csv, json, sys; print(json.dumps([dict(r) for r in csv.DictReader(sys.stdin)]))' \
        > ./$base.json
    sed -i -e 's/ \"/\"/g' ./$base.json
    sed -i -e 's/\\u00a0//g' ./$base.json
    sed -i -e 's/(//g' ./$base.json
    sed -i -e 's/)//g' ./$base.json
done

cat cognizant_agency_contacts_20250609.json | jq "." > cognizant_agency_contacts.json
