#!/bin/sh

while true; do
	date
	aws ecr --region=$AWS_REGION get-login | /bin/sh
	sleep 500
done

