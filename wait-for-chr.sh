#!/bin/bash

# Wait for the `chr node` to be ready
echo "Waiting for chr node to start..."

while ! curl -s http://localhost:9870/health > /dev/null; do
  echo "Chr node is not ready yet. Retrying in 5 seconds..."
  sleep 5
done

echo "Chr node is ready. Starting bun dev server..."
exec bun run dev
