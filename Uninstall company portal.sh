#!/bin/bash

# Paths related to Company Portal app
APP_PATH="/Applications/Company Portal.app"
SUPPORT_PATH="$HOME/Library/Application Support/com.microsoft.CompanyPortalMac"
PREFERENCES_PATH="$HOME/Library/Preferences/com.microsoft.CompanyPortalMac.plist"
CACHES_PATH="$HOME/Library/Caches/com.microsoft.CompanyPortalMac"

echo "Uninstalling Company Portal..."

# Remove the Company Portal application
if [ -d "$APP_PATH" ]; then
    rm -rf "$APP_PATH"
    echo "Removed Company Portal app from Applications."
else
    echo "Company Portal app not found in Applications."
fi

# Remove Application Support files
if [ -d "$SUPPORT_PATH" ]; then
    rm -rf "$SUPPORT_PATH"
    echo "Removed Application Support files."
fi

# Remove Preferences
if [ -f "$PREFERENCES_PATH" ]; then
    rm "$PREFERENCES_PATH"
    echo "Removed Preferences."
fi

# Remove Caches
if [ -d "$CACHES_PATH" ]; then
    rm -rf "$CACHES_PATH"
    echo "Removed Caches."
fi

echo "Company Portal has been uninstalled."

sudo jamf recon
