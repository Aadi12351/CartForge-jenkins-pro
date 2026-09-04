#!/bin/bash

# CartForge Jenkins Backup Script

set -e

BACKUP_DIR="/var/backups/jenkins"
TIMESTAMP=$(date +"%Y-%m-%d-%H%M%S")
BACKUP_FILE="$BACKUP_DIR/jenkins-backup-$TIMESTAMP.tar.gz"

echo "Creating Jenkins backup directory..."
sudo mkdir -p "$BACKUP_DIR"

echo "Creating Jenkins backup..."
sudo tar -czf "$BACKUP_FILE" /var/lib/jenkins

echo "Backup completed successfully."
echo "Backup file:"
sudo ls -lh "$BACKUP_FILE"
