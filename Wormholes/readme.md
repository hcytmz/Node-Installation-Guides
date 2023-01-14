<p align="center"> <img height="200" height="auto" src="https://user-images.githubusercontent.com/35812219/212487868-dc3eda2a-892c-4d26-9c94-f2eec7ec70e4.png"></p>

# Wormholes Node Setup for Testnet

</br>

## Official Links
### [Official Document](https://wormholes.com/docs/install/index.html)
### [Official Discord](https://discord.gg/VvXfCD2uSj)

## Explorer
### [Explorer]()


## Minimum Hardware requirements
| Node Type | CPU | RAM | Storage |
| --- | --- | --- | --- |
| Testnet | 2.9GHz, 4 cores | 8GB  | 500GB  |





</br>

## Process for deploying nodes for the first time
1.  Execute the following command to start launching the node.

```bash
wget -O wormholes_install.sh https://docker.wormholes.com/wormholes_install.sh && sudo bash wormholes_install.sh
```

2.  Enter the private key and press Enter.
![image](https://user-images.githubusercontent.com/35812219/212482566-79c6bcad-a630-41fc-9b9a-14592c649f33.png)

3.  Conduct the command as follows, check whether the Wormholes container is normally running or not and if it Shows UP, which means yes.
```bash
sudo docker ps -a
```
4.  If you want to monitor node operation in real time, you can use the monitoring script.
```bash
wget -O monitor.sh https://raw.githubusercontent.com/hcytmz/Testnet-Guides/main/Wormholes/monitor.sh && sudo bash monitor.sh
```

</br>

## Upgrade the process of node

















### ext
</br>


#### View Node Connection Status
```bash
curl -X POST -H 'Content-Type:application/json' --data '{"jsonrpc":"2.0","method":"net_peerCount","id":1}' http://127.0.0.1:8545
```

#### Checkout Blocks
```bash
curl -X POST -H 'Content-Type:application/json' --data '{"jsonrpc":"2.0","method":"eth_blockNumber","id":1}' http://127.0.0.1:8545
```

#### Check Account Balance
The parameters in params are account and block height, replace the first parameter with the account you want to query
```bash
curl -X POST -H 'Content-Type:application/json' --data '{"jsonrpc":"2.0","method":"eth_getBalance","params":["Account Address","pending"],"id":1}' http://127.0.0.1:8545
```

#### Checkout The version
```bash
curl -X POST -H "Content-Type:application/json" --data '{"jsonrpc":"2.0","method":"eth_version","id":64}' http://127.0.0.1:8545
```

