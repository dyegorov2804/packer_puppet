#!/bin/bash -e

puppet_branch=development
additional_options=""


function usage() {
    EXIT_CODE=${1:-0}

    echo
    echo "Usage $0 [-t TYPE] [-b BRANCH] [-d]"
    echo
    echo '    -t TYPE   -- Different types of build to be added. Right now aws ebs'
    echo '    -d        -- Debug mode where packer asks what to do in case of error rather than cleaning up and quitting'
    exit $EXIT_CODE
}

while getopts ":t:p:dsr:h" opt; do
  case ${opt} in
    t)
      build_type=$OPTARG
      ;;
    d)
      additional_options="${additional_options=} --on-error=ask"
      ;;
    h)
      usage 0
      ;;
    \?)
      echo "Invalid option: $OPTARG" 1>&2
      usage 1
      ;;
    :)
      echo "Invalid option: $OPTARG requires an argument" 1>&2
      usage 1
      ;;
  esac
done

if [ -z "${AWS_ACCESS_KEY}" -o -z "${AWS_SECRET_KEY}" ]
then
  echo "You need to set AWS_ACCESS_KEY and AWS_SECRET_KEY env variables"
  exit 1
fi

#packer build -var 'aws_access_key=AKIAJPFV6X4D3OUJG6WA' -var 'aws_secret_key=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' ubuntu-16.04-amd64.json
packer build -var "aws_access_key=$AWS_ACCESS_KEY" -var "aws_secret_key=$AWS_SECRET_KEY" ubuntu-16.04-amd64.json