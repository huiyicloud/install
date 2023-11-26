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
                 欢迎使用       晷蓝CDN系统
        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
                 最新版本       v0.0.1
        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
                 请选择安装     版本
        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

                 
EOF

# 暂停 3 秒并显示进度条
echo -n "正在准备: "
for i in {1..3}; do
    echo -n "."
    sleep 1
done
echo -e "\n准备完成"

echo "1. 宝塔版本"
echo "2. 边缘节点系统"
read -p "请输入选项 (1 或 2) 然后按回车键: " version

progress_bar() {
    echo -n "正在进行: "
    for i in {1..50}; do
        echo -n "#"
        sleep 0.1
    done
    echo -e "\n操作完成"
}

check_command() {
    if ! command -v $1 &> /dev/null; then
        echo "错误：需要的命令 $1 未安装。"
        exit 1
    fi
}

if [ "$version" == "1" ]; then
    echo "您选择了宝塔版本"

    # 检查 git 命令是否存在
    check_command git

    # 安装 Composer
    echo "安装 Composer..."
    progress_bar  # 这里应添加实际的安装命令

    # 下载 GitHub 源码
    echo "下载 GitHub 源码..."
    git clone [your-github-repo-url] /desired/location || { echo "克隆失败"; exit 1; }
    progress_bar

    echo "宝塔版本安装完成"

elif [ "$version" == "2" ]; then
    echo "您选择了边缘节点系统"

    check_command git

    # 下载 GitHub 源码
    echo "下载 GitHub 源码..."
    git clone [your-github-repo-url] /desired/location || { echo "克隆失败"; exit 1; }
    progress_bar

    # 安装 PHP 8.0
    echo "安装 PHP 8.0..."
    # 这里添加安装 PHP 8.0 的实际命令
    progress_bar

    # 安装 Composer
    echo "安装 Composer..."
    # 这里添加安装 Composer 的实际命令
    progress_bar

    # 安装 Nginx
    echo "安装 Nginx..."
    # 这里添加安装 Nginx 的实际命令
    progress_bar

    echo "边缘节点系统安装完成"

else
    echo "无效的输入！"
fi