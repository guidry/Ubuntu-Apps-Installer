#!/bin/bash
# Ubuntu 24.04 優化安裝指令稿 (整合版)
# 版本 2025.03.07

# 1. 系統更新與倉庫啟用
echo "1. 系統更新與套件庫啟用..."
sudo apt update && sudo apt upgrade -y
sudo add-apt-repository universe
sudo add-apt-repository multiverse
sudo add-apt-repository restricted

# 2. 基本系統工具
echo "2. 基本系統工具..."
# 32 位元支援
sudo dpkg --add-architecture i386
# 安裝基本系統工具
sudo apt install -y build-essential clang ninja-build curl wget git
# 安裝開發工具
sudo apt install -y python3-pip neovim libqtcore4 libqtgui4 libqtwebkit4
# 安裝系統管理工具
sudo apt install -y timeshift gparted system-config-printer-gnome dconf-editor
sudo apt install -y file-roller
sudo apt install -y python3-pyasyncore flatpak

# 安裝 GNOME 相關工具
sudo apt install -y gnome-tweaks gnome-shell-extensions gnome-control-center nautilus-admin
# 安裝文檔與辦公工具
sudo apt install -y gedit gedit-plugins libreoffice libreoffice-base libreoffice-mysql-connector texstudio
sudo apt install libreoffice-l10n-zh-tw
sudo apt-get install -y okular

# 安裝網絡工具
sudo apt install -y traceroute whois samba libpam-smbpass
sudo apt install -y filezilla
sudo apt-get  -y  install chromium-browser
# 安裝圖形與設計工具
sudo apt install -y imagemagick php-imagick openclipart openscad
sudo apt install -y graphviz
# 安裝字體與語言支持
sudo apt install -y fonts-wqy-microhei fonts-wqy-zenhei ttf-mscorefonts-installer fonts-linuxlibertine
# 安裝安全與隱私工具
sudo apt install -y clamtk clamtk-gnome bleachbit
# 安裝其他工具
sudo apt install -y amule kate calibre unzip p7zip-full
# 安裝壓縮工具
sudo apt install -y p7zip-rar dpkg-dev libavcodec-extra

# 安裝 GNOME 擴展與工具
sudo apt install -y numlockx xdotool v4l2loopback-dkms ssmtp

# 安裝字典與學習工具
sudo apt install -y stardict goldendict kbibtex hspell
# 安裝 R 語言相關工具
sudo apt install -y r-cran-haven r-cran-xtable r-cran-tcltk2
# 安裝屏幕錄製工具
sudo apt install -y recordmydesktop gtk-recordmydesktop vokoscreen
# 安裝視頻編輯工具
sudo apt install -y flowblade handbrake-gtk handbrake-cli
# 安裝文檔轉換工具
sudo apt install -y libwpd-tools untex wv libchm-bin librdf-icalendar-perl
# 安裝圖表工具
sudo apt install -y dia dia-gnome xmind

# 安裝字體工具
sudo apt install -y fonts-cns11643-kai fonts-cns11643-sung fonts-moe-standard-song fonts-moe-standard-kai

# 安裝其他字體
sudo apt install -y fonts-arphic-ukai fonts-arphic-uming fonts-arphic-bkai00mp fonts-arphic-bsmi00lp

# 安裝更多字體
sudo apt install -y fonts-arphic-gbsn00lp fonts-arphic-gkai00mp fonts-cwtex-ming fonts-cwtex-kai

# 安裝剩餘工具
sudo apt install -y libfuse2 libudunits2-dev mesa-utils gnome-search-tool
# enable scp 
sudo apt-get -y install openssh-server
sudo ufw allow ssh
sudo ufw allow 22

