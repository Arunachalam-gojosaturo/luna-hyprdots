#!/usr/bin/env bash

# ══════════════════════════════════════════════════════════════════════════════
#  Luna-Hyprdots Installer
#  Author  : Arunachalam
#  GitHub  : github.com/Arunachalam-gojosaturo
#  Instagram: @saturogojo_ac
# ══════════════════════════════════════════════════════════════════════════════

set -e

# ─────────────────────────────────────────────
#  COLORS & STYLES
# ─────────────────────────────────────────────
RESET="\033[0m"
BOLD="\033[1m"
DIM="\033[2m"

BLACK="\033[0;30m"
RED="\033[1;31m"
GREEN="\033[1;32m"
YELLOW="\033[1;33m"
BLUE="\033[1;34m"
CYAN="\033[1;36m"
WHITE="\033[1;37m"

BG_BLACK="\033[40m"
BG_CYAN="\033[46m"

STEP=0
TOTAL=9

step_next() {
    STEP=$((STEP + 1))
}

# ─────────────────────────────────────────────
#  PRINT HELPERS
# ─────────────────────────────────────────────
nl() { echo ""; }

divider() {
    echo -e "${DIM}${CYAN}  ══════════════════════════════════════════════════════════════════════════════════════════════════  ${RESET}"
}

thin_divider() {
    echo -e "${DIM}  ──────────────────────────────────────────────────────────────────────────────────────────────────  ${RESET}"
}

section() {
    local label="$1"
    nl
    divider
    printf "${CYAN}${BOLD}  ❯ %02d/%02d  ${WHITE}${BOLD}%-55s${RESET}\n" "$STEP" "$TOTAL" "$label"
    divider
    nl
}

ok()   { echo -e "  ${GREEN}${BOLD}  ✔  ${RESET}${WHITE}$1${RESET}"; }
warn() { echo -e "  ${YELLOW}${BOLD}  ⚠  ${RESET}${YELLOW}$1${RESET}"; }
err()  { echo -e "  ${RED}${BOLD}  ✖  ${RESET}${RED}$1${RESET}"; }
info() { echo -e "  ${CYAN}  ›  ${RESET}${DIM}$1${RESET}"; }
run()  { echo -e "  ${DIM}${CYAN}  »  ${WHITE}$1${RESET}"; }

progress() {
    local current=$1
    local total=$2
    local width=50
    local filled=$(( current * width / total ))
    local empty=$(( width - filled ))
    local pct=$(( current * 100 / total ))

    local bar=""
    for ((i=0; i<filled; i++)); do bar+="█"; done
    for ((i=0; i<empty;  i++)); do bar+="░"; done

    printf "  ${CYAN}  [${GREEN}${BOLD}%s${CYAN}] ${WHITE}%3d%%  ${DIM}(%d/%d)${RESET}\n" "$bar" "$pct" "$current" "$total"
}

# ─────────────────────────────────────────────
#  MAIN BANNER
# ─────────────────────────────────────────────
clear
echo ""
echo -e "${CYAN}${BOLD}"
cat << 'BANNER'
 ╔══════════════════════════════════════════════════════════════════════════════════════════════════╗
 ║                                                                                                  ║
 ║                                      ██████╗  ██████╗ ███████╗                                   ║
 ║                                     ██╔═══██╗██╔════╝ ██╔════╝                                   ║
 ║                                     ██║   ██║██║  ███╗███████╗                                   ║
 ║                                     ██║   ██║██║   ██║╚════██║                                   ║
 ║                                     ╚██████╔╝╚██████╔╝███████║                                   ║
 ║                                      ╚═════╝  ╚═════╝ ╚══════╝                                   ║
 ║                                                                                                  ║
 ║            ██╗     ██╗   ██╗███╗   ██╗ █████╗     ██╗  ██╗██╗   ██╗██████╗ ██████╗               ║
 ║            ██║     ██║   ██║████╗  ██║██╔══██╗    ██║  ██║╚██╗ ██╔╝██╔══██╗██╔══██╗              ║
 ║            ██║     ██║   ██║██╔██╗ ██║███████║    ███████║ ╚████╔╝ ██████╔╝██████╔╝              ║
 ║            ██║     ██║   ██║██║╚████║██╔══██║    ██╔══██║  ╚██╔╝  ██╔═══╝ ██╔══██╗              ║
 ║            ███████╗╚██████╔╝██║ ╚███║██║  ██║    ██║  ██║   ██║   ██║     ██║  ██║              ║
 ║            ╚══════╝ ╚═════╝ ╚═╝  ╚══╝╚═╝  ╚═╝    ╚═╝  ╚═╝   ╚═╝   ╚═╝     ╚═╝  ╚═╝              ║
 ║                                                                                                  ║
 ║          ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━         ║
 ║               L U N A   H Y P R D O T S   ·   M O D E R N   H Y P R L A N D   R I C E              ║
 ║          ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━         ║
 ║                                                                                                  ║
 ╚══════════════════════════════════════════════════════════════════════════════════════════════════╝
