#!/bin/bash
# Define a list of targets
TARGETS=("google.com" "github.com" "fake-website-that-fails.com")

for SITE in "${TARGETS[@]}"
do
    # Ping 1 time (-c 1). Throw away the output (> /dev/null).
    if ping -c 1 $SITE > /dev/null; then
        echo "✅ $SITE is ONLINE"
    else
        echo "❌ $SITE is OFFLINE"
    fi
done
