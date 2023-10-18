#!/bin/bash

URL="${URL:-https://api-staging.fac.gov}"

echo Generating docs from ${URL}

for version in v1_0_2
do  
    echo "Generating docs for $version"
    
    docker run \
            -v ${PWD}:/input \
            -v ${PWD}/src/_includes/api/${version}:/output \
            fac/o2u \
            --template tools/openapi2uswds/template.html \
            --api-key $API_GOV_KEY \
	        --jwt-token $JWT \
            --url $URL

    # Remove the file that has everything in it. We only want
    # the pieces-parts.
    rm -f src/_includes/api/${version}/api-documentation.html
done
