# ethereum-lab
Experiments with Ethereum 

## Genral Information

* Get a regular wallet from:  https://www.ethereum.org/.
* Web based solidity IDE: https://remix.ethereum.org/.
* Get rinkeby (test network) ehter: https://faucet.rinkeby.io/.

## Install CLI for macOS
Intall the etherum CLI using homebrew:

```sh
brew tap ethereum/ethereum
brew install ethereum
```

### Insall a private blockchain in k8s
There is an official helm chart, follow the instructions of the [helm repository](https://github.com/helm/charts/tree/master/stable/ethereum).

Search for the service `<release_name>-ethereum-ethstats` and get the endpoint to enter to the stats dashboard.
