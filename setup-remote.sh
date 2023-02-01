#!/bin/bash
SELECTED_HOST="$1"; shift
PLAYBOOK="${1:-setup}.yml"

if [ -z "$SELECTED_HOST" ]; then
  echo "No host provided"
  exit 1
fi

echo "Play: $PLAYBOOK"
echo "Selected host: $SELECTED_HOST"

ansible-playbook \
  "$PLAYBOOK" \
  -i hosts.yml \
  -l $SELECTED_HOST \
  --ask-become-pass

