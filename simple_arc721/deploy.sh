#!/bin/bash


API="https://api.explorer.aleo.org/v1"
BROADCAST="testnet3/transaction/broadcast"
APPNAME="nft_whoru"

ENV_FILE=".env"
PRIVATE_KEY=$(grep "PRIVATE_KEY" $ENV_FILE | cut -d '=' -f2)

snarkos developer deploy \
"${APPNAME}.aleo" \
--private-key "${PRIVATE_KEY}" \
--query "${API}" \
--path "./build/" \
--broadcast "${API}/${BROADCAST}" \
--priority-fee 1000000