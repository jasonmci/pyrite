#!/bin/sh

nFiles=`cloc ./**/*.py --json | jq -r ".Python.nFiles"`
blank=`cloc ./**/*.py --json | jq -r ".Python.blank"`
comment=`cloc ./**/*.py --json | jq -r ".Python.comment"`
code=`cloc ./**/*.py --json | jq -r ".Python.code"`

echo "python.code:${code}|g" | nc -w 1 -u ec2-35-90-12-71.us-west-2.compute.amazonaws.com 8125
echo "python.comment:${comment}|g" | nc -w 1 -u ec2-35-90-12-71.us-west-2.compute.amazonaws.com 8125
echo "python.blank:${blank}|g" | nc -w 1 -u ec2-35-90-12-71.us-west-2.compute.amazonaws.com 8125
echo "python.files:${nFiles}|g" | nc -w 1 -u ec2-35-90-12-71.us-west-2.compute.amazonaws.com 8125
