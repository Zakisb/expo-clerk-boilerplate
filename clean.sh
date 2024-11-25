#!/bin/bash

echo "🧹 First cleaning attempt..."

# 1. Basic project cleanup
rm -rf node_modules
rm -f package-lock.json

# 2. Clear Metro bundler cache (this is often the source of weird behaviors)
rm -rf $TMPDIR/metro-* $TMPDIR/haste-map-*

# Reinstall
npm cache clean --force
npm install

echo "🚀 All done! Try 'npx expo start --clear' now"