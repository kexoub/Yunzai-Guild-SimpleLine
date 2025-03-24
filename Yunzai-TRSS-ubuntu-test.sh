#!bin/bash
#感谢时雨对云崽的贡献
#root校验

echo "此脚本可用于一键安装云崽服务端版本"
echo "5"
echo "4"
echo "3"
echo "2"
echo "1"

apt update -y&& apt upgrade -y
#更新软件源

mkdir bot && cd bot 

apt install curl wget unzip git
#下载常用软件

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
#下载nvm

source ~/.bashrc
#让nvm生效

nvm install 18
#使用nvm下载nodejs18

nvm alias default 18
#让nvm默认启用nodejs18

npm install -g pnpm

npm install -g n
n stable # latest

#安装数据库
apt install redis-server -y

#使用gitee源
git clone --depth 1 https://gitee.com/TimeRainStarSky/Yunzai

mv Yunzai yz

cd yz
git clone --depth 1 https://gitee.com/TimeRainStarSky/Yunzai-genshin plugins/genshin
echo "由于gitee需要验证，所以改为github"
git clone --depth 1 https://github.com/yoimiya-kokomi/miao-plugin plugins/miao-plugin
npm install pnpm -g||（npm --registry=https://registry.npmmirror.com install pnpm -g）
pnpm install -P||（pnpm install -P&&pnpm install -P）

echo"正在安装锅巴面板"

git clone --depth=1 https://gitee.com/guoba-yunzai/guoba-plugin plugins/Guoba-Plugin/
pnpm i

echo "安装完成"
echo "TRSS Yunzai启动"

node app
#草
