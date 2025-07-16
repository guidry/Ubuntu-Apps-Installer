#!/bin/bash
# Ubuntu 24.04 優化安裝指令稿 (整合版)
# 版本 2025.07.07

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
sudo apt install -y build-essential clang 
sudo apt install -y ninja-build curl wget git
# 安裝開發工具
sudo apt install -y python3-pip neovim
sudo apt install -y  libqtcore* libqtgui* libqtwebkit*
# 安裝系統管理工具
sudo apt install -y timeshift 
sudo apt install -y gparted 
sudo apt install -y dconf-editor
sudo apt install -y file-roller
sudo apt install -y python3-pyasyncore flatpak

# 安裝 GNOME 相關工具
sudo apt install -y gnome-tweaks
sudo apt install -y  gnome-shell-extensions 
sudo apt install -y gnome-control-center 
sudo apt install -y nautilus-admin
# 安裝文檔與辦公工具
sudo apt install -y gedit gedit-plugins 
sudo apt install -y libreoffice libreoffice-base libreoffice-mysql-connector
sudo apt install -y texstudio
sudo apt install libreoffice-l10n-zh-tw
sudo apt-get install -y okular

# 安裝網絡工具
sudo apt install -y traceroute 
sudo apt install -y whois 
sudo apt install -y samba
sudo apt install -y libpam-smbpass
sudo apt install -y filezilla
sudo apt-get  -y  install chromium-browser
# 安裝圖形與設計工具
sudo apt install -y imagemagick
sudo apt install -y php-imagick
sudo apt install -y openclipart
sudo apt install -y openscad
sudo apt install -y graphviz
# 安裝字體與語言支持
sudo apt install -y fonts-wqy-microhei fonts-wqy-zenhei
sudo apt install -y ttf-mscorefonts-installer 
sudo apt install -y fonts-linuxlibertine
# 安裝安全與隱私工具
sudo apt install -y clamtk clamtk-gnome
sudo apt install -y bleachbit
# 安裝其他工具
sudo apt install -y amule
sudo apt install -y kate 
sudo apt install -y calibre 
sudo apt install -y unzip
sudo apt install -y p7zip-full
# 安裝壓縮工具
sudo apt install -y p7zip-rar
sudo apt install -y dpkg-dev
sudo apt install -y libavcodec-extra

# 安裝 GNOME 擴展與工具
sudo apt install -y numlockx
sudo apt install -y xdotool
sudo apt install -y v4l2loopback-dkms
sudo apt install -y ssmtp

# 安裝字典與學習工具
sudo apt install -y stardict
sudo apt install -y goldendict
sudo apt install -y kbibtex
sudo apt install -y hspell
# 安裝 R 語言相關工具
sudo apt install -y r-cran-haven r-cran-xtable r-cran-tcltk2
# 安裝屏幕錄製工具
sudo apt install -y vokoscreen
# 安裝視頻編輯工具
sudo apt install -y flowblade
sudo apt install -y handbrake-gtk
sudo apt install -y handbrake-cli
# 安裝文檔轉換工具
sudo apt install -y libwpd-tools
sudo apt install -y untex wv
sudo apt install -y libchm-bin
sudo apt install -y librdf-icalendar-perl
# 安裝圖表工具
sudo apt install -y dia dia-gnome xmind


# 安裝剩餘工具
sudo apt install -y libfuse2 
sudo apt install -y libudunits2-dev 
sudo apt install -y mesa-utils
sudo apt install -y gnome-search-tool
# enable scp 
sudo apt-get -y install openssh-server
sudo ufw allow ssh
sudo ufw allow 22

sudo apt-get  -y  install gdebi
sudo apt-get -y   install  nautilus-admin
sudo apt-get  -y  install gnome-tweak-tool
sudo apt-get  -y install dconf-editor
sudo apt-get  -y  install ubuntu-restricted-extras
sudo apt-get  -y  install dpkg-dev
sudo apt-get  -y  install libwxgtk*
sudo apt-get  -y  install libavcodec-extra
sudo apt-get  -y  install pcscd pcsc-tools
sudo apt-get  -y  install wine winetricks playonlinux cabextract
sudo apt-get  -y  install synaptic
sudo apt-get  -y  install gnome-system-tools
sudo apt-get  -y  install festival
sudo apt-get  -y  install festvox-us1 festvox-us2 festvox-us3
sudo apt-get  -y  install grub-customizer
sudo apt-get -y   install pkexec
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
sudo apt install -y dconf-editor
sudo apt install -y hardinfo 
sudo apt install -y sysstat 
sudo apt install -y stacer 
sudo apt install -y gnome-system-monitor

# 6. 多媒體工具
echo "6. 多媒體工具..."
# 安裝多媒體工具
sudo apt install -y ffmpeg 
sudo apt install -y vlc 
sudo apt install -y obs-studio 
sudo apt install -y mplayer 
sudo apt install -y musescore
sudo apt-get  -y  install audacity

