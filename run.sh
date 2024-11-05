#!/usr/bin/env bash

run_gcp_auth(){

    # Change to run on the correct app dir
    cd /var/app || { echo "Failure, /var/app dir doesn't exists."; exit 10; }

    # Google Cloud Auth check
    if [[ -f "/home/everysk/.config/gcloud/application_default_credentials.json" ]];
    then
        echo "Google cloud login enabled."
    else
        # Need to access browser with CTRL + Click on the link and copy the token generated
        /opt/google-cloud-sdk/bin/gcloud auth application-default login --no-launch-browser
        # Needed for user on host machine access the new files
        chmod +r /home/everysk/.config/gcloud/ -R
    fi

}

case $1 in
    init)
        run_gcp_auth
    ;; 

    *)
        echo "Option not found."
        exit 1
    ;;
esac