sudo apt-get  -y  install gdebi
sudo apt-get  -y  install system-config-printer-gnome
sudo apt-get -y   install  nautilus-admin
sudo apt-get  -y  install gnome-tweak-tool
sudo apt-get  -y install dconf-editor
sudo apt-get  -y  install ubuntu-restricted-extras
sudo apt-get  -y  install dpkg-dev
sudo apt-get  -y  install libwxgtk3*
sudo apt-get  -y  install libavcodec-extra
sudo apt-get  -y  install pcscd pcsc-tools
sudo apt-get  -y  install wine winetricks playonlinux cabextract
sudo apt-get  -y  install synaptic
sudo apt-get  -y  install gnome-system-tools
sudo apt-get  -y  install festival
sudo apt-get  -y  install festvox-us1 festvox-us2 festvox-us3
sudo apt-get  -y  install grub-customizer
sudo apt-get -y   install gksu
sudo apt-get  -y  install cmake cmake-qt-gui
sudo apt-get -y   install glmark2
sudo apt-get -y   install software-center
sudo apt-get -y install pcmanfm
# 清理緩存
sudo apt autoremove -y
sudo apt clean

# 3. 桌面環境與選單 (擇一安裝)
echo "3. 桌面環境與選單 (擇一安裝)..."
# sudo apt install -y classicmenu-indicator 
#或 arc-menu, cinnamon-menu, mate-menu (請選擇一種)

# 4. 桌面搜尋工具 (anytxt-searcher 需要手動安裝)
echo "4. 桌面搜尋工具 (anytxt-searcher 需要手動安裝)..."
#安裝桌面搜尋工具
sudo apt-get  -y  install perl unzip
sudo apt-get  -y  install libwpd-tools
sudo apt-get  -y  install untex 
sudo apt-get  -y  install wv 
sudo apt-get  -y  install libchm-bin 
sudo apt-get  -y  install librdf-icalendar-perl
sudo apt-get  -y  install python-chm
sudo apt-get  -y  install libimage-exiftool-perl
sudo apt-get  -y  install xsltproc
sudo apt-get  -y  install catdoc
sudo apt-get  -y  install docx2txt
sudo apt-get  -y  install libreoffice-common
sudo apt-get  -y  install antiword
sudo apt-get  -y  install pstotext
sudo apt-get  -y  install unrtf
sudo apt-get  -y  install xsltproc
sudo apt-get  -y  install python-mutagen 
sudo apt-get  -y  install python3-pypillowfight
sudo apt-get  -y  install poppler-utils
sudo apt-get  -y  install libxslt
sudo apt-get  -y  install recoll
sudo apt-get  -y  install python-recoll
sudo apt install -y catfish tracker tracker-gui


# 5. 系統調校與監控
echo "5. 系統調校與監控..."
sudo apt install -y dconf-editor hardinfo sysstat stacer gnome-system-monitor

# 6. 多媒體工具
echo "6. 多媒體工具..."
# 安裝多媒體工具
sudo apt install -y ffmpeg vlc obs-studio mplayer musescore
sudo apt-get  -y  install audacity

sudo apt install -y handbrake kdenlive shotcut openshot-qt gaupol aegisub vcdimager sound-juicer asunder abcde ripperx brasero k3b mkisofs growisofs mypaint gimp inkscape krita blender audacity shotcut mpv winff
sudo apt-get  -y  install gimp-plugin-registry
sudo snap install vidcutter
DESKTOP_FILE="/usr/share/applications/org.gnome.Totem.desktop"

# Ensure Totem is installed
if ! dpkg -s totem &> /dev/null; then
    echo "▶ Totem is not installed. Installing..."
    sudo apt update
    sudo apt install -y totem
else
    echo "▶ Totem is already installed."
fi

# Backup original .desktop
sudo cp "$DESKTOP_FILE" "${DESKTOP_FILE}.bak"

# Modify Exec line
echo "▶ Modifying $DESKTOP_FILE to add GDK_GL=gles..."
sudo sed -i 's|^Exec=.*|Exec=env GDK_GL=gles totem %U|' "$DESKTOP_FILE"

echo "✅ Done. System-wide Totem launcher now uses GDK_GL=gles."

echo "▶ Disabling DBusActivatable so Exec line is respected..."
sudo sed -i 's/^DBusActivatable=true/# DBusActivatable=true/' "$DESKTOP_FILE"

# 7. 字幕與語音工具
echo "7. 字幕與語音工具..."
# Install Whisper
sudo apt install -y libxcb-cursor0
pipx install openai-whisper
pipx install whisper-gui

