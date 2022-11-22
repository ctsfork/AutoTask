#!/usr/bin/env bash 

# 切换进入当前目录
# toProjectDir()
# {
# 	path=$0
# 	first=${path:0:1}
# 	if [[ $first == "/" ]]; then
# 	    path=${path%/*}
# 	    cd "$path"
# 	fi
# }
# toProjectDir
# clear

## TKAppManager-WebServer-NoSQL DBJS数据库文件同步
## 通过Netlify定时(每隔25分钟)，同步DBJS文件， 目前使用的是Heroku的测试机功能，会自动休眠，下次自动重启后无法获取程序运行中生成的文件;
## 会重新使用部署时所有的静态文件，所以这儿添加一个定时任务，来保存DBJS文件。
## 或者每隔一段时间直运行一次，让Heroku永远不会会存在休眠的情况




## 第一步：请求请保存DBJS文件


## 第二步：将DBJS文件下载到本地
dir=./archive/
mkdir -p $dir
curl "https://ctsver1.herokuapp.com/res/dbjs/update/cts.dbjs?password=ResUpdateAuthKey9527" > "${dir}cts.dbjs"


## 第三步：将DBJS文件重新传送到Heroku



