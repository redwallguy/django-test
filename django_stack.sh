#!/usr/bin/env bash
source venv/bin/activate
#trap catches EXIT signals and first executes commands in quotes before exiting
trap '[ -n "$(jobs -p)" ] && kill $(jobs -p);pkill -f "python3 manage.py runserver"' EXIT
export SERVICES=s3
localstack --debug start > localstack_stdlogs.txt 2> localstack_logs.txt &
awslocal s3 mb s3://test
awslocal s3api put-bucket-acl --bucket test --acl public-read >> localstack_logs.txt
python3 manage.py collectstatic
python3 manage.py runserver --verbosity 2 \
--settings=django_test_proj.devsettings > django_stdlogs.txt 2> django_logs.txt &
while :
do
  sleep 10
done
