#!/bin/bash

# Reconstructs the original data from QR codes

cat $1 |base64 -D |openssl enc -aes-256-cfb -d |tar -xzvC ~/inbound_certs
