#!/usr/bin/env bash 


# Clash订阅转换程序与VPN节点解析程序运行脚本



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


#先结束已经存在的VPNParser Run进程 和 VPN subconverter进程
KillProcess()
{
    vpnPid=$(ps -x | grep Run | grep "serve" | grep -Eoh "(^|\s)(\d+)(\s)")
    if [[ ${vpnPid?} ]]; then
        kill -9 $vpnPid
    fi

    subPid=$(ps -x | grep "subconverter" | grep "VPN" | grep -Eoh "(^|\s)(\d+)(\s)")
    if [[ ${subPid?} ]]; then
        kill -9 $subPid
    fi
}
# KillProcess


## 根据端口号结束指定进程
killPort(){
   # port=8080
   port=$1
   pIDa=`/usr/sbin/lsof -i :$port |grep -v "PID" | awk '{print $2}'`
   if [ "$pIDa" != "" ];
   then
      echo "port ${port} Active"
      echo "port ${port} kill action"
      kill -9 $pIDa
   else
      echo "port ${port} Inactive"
   fi
}

killPort 25505
killPort 25500





#获取当前目录
currentDir=$(pwd)
#subconverter文件路径
subconverter="${currentDir}/subconverter/subconverter"
# 文件路径
nodeparse="${currentDir}/Run"


echo "Clash订阅转换程序与VPN节点解析程序"
echo "正在启动ClashR订阅转换工具：   $subconverter"
echo "正在其中VPN节点解析合并工具：    $nodeparse"


# 同时运行两个程序
"${subconverter}" & "${nodeparse}"






## 注意：这种写法两个应用会同时启动，但是关闭终端后这两个程序都会终止
# /Users/App/VPNTools/subconverter/subconverter & /Users/App/VPNTools/nodemerge/nodemerge 


## 注意这种写法两个程序也会同时启动，但是程序会在后台执行，即使关闭终端也不会结束这两个程序
# /Users/App/VPNTools/subconverter/subconverter & 
# /Users/App/VPNTools/nodemerge/nodemerge	&









