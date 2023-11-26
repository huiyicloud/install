#!/bin/bash
# 佛祖保佑字符画
cat << "EOF"
                           _ooOoo_
                          o8888888o
                          88" . "88
                          (| -_- |)
                          O\  =  /O
                       ____/`---'\____
                     .'  \\|     |//  `.
                    /  \\|||  :  |||//  \
                   /  _||||| -:- |||||-  \
                   |   | \\\  -  /// |   |
                   | \_|  ''\---/''  |   |
                   \  .-\__  `-`  ___/-. /
                 ___`. .'  /--.--\  `. . __
              ."" '<  `.___\_<|>_/___.'  >'"".
             | | :  `- \`.;`\ _ /`;.`/ - ` : | |
             \  \ `-.   \_ __\ /__ _/   .-` /  /
        ======`-.____`-.___\_____/___.-`____.-'======
                           `=---='
        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
                 佛祖保佑       永无BUG
EOF
echo "欢迎使用晷蓝CDN系统"
echo "当前最新版本为 0.0.1"
echo "请选择您要安装的版本："
echo "1. 宝塔版本"
echo "2. 边缘节点系统"
read -p "请输入选项 (1 或 2): " version

progress_bar() {
    echo -n "正在进行: "
    for i in {1..50}; do
        echo -n "#"
        sleep 0.1
    done
    echo -e "\n操作完成"
}

if [ "$version" == "1" ]; then
    echo "您选择了宝塔版本"

    # 安装 Composer
    echo "安装 Composer..."
    progress_bar

    # 下载 GitHub 源码
    echo "下载 GitHub 源码..."
    git clone [your-github-repo-url] /desired/location
    progress_bar

    echo "宝塔版本安装完成"

elif [ "$version" == "2" ]; then
    echo "您选择了边缘节点系统"

    # 下载 GitHub 源码
    echo "下载 GitHub 源码..."
    git clone [your-github-repo-url] /desired/location
    progress_bar

    # 安装 PHP 8.0
    echo "安装 PHP 8.0..."
    # 添加安装 PHP 8.0 的命令
    progress_bar

    # 安装 Composer
    echo "安装 Composer..."
    # 添加安装 Composer 的命令
    progress_bar

    # 安装 Nginx
    echo "安装 Nginx..."
    # 添加安装 Nginx 的命令
    progress_bar

    echo "边缘节点系统安装完成"

else
    echo "无效的输入！"
fi
