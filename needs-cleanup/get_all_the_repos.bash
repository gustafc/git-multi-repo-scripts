#!/bin/bash

cd $(dirname "$0")

repos="
TODO: List repos here, read from some .rc file, or what
"

for repo in $repos; do
    if [[ -d $repo ]]; then
	echo $repo already cloned.
    else
        (set -x; git clone --recursive "git@github.com:sbs-discovery-sweden/$repo.git")
    fi
done
bash ./apply_email.bash
