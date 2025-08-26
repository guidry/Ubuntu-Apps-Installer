#!/bin/bash
# install_limit_tracker.sh
# Generates limit_tracker.sh, installs it, and autostarts it at login
# 限制檢索程式 tracker3 讓它不要用太多資源的安裝程式
# Define paths
SCRIPT_DIR="$HOME/.local/bin"
SCRIPT_PATH="$SCRIPT_DIR/limit_tracker.sh"
AUTOSTART_DIR="$HOME/.config/autostart"
DESKTOP_FILE="$AUTOSTART_DIR/limit_tracker.desktop"

# Ensure directories exist
mkdir -p "$SCRIPT_DIR" "$AUTOSTART_DIR"

# Generate limit_tracker.sh
cat > "$SCRIPT_PATH" << EOF
#!/bin/bash
# 限制檢索程式 tracker3 讓它不要用太多資源
# 取得總邏輯核心數
CPU_TOTAL=\$(nproc)
# 隨機選 1 個核心
RANDOM_CORE=\$(( RANDOM % CPU_TOTAL ))
# 建立 systemd override 目錄
mkdir -p ~/.config/systemd/user/tracker-miner-fs-3.service.d/          
# 生成 override.conf
tee ~/.config/systemd/user/tracker-miner-fs-3.service.d/override.conf > /dev/null <<EOT
[Service]
Environment=TRACKER_MINER_THREADS=1
StandardError=null
CPUAffinity=\$RANDOM_CORE
CPUQuota=5%
Nice=10
EOT
# 重新載入 systemd 設定
systemctl --user daemon-reload
# 重啟 Tracker 服務
systemctl --user restart tracker-miner-fs-3.service
echo "Tracker 已設定隨機核心 (\$RANDOM_CORE)、CPUQuota 與單線程 並重啟"
EOF

# Make it executable
chmod +x "$SCRIPT_PATH"

# Generate autostart .desktop file
cat > "$DESKTOP_FILE" << EOF
[Desktop Entry]
Type=Application
Exec=$SCRIPT_PATH
Hidden=false
NoDisplay=false
X-GNOME-Autostart-enabled=true
Name=Limit Tracker
Comment=Limit Tracker resource usage automatically
EOF

echo "✅ limit_tracker.sh generated at $SCRIPT_PATH"
echo "✅ Autostart entry created at $DESKTOP_FILE"
