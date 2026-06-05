#!/bin/bash

SOURCE_DIR="$HOME/workspaces/bash_scripts"
BACKUP_DIR="$HOME/backup"
S3_BUCKET="s3://my-simple-bucket-rana-12345"

sudo mkdir -p "$BACKUP_DIR"

sudo cp -r "$SOURCE_DIR" "$BACKUP_DIR"

aws s3 sync "$BACKUP_DIR" "$S3_BUCKET"

echo "✅ Backup completed successfully."
