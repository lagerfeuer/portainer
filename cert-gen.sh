#!/bin/bash
#

set -euo pipefail

name="${1}"
readonly name
dir="certs"
readonly dir

openssl req -x509 -newkey rsa:4096 -sha256 -days 3650 \
  -nodes -keyout "${name}.key" -out "${name}.crt" -subj "/CN=${name}" \
  -addext "subjectAltName=DNS:${name},DNS:*.${name}"

mkdir -p "${dir}"
mv "${name}.key" "${name}.crt" "${dir}"

