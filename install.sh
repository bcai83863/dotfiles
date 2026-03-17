#!/bin/bash

# 1. 將 dotfiles 裡的 .gitconfig 複製到使用者的家目錄
cp .gitconfig ~/.gitconfig

# 2. 確保 LC_ALL 環境變數被寫入 ~/.bashrc 中
if ! grep -q "export LC_ALL=C.UTF-8" ~/.bashrc; then
    echo 'export LC_ALL=C.UTF-8' >> ~/.bashrc
fi

echo "Dotfiles 安裝完成！"
