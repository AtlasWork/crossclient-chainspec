#!/bin/bash
parity --chain AtlasParityMainNet.json --port 57200 --jsonrpc-port 8539 --nat extip:YOURIP --reserved-peers atlasmainnetbootnodes.txt