BANNER
echo -e "${RESET}"

echo -e "  ${DIM}${WHITE}  Author   ${CYAN}›  ${WHITE}Arunachalam${RESET}"
echo -e "  ${DIM}${WHITE}  GitHub   ${CYAN}›  ${WHITE}github.com/Arunachalam-gojosaturo${RESET}"
echo -e "  ${DIM}${WHITE}  Instagram ${CYAN}›  ${WHITE}@saturogojo_ac${RESET}"
nl
divider
echo -e "  ${CYAN}${BOLD}  SYSTEM CHECK  ${RESET}${DIM}Initializing System Checks...${RESET}"
divider
nl

# ─────────────────────────────────────────────
#  STEP 01 — ARCH LINUX CHECK
# ─────────────────────────────────────────────
step_next
section "ARCH LINUX DETECTION"
progress $STEP $TOTAL

if ! grep -q "Arch" /etc/os-release 2>/dev/null; then
    err "This installer supports Arch Linux only."
    nl
    echo -e "  ${DIM}Detected OS:${RESET}"
    cat /etc/os-release | grep PRETTY_NAME | sed 's/^/  /'
    nl
    exit 1
fi

ok "Arch Linux detected"
sleep 0.5

# ─────────────────────────────────────────────
#  STEP 02 — SYSTEM UPDATE
# ─────────────────────────────────────────────
step_next
section "SYSTEM MIRRORS REFRESH"
progress $STEP $TOTAL

echo -e "  ${YELLOW}${BOLD}  ?  ${RESET}${WHITE}Sync pacman mirrors before package installation? ${DIM}[y/N]${RESET} " && read -r SYNC_CHOICE

if [[ "$SYNC_CHOICE" =~ ^[Yy]$ ]]; then
    run "sudo pacman -Sy"
    sudo pacman -Sy
    ok "Pacman database synced successfully"
else
    info "Skipping mirror sync"
fi
sleep 0.5

# ─────────────────────────────────────────────
#  STEP 03 — AUR HELPER (YAY)
# ─────────────────────────────────────────────
step_next
section "AUR HELPER DETECTION & INSTALL"
progress $STEP $TOTAL

if ! command -v yay >/dev/null 2>&1; then
    info "yay not found — building from AUR..."
    nl
    run "git clone https://aur.archlinux.org/yay.git"
    git clone https://aur.archlinux.org/yay.git
    cd yay
    run "makepkg -si --noconfirm"
    makepkg -si --noconfirm
    cd ..
    rm -rf yay
    ok "yay installed successfully"
else
    ok "yay detected"
fi
sleep 0.5

# ─────────────────────────────────────────────
#  STEP 04 — INSTALLATION OF PACKAGES
# ─────────────────────────────────────────────
step_next
section "INSTALLING SYSTEM DEPENDENCIES"
progress $STEP $TOTAL

