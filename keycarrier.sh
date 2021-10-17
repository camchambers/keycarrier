#!/bin/bash

# Modify this variable to contain a list of servers that you wish to upload your
# public key to
servers=(
    "username@server1.hostname.com"
    "username@server2.hostname.com"
    "username@server3.hostname.com"
)

echo "Uploading public key to server(s)."

for server in "${servers[@]}"; do
    echo "Uploading public key to server $server"
    ssh-copy-id -i ~/.ssh/id_rsa.pub $server
done
echo "Done."