#!/bin/bash
#curl -sSf http://${CARONTE_ADDRESS}:${CARONTE_PORT}/health > /dev/null

curl -X POST "http://${CARONTE_ADDRESS}:${CARONTE_PORT}/api/pcap/upload" \
    -H "Content-Type: multipart/form-data" \
    -F "file=@$1" \
    -F "flush_all=false"
echo Done

