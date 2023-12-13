#!/bin/bash

#
# Set email in all repos to your email.
#
# NOTE: This is superfluous - use conditional includes instead: https://stackoverflow.com/questions/21307793/set-git-config-values-for-all-child-folders
#
set -e
cd $(dirname "$0")

EMAIL="your.name@example.com"

./list-repos | while read repo; do
    (cd $repo && echo "Set email to $EMAIL in $(pwd)" && git config user.email "$EMAIL" )
done
