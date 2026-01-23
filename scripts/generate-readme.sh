#!/bin/bash
set -e

OUTPUT="README.md"

# Header
{
  echo "# Homebrew Tap"
  echo ""
  echo "Personal Homebrew tap for kluzzebass projects."
  echo ""
  echo "## Installation"
  echo ""
  echo '```bash'
  echo "brew tap kluzzebass/tap"
  echo '```'
  echo ""
  echo "## Available Formulas"
} > "$OUTPUT"

# Process formulas (root .rb files)
for formula in *.rb; do
  [ -f "$formula" ] || continue
  name=$(basename "$formula" .rb)
  desc=$(grep -m1 'desc "' "$formula" | sed 's/.*desc "\(.*\)"/\1/')
  homepage=$(grep -m1 'homepage "' "$formula" | sed 's/.*homepage "\(.*\)"/\1/')
  
  {
    echo ""
    echo "### $name"
    echo ""
    echo "$desc"
    echo ""
    echo '```bash'
    echo "brew install $name"
    echo '```'
    echo ""
    echo "Homepage: $homepage"
  } >> "$OUTPUT"
done

# Check if Casks directory exists and has files
if [ -d "Casks" ] && ls Casks/*.rb 1> /dev/null 2>&1; then
  {
    echo ""
    echo "## Available Casks"
  } >> "$OUTPUT"

  for cask in Casks/*.rb; do
    [ -f "$cask" ] || continue
    name=$(basename "$cask" .rb)
    desc=$(grep -m1 'desc "' "$cask" | sed 's/.*desc "\(.*\)"/\1/')
    homepage=$(grep -m1 'homepage "' "$cask" | sed 's/.*homepage "\(.*\)"/\1/')
    
    {
      echo ""
      echo "### $name"
      echo ""
      echo "$desc"
      echo ""
      echo '```bash'
      echo "brew install --cask $name"
      echo '```'
      echo ""
      echo "Homepage: $homepage"
    } >> "$OUTPUT"
  done
fi

# Footer
{
  echo ""
  echo "## Usage"
  echo ""
  echo "After tapping this repository, you can install any formula or cask with:"
  echo ""
  echo '```bash'
  echo "brew install <formula-name>"
  echo "brew install --cask <cask-name>"
  echo '```'
} >> "$OUTPUT"

echo "Generated $OUTPUT"
