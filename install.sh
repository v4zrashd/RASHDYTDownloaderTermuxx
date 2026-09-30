#!/data/data/com.termux/files/usr/bin/bash
# ============================================================
#  V4Z YT DOWNLOADER — Installer by V4Z RASHD
#  Repo: https://github.com/v4zrashd/RASHDYTDownloaderTermuxx
# ============================================================
set -e

RED='\033[0;31m'; GREEN='\033[0;32m'; YELLOW='\033[1;33m'
CYAN='\033[0;36m'; MAGENTA='\033[0;35m'; NC='\033[0m'; BOLD='\033[1m'

REPO="v4zrashd/RASHDYTDownloaderTermuxx"

clear
echo -e "${MAGENTA}${BOLD}"
echo '  ╔══════════════════════════════════════╗'
echo '  ║                                      ║'
echo '  ║     ⬇  V4Z YT DOWNLOADER  ⬇         ║'
echo '  ║                                      ║'
echo '  ║        Installer by V4Z RASHD        ║'
echo '  ║                                      ║'
echo '  ╚══════════════════════════════════════╝'
echo -e "${NC}"

echo -e "${CYAN}[1/5]${NC} Updating packages..."
pkg update -y >/dev/null 2>&1

echo -e "${CYAN}[2/5]${NC} Installing dependencies (python, ffmpeg, curl)..."
pkg install -y python ffmpeg curl >/dev/null 2>&1

echo -e "${CYAN}[3/5]${NC} Installing yt-dlp..."
pip install -U yt-dlp -q >/dev/null 2>&1

echo -e "${CYAN}[4/5]${NC} Installing v4zyt command..."
curl -fsSL "https://raw.githubusercontent.com/${REPO}/main/v4zyt" -o "$PREFIX/bin/v4zyt"
chmod +x "$PREFIX/bin/v4zyt"

echo -e "${CYAN}[5/5]${NC} Setting up storage access..."
if [ ! -d "$HOME/storage" ]; then
    echo -e "${YELLOW}Please allow storage permission in the popup...${NC}"
    termux-setup-storage
    sleep 2
fi
mkdir -p "$HOME/storage/downloads/V4ZTube"

echo ""
echo -e "${GREEN}${BOLD}  ✓ V4Z YT DOWNLOADER installed successfully!${NC}"
echo ""
echo -e "  Run it with:  ${CYAN}${BOLD}v4zyt${NC}"
echo -e "  Videos save to: ${CYAN}~/storage/downloads/V4ZTube${NC}"
echo ""
echo -e "${MAGENTA}  — by V4Z RASHD ⚡${NC}"
