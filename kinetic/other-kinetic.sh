#!/bin/bash
# for other app
# 20200918
# by Young Tzu Hong
# vim安裝
sudo apt-get -y install vim
# ssh設置
sudo apt-get -y install -y openssh-server
sudo service ssh status
# vnc安裝
sudo apt-get -y install x11vnc
sudo x11vnc-storepasswd bigdick /etc/x11vnc.pass
#use:x11vnc

# Install lm-sensors
sudo apt-get -y install lm-sensors
yes | sudo sensors-detect
#use:sensors

#鍵盤設置
sudo apt-get -y install ibus ibus-clutter ibus-gtk ibus-gtk3 ibus-qt4
im-config -s ibus
sudo apt -y install ibus-chewing
sudo reboot
#到右上角Wi-Fi圖示右邊文字列表點選下拉式方塊中的Text Entry Settings...... 加入新酷音
#sudo ibus-setup 進去新增新酷音



