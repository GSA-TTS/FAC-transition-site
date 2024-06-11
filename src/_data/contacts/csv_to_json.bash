for csvf in `ls *.csv`; do
    echo Converting $csvf
    base="${csvf%.csv}"
    cat $csvf | \
        python -c 'import csv, json, sys; print(json.dumps([dict(r) for r in csv.DictReader(sys.stdin)]))' \
        > ./$base.json
done