sudo apt install -y handbrake 
sudo apt install -y kdenlive 
sudo apt install -y shotcut 
sudo apt install -y openshot-qt 
sudo apt install -y gaupol 
sudo apt install -y vcdimager 
sudo apt install -y sound-juicer 
sudo apt install -y asunder 
sudo apt install -y abcde 
sudo apt install -y ripperx 
sudo apt install -y brasero 
sudo apt install -y k3b 
sudo apt install -y mkisofs 
sudo apt install -y growisofs 
sudo apt install -y mypaint 
sudo apt install -y gimp 
sudo apt install -y inkscape 
sudo apt install -y krita 
sudo apt install -y blender 
sudo apt install -y audacity 
sudo apt install -y shotcut 
sudo apt install -y mpv 
sudo apt install -y winff
sudo apt-get  -y  install gimp-plugin-registry
sudo snap install vidcutter
DESKTOP_FILE="/usr/share/applications/org.gnome.Totem.desktop"

# Ensure Totem is installed
if ! dpkg -s totem &> /dev/null; then
    echo "▶ Totem video player is not installed. Installing..."
    sudo apt update
    sudo apt install -y totem
else
    echo "▶ Totem video player is already installed."
fi
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
sudo apt install -y lmms 
sudo apt install -y vym 
sudo apt install -y freemind
sudo apt install -y scribus
sudo apt install -y sqlite3
sudo apt install -y sqlitebrowser
# 安裝統計分析工具
sudo apt install -y pspp 
sudo apt install -y r-base r-cran-haven r-cran-xtable r-cran-tcltk2 rkward
# 10. 安全
echo "10. 安全..."
sudo apt install -y clamav clamtk

# 11. DVD 支援
echo "11. DVD 支援..."
# play encrypted DVDs 
sudo apt install -y libdvd-pkg
sudo apt-get -y install libdvdnav*
sudo apt-get -y install libdvdread*  
sudo dpkg-reconfigure libdvd-pkg

# 12. 掃描工具
echo "12. 安裝打印與掃描工具"
sudo apt install -y simple-scan
sudo apt install -y cups-pdf
sudo apt-get -y install  xsane
sudo apt-get -y install  gocr
sudo apt-get -y install  gv

# 13. 額外應用程式 (手動安裝)
echo "13. 額外應用程式及工具與字體 (手動安裝)..."
# 安裝字體工具
sudo apt install -y fonts-cns11643-kai
sudo apt install -y fonts-cns11643-sung
sudo apt install -y fonts-moe-standard-song
sudo apt install -y fonts-moe-standard-kai

# 安裝其他字體
sudo apt install -y fonts-arphic-ukai
sudo apt install -y fonts-arphic-uming
sudo apt install -y fonts-arphic-bkai00mp
sudo apt install -y fonts-arphic-bsmi00lp

# 安裝更多字體
sudo apt install -y fonts-arphic-gbsn00lp
sudo apt install -y fonts-arphic-gkai00mp
sudo apt install -y fonts-cwtex-ming
sudo apt install -y fonts-cwtex-kai


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
# Eable Gedit to read Big5 encoding
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
sudo flatpak install -y flathub edu.mit.Scratch


# 安裝 MadEdit
echo "19. 安裝 MadEdit..."
wget https://sourceforge.net/projects/madedit-mod/files/0.4.20/madedit-mod_0.4.20-1_amd64_Ubuntu_22_04_2.deb
sleep 5
sudo gdebi --non-interactive madedit-mod_0.4.20-1_amd64_Ubuntu_22_04_2.deb
sleep 5
rm madedit-mod_0.4.20-1_amd64_Ubuntu_22_04_2.deb

# 安裝 新 自製語音小祕書及上網查自典
echo "20. 安裝 新 自製語音小祕書及上網查自典..."
# 取得英語小祕書
if git clone "https://github.com/guidry/Ubuntu-tts-Agent"; then
    echo "✅ Clone Ubuntu-tts-Agent successful"
	cd "Ubuntu-tts-Agent"
	#sed -i '1 i\#!/bin/bash' ./install_tts.sh
	#sed -i '1 i\#!/bin/bash' ./install_lookupDict.sh
	sleep 5	
	if [ ! -f install_PiperTTS.sh ]; then
	  echo "安裝腳本 install_PiperTTS.sh 不存在！" 
	else
		chmod +x install_PiperTTS.sh
		./install_PiperTTS.sh
		echo "安裝了PiperTTS 可在 Firefox, Okular 等朗讀英文"
		sleep 5  
	fi
	
	if [ ! -f install_tts.sh ]; then
	  echo "安裝腳本 install_tts.sh 不存在！" 
	else
		chmod +x install_tts.sh
		./install_tts.sh
		echo "安裝了語音小祕書，請到「顯示應用程式」控制面板找尋 Text to speech，再加入喜好，即可在控制列中點按唸圖示唸出選取的英語句子來。"
		sleep 5  
	fi
	
	if [ ! -f install_lookupDict.sh ]; then
	  echo "安裝腳本 install_lookupDict.sh 不存在！" 
	else
		chmod +x install_lookupDict.sh
		./install_lookupDict.sh
		echo "安裝了上網查字典，請到「顯示應用程式」控制面板找尋 上網查單字，即可在控制列中點按唸圖示查選取的單字。"
		sleep 5  
	fi
	cd .. 
	rm -rf "Ubuntu-tts-Agent"
else
    echo "❌ Clone Ubuntu-tts-Agent failed 找不到英文語音祕書的專案可下載"
fi
sudo update-desktop-database




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