# 影片字幕
sudo apt-get  -y  install aegisub aegisub-l10n


# 8. 開發工具
echo "8. 開發工具..."
sudo apt install -y default-jdk icedtea-netx icedtea-netx-common
sudo apt install -y python3-pip cmake meson ninja-build openjdk-17-jdk
sudo apt-get  -y  install geany
sudo apt-get  -y  install geany-plugins
sudo apt-get  -y  install codeblocks codeblocks-common codeblocks-contrib
sudo apt -y install mono-complete

# 9. 辦公與教育
echo "9. 辦公與教育..."
sudo apt install -y lmms vym freemind scribus sqlite3 sqlitebrowser
# 安裝統計分析工具
sudo apt install -y pspp r-base r-cran-haven r-cran-xtable r-cran-tcltk2 rkward
# 10. 安全
echo "10. 安全..."
sudo apt install -y clamav clamtk

# 11. DVD 支援
echo "11. DVD 支援..."
# play encrypted DVDs 
sudo apt install -y libdvd-pkg
sudo apt-get -y install libdvdnav4 libdvdread7  
sudo dpkg-reconfigure libdvd-pkg

# 12. 掃描工具
echo "12. 安裝打印與掃描工具"
sudo apt install -y simple-scan
sudo apt install -y cups-pdf xsane gocr gv

# 13. 額外應用程式 (手動安裝)
echo "13. 額外應用程式 (手動安裝)..."
# 下載 AnyDesk
# wget -qO anydesk.deb https://download.anydesk.com/linux/anydesk_6.3.2-1_amd64.deb
# sudo apt install -y ./anydesk.deb && rm anydesk.deb
# 下載 Audio Recorder
# wget -qO audio-recorder.deb https://launchpad.net/~audio-recorder/+archive/ubuntu/ppa/+files/audio-recorder_3.3.1-1_amd64.deb
# sudo apt install -y ./audio-recorder.deb && rm audio-recorder.deb
# 下載 Sublime Text
# wget -qO sublime-text_build_3211_amd64.deb https://download.sublimetext.com/sublime-text_build_3211_amd64.deb
# sudo dpkg -i sublime-text_build_3211_amd64.deb
# rm sublime-text_build_3211_amd64.deb
# 下載 pcmanfm
# wget -qO pcmanfm_1.3.2-1_amd64.deb http://archive.ubuntu.com/ubuntu/pool/universe/p/pcmanfm/pcmanfm_1.3.2-1_amd64.deb
# sudo dpkg -i pcmanfm_1.3.2-1_amd64.deb
# rm pcmanfm_1.3.2-1_amd64.deb
# 下載 codeblocks
# wget -qO codeblocks_20.03-3_amd64.deb http://archive.ubuntu.com/ubuntu/pool/universe/c/codeblocks/codeblocks_20.03-3_amd64.deb
# sudo dpkg -i codeblocks_20.03-3_amd64.deb
# rm codeblocks_20.03-3_amd64.deb
# 下載 pepperflashplugin-nonfree
# wget -qO pepperflashplugin-nonfree_20.0.0.228-0ubuntu0.16.04.1_amd64.deb http://archive.ubuntu.com/ubuntu/pool/universe/p/pepperflashplugin-nonfree/pepperflashplugin-nonfree_20.0.0.228-0ubuntu0.16.04.1_amd64.deb
# sudo dpkg -i pepperflashplugin-nonfree_20.0.0.228-0ubuntu0.16.04.1_amd64.deb
# rm pepperflashplugin-nonfree_20.0.0.228-0ubuntu0.16.04.1_amd64.deb

# 14. 清理
echo "14. 清理..."
sudo apt autoremove -y
sudo apt clean

