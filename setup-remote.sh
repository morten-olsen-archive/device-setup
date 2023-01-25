#!/bin/bash
SELECTED_HOST="$1"
if [ -z "$SELECTED_HOST" ]; then
  echo "No host provided"
  exit 1
fi

echo "Selected host: $SELECTED_HOST"

ansible-playbook \
  playbook.yml \
  -i hosts.yml \
  -l $SELECTED_HOST \
  --ask-become-pass

