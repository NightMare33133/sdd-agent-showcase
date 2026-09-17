#!/bin/bash

echo "🔍 Running pre-commit checks..."

# Check for sensitive files
echo "Checking for sensitive files..."
if find . -name "*.env" -o -name "*.key" -o -name "*.pem" | grep -q .; then
    echo "[FAIL] Sensitive files found"
    exit 1
fi
echo "[PASS] No sensitive files found"

# Check for unresolved conflicts
echo "Checking for unresolved conflicts..."
if grep -r "<<<<<<" . --include="*.html" --include="*.js" --include="*.css" 2>/dev/null | grep -q .; then
    echo "[FAIL] Unresolved conflicts found"
    exit 1
fi
echo "[PASS] No unresolved conflicts"

# Check for large files
echo "Checking for large files..."
if find . -type f -size +5M -not -path "./.git/*" | grep -q .; then
    echo "[FAIL] Large files found (over 5MB)"
    exit 1
fi
echo "[PASS] No large files"

echo "✅ All pre-commit checks passed"
