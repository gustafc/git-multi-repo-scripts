#!/bin/bash

#
# Set email in all repos to your email.
#
set -e
cd $(dirname "$0")

EMAIL="your.name@example.com"

./list-repos | while read repo; do
    (cd $repo && echo "Set email to $EMAIL in $(pwd)" && git config user.email "$EMAIL" )
done
