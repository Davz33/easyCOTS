#!/bin/bash
#usage: source logger.sh
#usage: add command line to logger: lgt ...
#usage: add last command to lgger: lgt "!!". The way to do this without moving back the cursor is to first type `lgt "\`, then to start a new line (Enter) then to type `!!"`
#usage: if your command line contains multiple commands (e.g. using '|' or '&&') you need to wrap it between single quotes: lgt "command arg | command2 arg2 | command3 arg3". Note: if the command line itself contain single quotes, you should replace them such that only double quotes are left.
#when $ are present in the command you must escape them (\$)

export CURR_LOG_PATH="./mylogs.log"

setLgt()
{
    #usage(1arg): setLgt newLogPath
    #usage(default): setLgt #gets current path 
    local chosenp=${1:-$CURR_LOG_PATH};
    if [ $chosenp != $CURR_LOG_PATH ];then
        local format_path=${chosenp//\/\//\/}
        export CURR_LOG_PATH=$format_path
    fi
        echo "logging path is $CURR_LOG_PATH"
}

lgt()
{
    echo "$*" >> "$CURR_LOG_PATH"
    echo "written: $CURR_LOG_PATH"
}
