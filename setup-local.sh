#!/bin/bash
SELECTED_HOST="$1"; shift
PLAYBOOK="${1:-setup}.yml"

if [ -z "$SELECTED_HOST" ]; then
  echo "No host provided"
  exit 1
fi

echo "Play: $PLAYBOOK"
echo "Host: $SELECTED_HOST"

ansible-playbook \
  "$PLAYBOOK" \
  -i hosts.yml \
  -l $SELECTED_HOST \
  --connection local \
  --ask-become-pass

