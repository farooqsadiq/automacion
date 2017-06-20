#!/usr/bin/env bash

function usage
{
  echo "usage: prereqs_ansible [[[-ou ADMIN ] | [-h]]"
}

# set defaults:
PYTHON_VERSION="2.7"
# e.g. ">=2.2,<2.3" or ">=2.2.1,<2.3.1" or ">=2.2" or "==2.3.1" or ""
ANSIBLE_VERSION=""

# source vars file
source _vars.sh

# process arguments:
while [ "$1" != "" ]; do
  case $1 in
    -ou | --admin )    shift
                      ADMIN=$1
                      ;;
    -h | --help )     usage
                      exit
                      ;;
    * )               usage
                      exit 1
  esac
  shift
done

echo "--> checking python version..."
# TODO: better version checking
if python --version 2>&1 | grep -q $PYTHON_VERSION; then
  echo "--> python $PYTHON_VERSION already installed, moving on."
else
  echo "--> python $PYTHON_VERSION not installed. Please install it, or better yet, modify this script to do it for you."
  return 1
fi

echo "--> installing pip"
sudo easy_install pip

echo "--> installing ansible"
sudo -H pip uninstall -y ansible
sudo -H pip install -I "ansible $ANSIBLE_VERSION"

# # TODO: better version checking...
# if ansible --version 2>&1 | grep -q $ANSIBLE_VERSION; then
#   echo "--> ansible $ANSIBLE_VERSION already installed, moving on."
# else
#   sudo -H pip install -I ansible $ANSIBLE_VERSION
# fi
