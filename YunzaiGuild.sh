#!bin/bash
#感谢时雨对云崽的贡献
#root校验
echo "此脚本可用于一键安装云崽服务端版本"
if [[ $EUID -ne 0 ]]; then
    echo "需要以 root 权限运行脚本，请输入 root 密码："
    sudo -v
    if [[ $? -ne 0 ]]; then
        echo "认证失败，请检查密码是否正确。"
        exit 1
    fi
fi
makir Bot && cd Bot 
clear
#更新软件源
apt update -y&& apt upgrade -y
clear
echo “开始安装nodejs”
sudo apt-get install nodejs -y
sudo apt-get install npm -y
sudo npm install -g n
sudo n stable # latest
echo "已经安装node$node_version'"
clear

#安装数据库
sudo apt install redis-server -y

clear

#使用gitee源
git clone --depth 1 https://gitee.com/TimeRainStarSky/Yunzai
cd Yunzai
git clone --depth 1 https://gitee.com/TimeRainStarSky/Yunzai-genshin plugins/genshin
git clone --depth 1 https://gitee.com/yoimiya-kokomi/miao-plugin plugins/miao-plugin
npm install pnpm -g||（npm --registry=https://registry.npmmirror.com install pnpm -g）
pnpm install -P||（pnpm install -P&&pnpm install -P）
clear
cd ..
echo "正在安装频道插件"
git clone --depth 1 https://gitee.com/TimeRainStarSky/Yunzai-QQGuild-Plugin plugins/QQGuild-Plugin
pnpm i
echo "安装完成"
node app
