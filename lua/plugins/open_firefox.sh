#!/bin/bash

# Windows中Firefox的安装路径，替换为你的实际路径
FIREFOX_PATH="/mnt/c/Users/夜小雨/AppData/Local/Mozilla Firefox/firefox.exe"

URL="http://127.0.0.1:8888/page/1"
# 启动Firefox
"$FIREFOX_PATH" "$URL"