# Unified Package Lists from Packages.py
PACMAN_PKGS=(
    gst-libav bat bc figlet git p7zip wl-clipboard lsd cron socat btop
    dart-sass sassc fd jq translate-shell python-requests python-pillow
    zsh zsh-syntax-highlighting bluez bluez-utils network-manager-applet
    networkmanager pamixer pavucontrol playerctl pipewire brightnessctl
    hyprcursor hyprland swayimg kitty grim wf-recorder vlc imagemagick
    mpvpaper zenity sddm fastfetch starship gtk4 libadwaita gnome-themes-extra
    gvfs hyprlock hyprpaper ttf-jetbrains-mono-nerd noto-fonts-emoji kvantum
    qt5ct cmake meson cpio pkg-config gcc libwebp-utils
)

AUR_PKGS=(
    aylurs-gtk-shell-git libastal-meta zsh-auto-notify
    zsh-history-substring-search zsh-autosuggestions-git
    zsh-sudo-git fzf-tab-git cwal phinger-cursors
    whitesur-gtk-theme whitesur-icon-theme
    kvantum-theme-whitesur-git qt6ct-kde c-lolcat where-is-my-sddm-theme-git
    hyprpolkitagent
)

info "Installing official repositories packages..."
run "sudo pacman -S --needed --noconfirm ${PACMAN_PKGS[*]}"
sudo pacman -S --needed --noconfirm "${PACMAN_PKGS[@]}"

info "Installing AUR packages..."
run "yay -S --needed --noconfirm ${AUR_PKGS[*]}"
yay -S --needed --noconfirm "${AUR_PKGS[@]}" || warn "Some AUR packages failed to install, proceeding..."

sudo systemctl enable NetworkManager --now 2>/dev/null || true
ok "Package installation phase completed"
sleep 0.5

# ─────────────────────────────────────────────
#  STEP 05 — BACKUP EXISTING CONFIG
# ─────────────────────────────────────────────
step_next
section "BACKING UP EXISTING CONFIG"
progress $STEP $TOTAL

BACKUP_DIR=~/.config/luna_backup_$(date +%Y%m%d_%H%M%S)
mkdir -p "$BACKUP_DIR"

DIRS_TO_BACKUP=(hypr ags fastfetch kitty cava pipewire)

BACKED_COUNT=0
for dir in "${DIRS_TO_BACKUP[@]}"; do
    if [ -d ~/.config/$dir ]; then
        run "mv ~/.config/$dir → $BACKUP_DIR/$dir"
        mv ~/.config/$dir "$BACKUP_DIR/$dir"
        ok "Backed up: ~/.config/$dir"
        BACKED_COUNT=$((BACKED_COUNT + 1))
    fi
done

if [ $BACKED_COUNT -gt 0 ]; then
    ok "Backup saved in $BACKUP_DIR"
else
    info "No existing configs to backup"
fi
sleep 0.5

# ─────────────────────────────────────────────
#  STEP 06 — DEPLOY CONFIGURATION FILES
# ─────────────────────────────────────────────
step_next
section "DEPLOYING CONFIGURATION FILES"
progress $STEP $TOTAL

mkdir -p ~/.config

