#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Detect OS
OS=$(uname -s)
ARCH=$(uname -m)

if [ "$OS" == "Darwin" ]; then
    # macOS
    if [ "$ARCH" == "arm64" ]; then
        URL="https://github.com/getzola/zola/releases/download/v0.19.2/zola-v0.19.2-aarch64-apple-darwin.tar.gz"
    elif [ "$ARCH" == "x86_64" ]; then
        URL="https://github.com/getzola/zola/releases/download/v0.19.2/zola-v0.19.2-x86_64-apple-darwin.tar.gz"
    else
        echo "Unsupported architecture for macOS: $ARCH"
        exit 1
    fi
elif [ "$OS" == "Linux" ]; then
    # Linux
    if [ "$ARCH" == "x86_64" ]; then
        URL="https://github.com/getzola/zola/releases/download/v0.19.2/zola-v0.19.2-x86_64-unknown-linux-gnu.tar.gz"
    else
        echo "Unsupported architecture for Linux: $ARCH"
        exit 1
    fi
else
    echo "Unsupported operating system: $OS"
    exit 1
fi

# Set output file and destination directory
OUTPUT="zola.tar.gz"
DESTINATION="."

# Download the appropriate file
echo "Downloading Zola for OS: $OS, Architecture: $ARCH"
curl -L -o "$OUTPUT" "$URL"

# Extract the tar.gz file
echo "Extracting Zola..."
mkdir -p "$DESTINATION"
tar -xzf "$OUTPUT" -C "$DESTINATION"

# Remove the tar.gz file
echo "Cleaning up..."
rm -f "$OUTPUT"
