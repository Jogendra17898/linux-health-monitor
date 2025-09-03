#!/bin/bash
# Backup /home directory into a timestamped tar.gz file

BACKUP_DIR="/home/$(whoami)/backups"
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
FILENAME="home_backup_$TIMESTAMP.tar.gz"

# Create backup directory if not exists
mkdir -p "$BACKUP_DIR"

# Perform backup
tar -czf "$BACKUP_DIR/$FILENAME" /home 2>/dev/null

echo "✅ Backup completed: $BACKUP_DIR/$FILENAME"