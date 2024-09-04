#!/bin/bash

script_dir=$(dirname "$0")
current_working_dir=$(pwd)
FILE_NAME="${current_working_dir}/.gitignore"

#content=$(cat "node.gitignore")
echo "$script_dir"

case "$1" in 
    node | nodejs) 
        #cat node.gitignore
        content=$(cat "${script_dir}/node.gitignore")
        echo "$content" > $FILE_NAME
        echo "$FILE_NAME is successfully created for Node.js project"
        ;;
    flask)
        content=$(cat "${script_dir}/flask.gitignore")
        echo "$content" > $FILE_NAME
        echo "$FILE_NAME is successfully created for Flask project"
        ;;
    django)
        content=$(cat "${script_dir}/django.gitignore")
        echo "$content" > $FILE_NAME
        echo "$FILE_NAME is successfully created for Django project"
        ;;
    java | springboot)
        content=$(cat "${script_dir}/java.gitignore")
        echo "$content" > $FILE_NAME
        echo "$FILE_NAME is successfully created for Java project"
        ;;
    *) 
        echo "Usage: $0 {node|flask|django|java|springboot}" 
        ;; 
esac
