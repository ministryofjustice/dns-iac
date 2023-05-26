#!/usr/bin/env bash

# Loop over all Terraform files
for file in $( find ./terraform -maxdepth 1 -type f -name '*.tf' ); do

  echo "Processing ${file}"

  # Determine if the file has a zone definition
  if [[ "$( grep -E 'source = "./modules/route53/zone"' ${file} || echo "false" )" == "false" ]]; then

    # If not, skip it
    echo "No zone definition found, skipping"
    continue

  else

    echo "Zone definition found, continuing"

    # Assuming filename is ${ZONE_NAME}.tf
    baseName=$( basename ${file} .tf )
    stateKey=$( echo ${baseName} | sed 's|\.|-|g' )

    # Create a directory for the zone
    mkdir --parents terraform/${baseName}

    # Copy the template file
    cp scripts/monolith-breaker/templates/terraform.tf.tmpl terraform/${baseName}/terraform.tf

    # Update the state key
    sed -i "s|TERRAFORM_STATE_KEY|${stateKey}|g" terraform/${baseName}/terraform.tf

    # Initialise the new directory
    pushd terraform/${baseName}

    ## Copy the zone file
    cp ../${baseName.tf} main.tf

    terraform init

    terraform state pull > terraform.tfstate

    popd

    # Prepare old directory for removal
    pushd

    terraform init

    terraform state pull > terraform.tfstate

    popd

    # Move resources to new state - TODO: Update resource definitions with a dynamic list from hcl2json
    terraform state mv \
      -state=terraform/terraform.tfstate \
      -state-out=terraform/${baseName}/terraform.tfstate \
        module.foo \
        module.foo

    # Push the new state to S3

    pushd terraform/${baseName}

    terraform state push terraform.tfstate

    popd

    # Push old state to S3

    pushd terraform

    terraform state push terraform.tfstate

    popd

    # Apply new state, don't apply old state because it takes AGES

    pushd terraform/${baseName}

    terraform apply -auto-approve

    popd

  fi

done