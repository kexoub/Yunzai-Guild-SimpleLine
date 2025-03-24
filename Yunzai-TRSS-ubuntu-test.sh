#!bin/bash
#感谢时雨对云崽的贡献
#root校验

echo "此脚本可用于一键安装云崽服务端版本"
echo "5"
echo "4"
echo "3"
echo "2"
echo "1"

apt update -y && apt upgrade -y
#更新软件源
apt install curl wget unzip git
#下载常用软件

apt install libnss3 libatk1.0-0 libx11-xcb1-  -y



sudo apt-get install -y libxss1 libgbm-dev libnss3 libatk1.0-0 libatk-bridge2.0-0 libcups2 libdrm2 libxkbcommon0 libxcomposite1 libxdamage1 libxrandr2 libgtk-3-0

apt install ca-certificates fonts-liberation libasound2 libatk-bridge2.0-0 libatk1.0-0 libc6 libcairo2 libcups2 libdbus-1-3 libexpat1 libfontconfig1 libgbm1 libgcc1 libglib2.0-0 libgtk-3-0 libnspr4 libnss3 libpango-1.0-0 libpangocairo-1.0-0 libstdc++6 libx11-6 libx11-xcb1 libxcb1 libxcomposite1 libxcursor1 libxdamage1 libxext6 libxfixes3 libxi6 libxrandr2 libxrender1 libxss1 libxtst6 lsb-release wget xdg-utils libxkbcommon0 -y

apt install python3-pip
#建议不要动

mkdir bot && cd bot 

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
#下载nvm

source ~/.bashrc
#让nvm生效

nvm install 18
#使用nvm下载nodejs18

nvm alias default 18
#让nvm默认启用nodejs18

apt install npm -y

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

echo "正在安装锅巴面板"

git clone --depth=1 https://gitee.com/guoba-yunzai/guoba-plugin plugins/Guoba-Plugin/
pnpm i

pip install -i https://pypi.tuna.tsinghua.edu.cn/simple pillow
#建议不要动

apt install chromium-browser -y

apt-get install -y software-properties-common

apt install -y --force-yes --no-install-recommends fonts-wqy-microhei
pnpm install -P
#安装必要组件puppeteer和chrome

echo "安装完成"
echo "TRSS Yunzai启动"



node app
#草