# Copy from local .config folder
if [ -d ".config" ]; then
    run "cp -r .config/* → ~/.config/"
    cp -r .config/* ~/.config/
    
    # Copy zsh config
    if [ -f ".zshrc" ]; then
        run "cp .zshrc → ~/.zshrc"
        cp .zshrc ~/.zshrc
    fi
    ok "Luna-Hyprdots configuration deployed"
else
    err "Source .config directory not found!"
    exit 1
fi

# Make scripts executable
chmod +x ~/.config/hypr/scripts/*.sh 2>/dev/null || true
ok "Script execution permissions set"
sleep 0.5

# ─────────────────────────────────────────────
#  STEP 07 — CONFIGURING USER GROUPS
# ─────────────────────────────────────────────
step_next
section "CONFIGURING SYSTEM PERMISSIONS"
progress $STEP $TOTAL

run "sudo usermod -aG video $USER"
sudo usermod -aG video "$USER" 2>/dev/null && ok "Added $USER to video group" || warn "Could not add to video group"

run "sudo gpasswd -a $USER input"
sudo gpasswd -a "$USER" input 2>/dev/null && ok "Added $USER to input group" || warn "Could not add to input group"
sleep 0.5

# ─────────────────────────────────────────────
#  STEP 08 — WALLPAPERS SETUP
# ─────────────────────────────────────────────
step_next
section "DEPLOYING WALLPAPERS"
progress $STEP $TOTAL

mkdir -p ~/Pictures/Wallpapers/LunaHyprdots

if [ -d ".config/wallpapers" ]; then
    run "cp .config/wallpapers/* → ~/Pictures/Wallpapers/LunaHyprdots/"
    cp .config/wallpapers/* ~/Pictures/Wallpapers/LunaHyprdots/ 2>/dev/null
    ok "Wallpapers deployed successfully"
else
    warn "No wallpapers directory found in config, skipping wallpaper deployment"
fi
sleep 0.5

# ─────────────────────────────────────────────
#  STEP 09 — FINISHING INSTALLATION
# ─────────────────────────────────────────────
step_next
section "INSTALLATION COMPLETED"
progress $STEP $TOTAL

nl
echo -e "${CYAN}${BOLD}"
cat << 'EOF'
  ╔══════════════════════════════════════════════════════════════════════════════╗
  ║                                                                              ║
  ║    ██████╗  ██████╗ ███╗   ██╗███████╗    ██████╗  ██████╗ ███╗  ██╗███████╗ ║
  ║   ██╔═══██╗██╔════╝ ████╗  ██║██╔════╝    ██╔══██╗██╔═══██╗████╗ ██║██╔════╝ ║
  ║   ██║   ██║██║  ███╗██╔██╗ ██║█████╗      ██║  ██║██║   ██║██╔██╗██║█████╗   ║
  ║   ██║   ██║██║   ██║██║╚████║██╔══╝      ██║  ██║██║   ██║██║╚████║██╔══╝   ║
  ║   ╚██████╔╝╚██████╔╝██║ ╚███║███████╗     ██████╔╝╚██████╔╝██║ ╚███║███████╗ ║
  ║    ╚═════╝  ╚═════╝ ╚═╝  ╚══╝╚══════╝     ╚═════╝  ╚═════╝ ╚═╝  ╚══╝╚══════╝ ║
  ║                                                                              ║
  ╚══════════════════════════════════════════════════════════════════════════════╝
EOF
echo -e "${RESET}"

thin_divider
echo -e "  ${GREEN}${BOLD}  ✔  ${RESET}${WHITE}${BOLD}Installation Summary${RESET}"
thin_divider
nl
echo -e "    ${CYAN}◆  ${WHITE}Configuration      ${GREEN}✔ Deployed to ~/.config/${RESET}"
echo -e "    ${CYAN}◆  ${WHITE}System Groups      ${GREEN}✔ Video and Input permissions set${RESET}"
echo -e "    ${CYAN}◆  ${WHITE}Wallpapers         ${GREEN}✔ Deployed to ~/Pictures/Wallpapers/LunaHyprdots${RESET}"
nl
thin_divider
nl
echo -e "  ${YELLOW}${BOLD}  ⚠  ${RESET}${YELLOW}${BOLD}Reboot recommended${RESET}${DIM} — group changes require a fresh session${RESET}"
nl
thin_divider
nl
echo -e "  ${WHITE}${BOLD}  Support & Updates:${RESET}"
echo -e "    ${CYAN}  GitHub   ${WHITE}›${RESET}  ${DIM}github.com/Arunachalam-gojosaturo${RESET}"
nl
divider
nl
echo -e "  ${CYAN}${BOLD}  ⚡ Welcome to Luna-Hyprdots. Enjoy your new setup! ⚡${RESET}"
nl
divider
nl
