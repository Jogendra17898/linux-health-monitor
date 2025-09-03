#!/bin/bash
# Rotate logs from /var/log into an archive folder

LOG_DIR="/var/log"
ARCHIVE_DIR="/home/$(whoami)/log_archive/$(date +%Y-%m-%d)"

mkdir -p "$ARCHIVE_DIR"

# Move all .log files
find "$LOG_DIR" -type f -name "*.log" -exec mv {} "$ARCHIVE_DIR" \;

echo "✅ Logs moved to $ARCHIVE_DIR"