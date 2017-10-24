bosh delete-env ~/workspace/bosh-deployment/bosh.yml \
    --state=state.json \
    --vars-store=creds.yml \
    -o ~/workspace/bosh-deployment/gcp/cpi.yml \
    -o ~/workspace/bosh-deployment/external-ip-not-recommended.yml \
    -o ~/workspace/bosh-deployment/jumpbox-user.yml \
    -v external_ip=${BOSH_DIR_IP} \
    -v director_name=bosh-director \
    -v internal_cidr=10.0.0.0/24 \
    -v internal_gw=10.0.0.1 \
    -v internal_ip=10.0.0.6 \
    --var-file gcp_credentials_json=~/Downloads/credentials.json \
    -v project_id=${GCP_PROJECT_ID} \
    -v zone=${GCP_ZONE} \
    -v tags=[internal] \
    -v network=bosh-vpc \
    -v subnetwork=bosh-subnet