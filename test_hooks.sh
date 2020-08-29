#!/bin/sh

list_of_regex=(
                "^(eyJ)[A-Za-z0-9_=\-]{30,}\.(eyJ)[A-Za-z0-9_=\-]{1,}\." 
                )

for t in ${list_of_regex[@]}; do
    grep --color=always -nrI -E --exclude-dir=.git --exclude-dir=doc --exclude-dir=./ --exclude-dir=.svn --exclude-dir=node_modules $t .
done

