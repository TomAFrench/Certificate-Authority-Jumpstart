#!/bin/bash

# Generate a private key and sign a certificate for a domain
# 
# Expects to find common name in environment variable CN
# Expects to find subject alternative name in environment variable SAN

openssl genrsa -out private/$CN.key.pem 4096
openssl req -key private/$CN.key.pem -new -out csr/$CN.csr.pem  # CN is FQDN.
openssl ca -extensions server_cert -notext -in csr/$CN.csr.pem -out certs/$CN.cert.pem
rm csr/$CN.csr.pem
