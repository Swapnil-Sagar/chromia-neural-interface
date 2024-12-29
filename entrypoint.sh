#!/bin/bash
set -e

# Wait for Chromia node to be ready
echo "Waiting for Chromia node to build and start..."
while ! chr node status 2>/dev/null; do
    echo "Waiting for Chromia node to be ready..."
    sleep 5
done

echo "Chromia node is ready. Starting Bun dev server..."
bun run dev