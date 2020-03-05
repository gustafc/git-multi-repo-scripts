# git-multi-repo-scripts

Handy and popular scripts for people who have more than one git repo to worry about.

Installation, usage, and everything else is very much pending cleanup.

## Installation
- Move to a directory where you have checked out multiple repos
- Download scripts from `scripts/`
  - `wget https://raw.githubusercontent.com/gustafc/git-multi-repo-scripts/master/scripts/list-repos https://raw.githubusercontent.com/gustafc/git-multi-repo-scripts/master/scripts/in-each https://raw.githubusercontent.com/gustafc/git-multi-repo-scripts/master/scripts/update-repos`
- Make the scripts executable `chmod +x in-each list-repos update-repos`

## Usage
- `./update-repos` to update all repos
- `./in-each git grep "import foo.bar.Baz"` to grep in all repos
