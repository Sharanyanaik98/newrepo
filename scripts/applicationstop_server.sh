#!/bin/bash
set -e

echo "===== ApplicationStop ====="

# Stop app only if pm2 exists
if command -v pm2 &> /dev/null; then
  pm2 delete app || true
fi

echo "===== ApplicationStop completed ====="