# 額外設定
echo "15. 額外設定..."
sudo sed -i 's/UTC=yes/UTC=no/g' /etc/default/rcS
sudo gsettings set org.gnome.settings-daemon.peripherals.keyboard numlock-state 'on'
sudo gsettings set org.gnome.desktop.peripherals.keyboard remember-numlock-state true
gsettings set org.gnome.desktop.peripherals.keyboard remember-numlock-state true
gsettings set org.gnome.gedit.preferences.encodings candidate-encodings "['UTF-8', 'BIG5', 'BIG5-HKSCS', 'EUC-TW', 'GB18030', 'GB2312', 'GBK', 'CURRENT', 'ISO-8859-15', 'UTF-16']"
sudo sed -i 's/\(^Name=Blend\)er$/\1er 3D 繪圖/g' /usr/share/applications/blender.desktop
sudo update-desktop-database
sudo ufw allow ssh
sudo ufw allow 22
sudo dpkg-reconfigure unattended-upgrades
sudo modprobe v4l2loopback card_label="My Fake Webcam" exclusive_caps=1
sudo fc-cache -f -v

# 安裝 WPS Office Fonts
echo "16. 安裝 WPS Office 字型與修正錯誤　..."
#Linux WPS 11.1.0.11704楷体　修正匯出 PDF　錯誤
sudo ln -s /usr/lib/x86_64-linux-gnu/libtiff.so.6 /usr/lib/x86_64-linux-gnu/libtiff.so.5 
# Linux WPS 11.1.0.11704楷体、仿宋字体加粗后显示成一团黑 评论区找到了解法
sudo cp /snap/gnome-42-2204/current/usr/lib/x86_64-linux-gnu/libfreetype.so.6.18.1 /opt/kingsoft/wps-office/office6/libfreetype.so.6 
# 安裝 WPS Office Fonts
wget -O ttf-wps-fonts-master.zip https://github.com/IamDH4/ttf-wps-fonts/archive/master.zip
unzip -LL ttf-wps-fonts-master.zip
cd ttf-wps-fonts-master
sudo ./install.sh
cd ..
sudo fc-cache -vfs

# 安裝 Flash Player (Ruffle)
# 安裝 Flash Player (Ruffle)
echo "17. 安裝 Flash Player..."
# 下載最新的 Ruffle 版本
wget -c https://github.com/ruffle-rs/ruffle/releases/download/nightly-2025-03-08/ruffle-nightly-2025_03_08-linux-x86_64.tar.gz
# 解壓縮到暫存目錄
mkdir -p ruffle_temp
tar xvzf ruffle-nightly-2025_03_08-linux-x86_64.tar.gz -C ruffle_temp
rm ruffle-nightly-2025_03_08-linux-x86_64.tar.gz
# 安裝執行檔
sudo mkdir -p /usr/lib/ruffle
sudo mv ruffle_temp/ruffle /usr/lib/flashplayer/ruffle
sudo chmod +x /usr/lib/flashplayer/ruffle
# 確保舊的 symlink 不會影響新安裝
sudo rm -rf /usr/bin/ruffle
sudo ln -sf /usr/lib/flashplayer/ruffle /usr/bin/ruffle
# 安裝桌面快捷方式 (如果存在)
if [ -d "ruffle_temp/extras" ]; then
    sudo mv ruffle_temp/extras/rs.ruffle.Ruffle.desktop /usr/share/applications/flashplayer.desktop
    sudo mv ruffle_temp/extras/rs.ruffle.Ruffle.svg /usr/share/icons/hicolor/scalable/apps/rs.ruffle.Ruffle.svg
fi
# 清理
rm -rf ruffle_temp
sudo update-desktop-database


# 安裝 Scratch
echo "18. 安裝 Scratch..."
wget https://stud.syps.tn.edu.tw/uploads/tad_book3/file/scratch-desktop_3.11.1_amd64.deb
sudo gdebi --non-interactive scratch-desktop_3.11.1_amd64.deb
rm scratch-desktop_3.11.1_amd64.deb
sudo update-desktop-database

# 安裝 MadEdit
echo "19. 安裝 MadEdit..."
wget https://sourceforge.net/projects/madedit-mod/files/0.4.20/madedit-mod_0.4.20-1_amd64_Ubuntu_22_04_2.deb
sleep 5
sudo gdebi --non-interactive madedit-mod_0.4.20-1_amd64_Ubuntu_22_04_2.deb
sleep 5
rm madedit-mod_0.4.20-1_amd64_Ubuntu_22_04_2.deb

