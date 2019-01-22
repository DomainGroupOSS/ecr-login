#!/bin/sh

while true; do
	date
	if [[ "" = "$REGISTRY_IDS" ]]' then
		aws ecr --region=$AWS_REGION get-login | /bin/sh
	else
		aws ecr --region=$AWS_REGION get-login --registry-ids REGISTRY_IDS | /bin/sh
	fi
	sleep 500
done

