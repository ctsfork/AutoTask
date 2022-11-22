#!/usr/bin/env bash 

# 切换进入当前目录
toProjectDir()
{
    path=$0
    first=${path:0:1}
    if [[ $first == "/" ]]; then
        path=${path%/*}
        cd "$path"
    fi
}
toProjectDir
clear



launchRun()
{
	echo "launchRun"
	./Run
}

launchSubconver()
{
	echo "launchSubconver"
	./subconverter/subconverter
}


launchYaml()
{
	echo "launchYaml"
	sleep 65
	./clash.sh
	exit
}


launchRun & launchSubconver & launchYaml 

