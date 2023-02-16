#!/bin/bash
#usage: source logger.sh
#usage: add command line to logger: lgt ...
#usage: add last command to lgger: lgt "!!". The way to do this without moving back the cursor is to first type `lgt "\`, then to start a new line (Enter) then to type `!!"`
#usage: if your command line contains multiple commands (e.g. using '|' or '&&') you need to wrap it between single quotes: lgt "command arg | command2 arg2 | command3 arg3". Note: if the command line itself contain single quotes, you should replace them such that only double quotes are left.
#when $ are present in the command you must escape them (\$)
export CURR_LOG_PATH="."
export DEF_LOG_NAME="mylogs.log"

setLgt()
{
    export CURR_LOG_PATH=${1:-$CURR_LOG_PATH}
    export DEF_LOG_NAME=${2:-$DEF_LOG_NAME}
    concat_path="$CURR_LOG_PATH/$DEF_LOG_NAME"
    format_path=${concat_path//\/\//\/}}
    if [ $# -lt1 ]; then
        echo "new logging file set to $format_path"
        echo
    elif [ $# -lt2 ]; then
        echo "root dir for logs changed"
        echo
        echo "new logging file path set to $format_path"
        echo
        echo "to change the name for the logging file, give it as second argument to setLgt"
        echo
    else
        echo "logging file path unchanged: current is : $format_path"
        echo
    fi
}

getLgtPath()
{
    concat_path="$CURR_LOG_PATH/$DEF_LOG_NAME"
    format_path=${concat_path//\/\//\/}}
    echo "$format_path"
}

lgt()
{
    concat_path="$CURR_LOG_PATH/$DEF_LOG_NAME"
    format_path=${concat_path//\/\//\/}
    echo "$*" >> "$format_path"
    echo "written: $format_path"
}
