#!/bin/bash
CSCOPE_FILE=cscope.out
if [ -n "$1" ]; then
    echo "Source code directory: " $1
    echo "Create file map : " $CSCOPE_FILE
    find $1 -name "*.h" -o -name "*.c" -o -name "*.cpp" > $CSCOPE_FILE
    cscope -bkq -i $CSCOPE_FILE
    # cscope -Rbkq
    ctags -R
else
    echo "Please key-in path of project"
fi
