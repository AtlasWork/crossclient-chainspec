# CrossClient chainspec and genesis files

Files for AtlasParity chainspec and AtlasGeth genesis - both compatible for a cross-client blockchain network.

- Engine: Ethash PoW

- MainNet 
- Network ID: 9082076

- TestNet
- Network ID: 9082075

Templated and stripped from the inital ropsten chain spec for both clients.

# Usage

Geth:

    $ ./geth --identity “YourNodeName” --datadir "~/.atlaschain/" --networkid 9082076 --port 57200 --rpcport 8080 init "../../AtlasGenesisMainNet.json"

    $ ./geth --datadir ~/.atlaschain/ --networkid 9082076 --port 57200 --rpcport 8080 console

Parity:

    $ parity --chain AtlasParityMainNet.json --port 57200 --jsonrpc-port 8539
     
# Hints

You might want to enable a miner thread on geth to keep blocks rolling in.

    $ geth --datadir ~/.atlaschain/ --networkid 9082076 --port 57200 --rpcport 8080 --mine --minerthreads 1 --etherbase 0x976d35d3e3a338ceef3f25a9af8ada2f0a72c178

You can simply glue them together by handing over their respective enode.

    $ parity --chain AtlasParityMainNet.json --port 57200 --jsonrpc-port 8539 --bootnodes enode://f0e38f26f95c722b4ab27ac8dfbd214280220e1768a19027309f6d12af749cca02fcbbf859dc84b3af05f98de433f78684d4d308c2d52aa357d5f4e0ae08cb4f@127.0.0.1:57200
    
Or

    $ geth --datadir ~/.atlaschain/ --networkid 9082076 --port 57200 --rpcport 8080 --mine --minerthreads 1 --etherbase 0x976d35d3e3a338ceef3f25a9af8ada2f0a72c178 --bootnodes enode://43ad28a7bfe232a4aa56624659db9aca9fb5167cad04ec56b489cadb9eff39ef241be526dacfc7951f252adbfb99b3eb864c3743a576bc1d59b0101994fa08d6@127.0.0.1:57200

Or using parity's `--reserved-peers peers.txt` option.

# See also

- Translate Geth to Parity Ethereum chain spec: https://github.com/keorn/parity-spec

# Credits

Thanks to all the users who kept asking how to do this.
