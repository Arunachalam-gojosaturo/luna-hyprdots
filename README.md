<div align="center">

<img src="https://capsule-render.vercel.app/api?type=waving&color=0:020c14,30:003566,70:0077a8,100:00b4d8&height=220&section=header&text=Luna-Hyprdots&fontSize=70&fontColor=ffffff&fontAlignY=40&desc=⚡%20Modern%20Minimalist%20Hyprland%20Rice%20for%20Arch%20Linux%20⚡&descColor=90e0ef&descAlignY=62&descSize=17&animation=fadeIn" width="100%"/>

</div>

<div align="center">

<img src="https://img.shields.io/badge/Hyprland-Compositor-00b4d8?style=for-the-badge&logo=wayland&logoColor=white&labelColor=0d1117"/>
<img src="https://img.shields.io/badge/Arch_Linux-1793D1?style=for-the-badge&logo=arch-linux&logoColor=white&labelColor=0d1117"/>
<img src="https://img.shields.io/badge/Widgets-AGS-00b4d8?style=for-the-badge&logo=gnome&logoColor=white&labelColor=0d1117"/>
<img src="https://img.shields.io/badge/License-GPLv3-90e0ef?style=for-the-badge&labelColor=0d1117"/>

</div>

<br/>

---

## 🖥️ Desktop Preview

Here is a preview of the **Luna-Hyprdots** desktop environment in action, featuring the customized panel widgets, workspaces, and system controls:

<p align="center">
  <img src=".config/showcase/screenshot_20260706_144759.webp" width="48%" alt="Desktop Overview">
  <img src=".config/showcase/screenshot_20260706_145420.webp" width="48%" alt="AGS Control Center">
</p>

<p align="center">
  <img src=".config/showcase/screenshot_20260706_145425.webp" width="48%" alt="App Launcher">
  <img src=".config/showcase/screenshot_20260706_145812.webp" width="48%" alt="Terminal and Workspace">
</p>

---

## 🖼️ Wallpapers Gallery

A collection of high-resolution minimalist and anime wallpapers included in this setup:

<table>
  <tr>
    <td align="center"><img src=".config/wallpapers/defaults/images_sfw/1335950.png" width="100%"><br><sub>Wallpaper 1</sub></td>
    <td align="center"><img src=".config/wallpapers/defaults/images_sfw/1336073.png" width="100%"><br><sub>Wallpaper 2</sub></td>
    <td align="center"><img src=".config/wallpapers/defaults/images_sfw/1336102.png" width="100%"><br><sub>Wallpaper 3</sub></td>
  </tr>
  <tr>
    <td align="center"><img src=".config/wallpapers/defaults/images_sfw/1402520.jpg" width="100%"><br><sub>Wallpaper 4</sub></td>
    <td align="center"><img src=".config/wallpapers/defaults/images_sfw/wp12464613-asa-manga-desktop-wallpapers.jpg" width="100%"><br><sub>Asa Mitaka</sub></td>
    <td align="center"><img src=".config/wallpapers/defaults/images_sfw/wp12684531-chainsaw-man-girls-wallpapers.jpg" width="100%"><br><sub>Chainsaw Man Girls</sub></td>
  </tr>
  <tr>
    <td align="center"><img src=".config/wallpapers/defaults/images_sfw/wp13059159-yoru-chainsaw-man-wallpapers.png" width="100%"><br><sub>Yoru (War Devil)</sub></td>
    <td align="center"><img src=".config/wallpapers/defaults/images_sfw/wp12422026-war-devil-wallpapers.jpg" width="100%"><br><sub>War Devil Dark</sub></td>
    <td></td>
  </tr>
</table>

---

## 📂 Repository Structure

The full directory layout of the **Luna-Hyprdots** project is organized as follows:

```txt
luna-hyprdots/
├── install.sh                  ← Unified Bash installation wizard
├── LICENSE                     ← GNU GPLv3 License text
├── README.md                   ← Project documentation
├── .zshrc                      ← Pre-configured Zsh shell environment
├── .gitignore                  ← Git file inclusion/exclusion rules
├── 📁 DOCUMENTATION/           ← Modular manuals & troubleshooting guides
│   ├── README.md
│   ├── 00_DOCUMENTATION.md
│   ├── 01_ANIMATIONS.md
│   ├── 02_KEYBINDINGS.md
│   └── ...
├── 📁 .icons/                  ← Cursor icons (Phinger dark/light themes)
└── 📁 .config/                 ← Configuration files (copied to ~/.config/)
    ├── starship.toml           ← Starship prompt configuration
    ├── 📁 ags/                 ← Aylur's GTK Shell (bars, widgets, panels)
    ├── 📁 cava/                ← Audio visualizer configurations
    ├── 📁 fastfetch/           ← Fastfetch desktop details config
    ├── 📁 hypr/                ← Hyprland, Hyprlock, and Hyprpaper setup
    ├── 📁 kitty/               ← Kitty terminal emulator profile
    ├── 📁 pipewire/            ← Audio management routing configurations
    ├── 📁 showcase/            ← Webp screenshots for GitHub preview
    └── 📁 wallpapers/          ← Wallpapers directory (SFW images)
```

---

## ✨ Features

- **Advanced Status Bar & Widgets**: Powered by Aylur's GTK Shell (AGS) for fully customizable status bar panels, app launchers, user profile widgets, and dashboard toggles.
- **Dynamic Wallpapers & Themes**: Dynamic wallpaper picker with animated transitions using `swww` and automated configuration updates.
- **Unified Clean Installer**: A simple one-command bash installer script (`install.sh`) that installs dependencies, sets up user permissions, and deploys dotfiles safely.
- **Minimalist Structure**: Clear separation between components, ensuring configuration files remain clean, manageable, and easy to tweak.

---

## 🚀 Installation

### 1️⃣ Clone the Repository
```bash
git clone https://github.com/Arunachalam-gojosaturo/luna-hyprdots.git
cd luna-hyprdots
```

### 2️⃣ Run the Installer
```bash
chmod +x install.sh
./install.sh
```

---

## 🤝 Inspiration & Credits

> [!NOTE]
> This Hyprland configuration is inspired by the exceptional work and structural organization in [ArchEclipse by AymanLyesri](https://github.com/AymanLyesri/ArchEclipse). Thank you for the contribution to the Linux customization community!

---

## 👤 Author

<div align="center">

<img src="https://github.com/Arunachalam-gojosaturo.png" width="110" style="border-radius:50%; border: 3px solid #00b4d8;"/>

### **Arunachalam**
*Linux Customization Enthusiast*

[![GitHub](https://img.shields.io/badge/GitHub-Arunachalam--gojosaturo-00b4d8?style=for-the-badge&logo=github&logoColor=white&labelColor=0d1117)](https://github.com/Arunachalam-gojosaturo)
[![Instagram](https://img.shields.io/badge/Instagram-@saturogojo__ac-e1306c?style=for-the-badge&logo=instagram&logoColor=white&labelColor=0d1117)](https://instagram.com/saturogojo_ac)

</div>

---

## 📄 License

This project is licensed under the **GNU General Public License Version 3 (GPLv3)**. See the [LICENSE](LICENSE) file for details.
