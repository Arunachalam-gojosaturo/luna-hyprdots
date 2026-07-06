#!/bin/bash

# Path to images directory
IMAGES_DIR="$HOME/.config/fastfetch/images"

# Pick a random image file from the images directory
IMAGE_PATH=$(find "$IMAGES_DIR" -maxdepth 1 -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.webp" \) 2>/dev/null | shuf -n 1)

if [ -z "$IMAGE_PATH" ]; then
    # Fetch system information without image (falls back to default ASCII)
    fastfetch
    exit 0
fi

# Fetch system information with the random image using the Kitty graphics protocol
fastfetch --logo-type kitty --logo-recache --logo-width 38 --logo "$IMAGE_PATH"
