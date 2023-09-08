#!/bin/bash

for version in v1_0_0_beta 
do  
    echo "Generating docs for $version"
    
    docker run \
            -v ${PWD}:/input \
            -v ${PWD}/src/_includes/api/${version}:/output \
            fac/o2u \
            --template tools/openapi2uswds/template.html \
            --api-key $API_GOV_KEY \
            --url https://api-staging.fac.gov

    # Remove the file that has everything in it. We only want
    # the pieces-parts.
    rm src/_includes/api/${version}/api-documentation.html
done
