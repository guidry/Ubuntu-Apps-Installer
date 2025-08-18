#!/bin/bash
# Additional text file types to allow (PHP, C++, JS, CSS, etc.)
EXTENSIONS=(
	"*.txt"
	"*.md"
	"*.mdwn"
    "*.php"
    "*.cpp"
    "*.cxx"
    "*.hpp"
    "*.c"
    "*.h"
    "*.js"
    "*.css"
    "*.java"
    "*.py"
    "*.sh"
    "*.pl"
    "*.rb"
    "*.bas"
    "*.lua"
    "*.cs"
    "*.go"
    "*.rs"
    "*.md"
    "*.yaml"
    "*.toml"
    "*.json"
    "*.ini"
)
# Convert array to gsettings-compatible format
EXTENSIONS_STRING=$(printf "'%s', " "${EXTENSIONS[@]}")
EXTENSIONS_STRING="[${EXTENSIONS_STRING%, }]"

# Apply new text-allowlist using gsettings
gsettings set org.freedesktop.Tracker3.Extract text-allowlist "$EXTENSIONS_STRING"

# Verify the change
echo "Updated text-allowlist:"
gsettings get org.freedesktop.Tracker3.Extract text-allowlist


# Directories to index recursively (add PHP and C++ directories)
DIRECTORIES_TO_INDEX=(
	"&DESKTOP"
	"&DOCUMENTS" 
	"&MUSIC" 
	"&PICTURES" 
	"&VIDEOS"
	"/DATA"
    "$HOME/public_html"
    "$HOME/programming"
)

# Convert array to a dconf-compatible list format
DIRECTORIES_LIST=$(printf "'%s'," "${DIRECTORIES_TO_INDEX[@]}")
DIRECTORIES_LIST="[${DIRECTORIES_LIST%,}]"

# Set the index-recursive-directories dconf key
dconf write /org/freedesktop/tracker3/miners/file/index-recursive-directories "$DIRECTORIES_LIST"
gsettings set org.freedesktop.Tracker3.Miner.Files index-recursive-directories "$DIRECTORIES_LIST"

echo "The following directories will be recursively indexed by Tracker3:"
echo "$DIRECTORIES_LIST"

# Create custom extract rules for PHP and C++ files to treat as plain text

echo "Creating custom Tracker3 extract rule..."
# PHP rule (treat PHP files as text)
sudo tee /usr/share/tracker3-miners/extract-rules/10-php.rule > /dev/null <<EOF
[ExtractorRule]
ModulePath=libextract-text.so
MimeTypes=application/x-php;
FallbackRdfTypes=nfo:Document;nfo:PlainTextDocument;
Graph=tracker:Documents
EOF


# Define the custom extract rule file path
EXTRACT_RULE_FILE="/usr/share/tracker3-miners/extract-rules/10-code.rule"

# Create or overwrite the extraction rule

sudo tee /usr/share/tracker3-miners/extract-rules/10-code.rule > /dev/null <<EOF
[ExtractorRule]
ModulePath=libextract-text.so
MimeTypes=text/x-c++src;text/x-csrc;text/x-java;text/x-python;text/x-shellscript;text/x-perl;text/x-ruby;text/x-lua;text/x-csharp;text/x-go;text/x-rust;text/javascript;text/css;text/x-sql;text/x-markdown;text/x-yaml;text/x-toml;text/x-json;text/x-ini
FallbackRdfTypes=nfo:PlainTextDocument
Graph=tracker:Documents
EOF


echo "Custom extract rule created at: $EXTRACT_RULE_FILE"


# 排除開發和虛擬機器等資料夾
# 請根據你的實際路徑和需要修改
gsettings set org.freedesktop.Tracker3.Miner.Files ignored-directories \
"['file:///home/$USER/.git', 'file:///home/$USER/node_modules', 'file:///home/$USER/build', 'file:///home/$USER/__pycache__']"
# 排除大型二進制檔案
# 注意：這裡會將這些檔案類型加到被忽略的檔案清單中
gsettings set org.freedesktop.Tracker3.Miner.Files ignored-files "['*~', '.*', '~*', '*.iso', '*.vdi', '*.vmdk', '*.img']"

# Restart Tracker3 to apply changes
echo "Restarting Tracker3..."
tracker3 reset --filesystem
tracker3 daemon -k
tracker3 daemon -s

echo "Tracker3 has been restarted. Reindexing will start shortly."