# 安裝 新 自製語音小祕書及上網查自典
echo "20. 安裝 新 自製語音小祕書及上網查自典..."
# Define the URL of the Midori .deb package
DEB_URL="https://github.com/goastian/midori-desktop/releases/download/v11.5/midori_11.5_amd64.deb"
# Define the filename for the downloaded .deb package
DEB_FILE="midori_11.5_amd64.deb"
# Download the .deb file using wget
echo "下載 Midori .deb package..."
wget -q $DEB_URL -O $DEB_FILE
# Check if the download was successful
if [ $? -eq 0 ]; then
    echo "Midori 瀏覽器成功下載了，可供查字典使用"
else
    echo "Midori 瀏覽器下載失敗，請另行手動設定"    
fi
# Install the .deb package using dpkg
echo "Installing Midori..."
sudo dpkg -i $DEB_FILE
# Fix any missing dependencies
sudo apt --fix-broken install -y
# Clean up by removing the downloaded .deb file
rm $DEB_FILE
echo "Midori installation completed!"
sudo mkdir -p /opt/xu_tts
install_first_app() {
# 取得英語小祕書
export fileid=1i5rDAjwq4XpT0GMoE2qgUicsZiJB7iSx
export filename=install_text_to_speech_google.tar.xz
wget -O $filename 'https://docs.google.com/uc?export=download&id='$fileid
if [ $? -ne 0 ]; then
  echo "下載語小祕書檔案失敗！"
  goto install_other_apps  # Jump to other apps installation
  exit 1
fi
tar Jxvf install_text_to_speech_google.tar.xz
if [ $? -ne 0 ]; then
  echo "解壓縮檔案失敗！"
  goto install_other_apps  # Jump to other apps installation
  exit 1
fi
cd install_text_to_speech_google
sed -i '1 i\#!/bin/bash' ./install_tts.sh
sed -i '1 i\#!/bin/bash' ./install_lookupDict.sh
sleep 5
chmod +x install_tts.sh
if [ ! -f install_tts.sh ]; then
  echo "安裝腳本 install_tts.sh 不存在！"
  goto install_other_apps  # Jump to other apps installation
  exit 1
fi
./install_tts.sh
echo "安裝了語音小祕書，請到「顯示應用程式」控制面板找尋 Text to speech，再加入喜好，即可在控制列中點按唸圖示唸出選取的英語句子來。"
sleep 5
chmod +x install_lookupDict.sh
if [ ! -f install_lookupDict.sh ]; then
  echo "安裝腳本 install_lookupDict.sh 不存在！"
  goto install_other_apps  # Jump to other apps installation
  exit 1
fi
./install_lookupDict.sh
cd ..
rm install_text_to_speech_google.tar.xz
sleep 5
rm -rf install_text_to_speech_google
echo "安裝了上網查字典，請到「顯示應用程式」控制面板找尋 上網查單字，即可在控制列中點按唸圖示查選取的單字。"
sudo update-desktop-database
goto install_other_apps

install_other_apps()  { #前項安裝失敗後跳至這裡 Direct Jump with Functions

# 調校 Geany
echo "21. 調校 Geany..."
# Check if the directory exists, if not, create it
if [ ! -d "$HOME/.config/geany" ]; then
    echo "Creating ~/.config/geany directory..."
    mkdir -p "$HOME/.config/geany"
else
    echo "~/.config/geany already exists."
fi
echo "下載調校資料 geany_data.tar.xz "
export fileid2=1bBHDL17fmTBrYqQcaCBFLwUiwQbQuxm4
export filename2=geany_data.tar.xz
wget -O $filename2 'https://docs.google.com/uc?export=download&id='$fileid2
if [ $? -ne 0 ]; then
  echo "下載 geany_data.tar.xz 失敗！"
  
fi
tar Jxvf geany_data.tar.xz
if [ $? -ne 0 ]; then
  echo "解壓縮 geany_data.tar.xz 失敗！"
  
fi
if [ -d geany_data ]; then
  cp -r geany_data/* ~/.config/geany
  if [ $? -ne 0 ]; then
    echo "複製 geany_data 檔案到 ~/.config/geany 失敗！"
    
  fi
  rm -rf geany_data
else
  echo "解壓縮後找不到 geany_data 目錄！"
  
fi
rm geany_data.tar.xz
echo "Geany 調校完成。"

# 安裝 WPS Office
echo "22. 安裝 WPS Office..."
wget https://wdl1.pcfg.cache.wpscdn.com/wpsdl/wpsoffice/download/linux/11723/wps-office_11.1.0.11723.XA_amd64.deb
sudo apt install -y ./wps-office_11.1.0.11723.XA_amd64.deb
rm wps-office_11.1.0.11723.XA_amd64.deb

# 安裝 PyCharm Community
echo "22. 安裝 PyCharm Community..."
sudo snap install pycharm-community --classic

# 安裝 Speech to subtitles
echo "23. 安裝 pyTranscriber Speech to subtitles..."
wget -c https://github.com/raryelcostasouza/pyTranscriber/releases/download/v1.9/pyTranscriber-v1.9-linux-installer.zip
unzip ./pyTranscriber-v1.9-linux-installer.zip
cd pyTranscriber-v1.9-linux-gnome40-installer
chmod +x ./install.sh
sudo ./install.sh
cd ..
rm ./pyTranscriber-v1.9-linux-gnome40-installer
sudo chmod o+x /opt/pyTranscriber/*

echo "24. 其他..."
echo " yEd 心智圖"
wget https://www.yworks.com/resources/yed/demo/yEd-3.21.1_with-JRE8_64-bit_setup.sh
chmod +x yEd-3.21.1_with-JRE8_64-bit_setup.sh
sudo ./yEd-3.21.1_with-JRE8_64-bit_setup.sh
wait 5
rm yEd-3.21.1_with-JRE8_64-bit_setup.sh

echo "移除不必要字體"
# List of required Noto fonts
REQUIRED_FONTS=(
    "NotoSansCJK"
    "NotoSerifCJK"
    "NotoSansJP"
    "NotoSerifJP"
    "NotoSansKR"
    "NotoSerifKR"
    "NotoSansSC"
    "NotoSerifSC"
    "NotoSansTC"
    "NotoSerifTC"
    "NotoSansHK"
    "NotoSansMono"
)

# Get the list of installed Noto fonts
INSTALLED_FONTS=$(fc-list | grep "Noto" | awk -F: '{print $1}' | sort -u)
# Remove unnecessary Noto fonts
for FONT in $INSTALLED_FONTS; do
    KEEP=false
    for REQUIRED in "${REQUIRED_FONTS[@]}"; do
        if [[ "$FONT" == *"$REQUIRED"* ]]; then
            KEEP=true
            break
        fi
    done
    if [ "$KEEP" = false ]; then
        echo "Removing $FONT"
        sudo rm -f "$FONT"
    fi
done
# Update font cache
echo "Updating font cache..."
fc-cache -f -v
echo "Unnecessary Noto fonts removed successfully!"


echo "Fix WPS MIME issue"
sudo rm /usr/share/mime/packages/wps-office*
sudo rm /usr/share/mime/application/wps-office*
rm ~/.local/share/mime/application/wps-office*
sudo rm ~/.local/share/mime/packages/Override.xml
rm ~/.local/share/mime/mime.cache
sudo update-mime-database /usr/share/mime
update-mime-database ~/.local/share/mime
sudo update-desktop-database 

echo "Ubuntu 24.04 優化安裝完成！"
echo "請根據您的需求，取消註解或修改需要安裝的軟體。"
echo "部分軟體可能需要額外的設定，例如加入官方 repository 或透過 snap/flatpak 安裝。"
echo "AnyTXT Searcher、Audio Recorder、Sublime Text 需要手動處理。"
echo "WhisperGUI 需要一些時間安裝相依性，請耐心等候。"
echo "請確認下載的檔案，是否符合您的電腦架構，例如 X64 或 arm架構。"
echo "安裝過程若有錯誤，請仔細查看錯誤訊息，並根據錯誤訊息進行調整。"
echo "執行指令碼前，請先備份重要資料。"
}


