#!/bin/sh

APP_NAME="${0##*[\\/]}"
APP_VERSION="0.9"


function RunAsDisplayer()
{
    #显示进程的主函数
    :
}

function RunAsKeyReceiver()
{
    #接收输入的进程的主函数
    :
}

#游戏主程序在这里开始
if [[ "$1" == "--version" ]]; then
    echo "$APP_NAME $APP_VERSION"
elif [[ "$1" == "--show" ]]; then
    #当发现具有参数--show时，运行显示函数
    RunAsDisplayer
else
    bash $0 --show& #以参数--show将本程序再运行一遍
    RunAsKeyReceiver $! # 以上一行产生的进程的进程号作为
fi



