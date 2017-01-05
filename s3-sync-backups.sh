#!/usr/bin/env bash

export AWS=/usr/local/bin/aws

# PERSONAL DATA
$AWS s3 sync --delete --sse aws:kms --profile personal $HOME/Documents/Personal s3://my-backups/`hostname`/Documents/Personal
$AWS s3 sync --delete --sse aws:kms --profile personal $HOME/Pictures s3://my-backups/`hostname`/Pictures
$AWS s3 sync --delete --sse aws:kms --profile personal $HOME/bin s3://my-backups/`hostname`/bin


# WORK DATA
$AWS s3 sync --delete --sse aws:kms --profile work $HOME/Documents/UTRS s3://work-backups/`hostname`/Documents/UTRS



