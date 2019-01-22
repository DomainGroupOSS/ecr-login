#!/bin/sh

while true; do
	date
	aws ecr --region=$AWS_REGION get-login --registry-ids REGISTRY_IDS | /bin/sh
	sleep 500
done

