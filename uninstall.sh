#!/data/data/com.termux/files/usr/bin/bash
# V4Z YT DOWNLOADER — Uninstaller by V4Z RASHD

RED='\033[0;31m'; GREEN='\033[0;32m'; YELLOW='\033[1;33m'; NC='\033[0m'

echo -e "${YELLOW}Removing V4Z YT Downloader...${NC}"
rm -f "$PREFIX/bin/v4zyt"

echo -e "${GREEN}✓ v4zyt command removed.${NC}"
echo -e "${YELLOW}Downloaded files in ~/storage/downloads/V4ZTube were kept.${NC}"
echo -e "${YELLOW}To also remove yt-dlp: ${NC}pip uninstall yt-dlp"
