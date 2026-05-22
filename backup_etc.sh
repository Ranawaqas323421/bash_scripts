#!/bin/bash
BACKUP_DIR="/backup"
FILENAME="etc-backup-$(date +%F).tar.gz"
mkdir -p "$BACKUP_DIR"
tar -czf "$BACKUP_DIR/$FILENAME" /etc
echo "Backup completed: $BACKUP_DIR/$FILENAME"
