# :red_square: Node Installation Guide for Mars Protocol 
<p align="right"> <img height="150" height="auto" src="https://github.com/hcytmz/Testnet-Guides/blob/main/logos/mars.svg"></p>

## :yellow_square: Official Links & Explorer
### :green_square: [:earth_africa:	Website](https://marsprotocol.io) / [:scroll:	Documents](https://validatordocs.marsprotocol.io/TfYZfjcaUzFmiAkWDf7P/infrastructure/node-operators/setting-up-a-node) / [:space_invader: Discord](https://discord.gg/marsprotocol) / [:large_blue_diamond:	Telegram](https://t.me/martiannews) / [:male_detective:	Explorer 1](https://testnet-explorer.marsprotocol.io) [2](https://mars.explorers.guru) [3](https://explorer.stavr.tech/mars-testnet) [4](https://explorer.bccnodes.com/mars) [5](https://explorer.ppnv.space/mars)

### :blue_square:	[:fire:	My Node](https://testnet-explorer.marsprotocol.io/validators/marsvaloper122c858g0zn97px9xsqc7tn0v46dyjczzv22mgw)


### :green_square: Recommended Hardware requirements
| Node Type | CPU | RAM | Storage |
| --- | --- | --- | --- |
| Testnet | 4 vCPUs | 16 GB  | 200GB  |





<br>

## :yellow_square: Process for deploying nodes for the first time
1.  First of all you have to install the [limino wallet extension](https://chrome.google.com/webstore/detail/liminowallet/ljgaiedhmdfibdpilgpglddemlbedmhh) / [limino web wallet](https://www.limino.com/#/wallet) and get the private key.
2.  Prepare the system to installation.

```bash
sudo apt-get update && apt-get upgrade -y
```

```bash
sudo apt-get install wget
```


```bash
cd /root
```
```bash
sudo apt install docker.io
```
```bash
sudo systemctl enable --now docker
```

3.  Execute the following command to start launching the node.

```bash
wget -O wormholes_install.sh https://docker.wormholes.com/wormholes_install.sh && sudo bash wormholes_install.sh
```

4.  Enter the private key and press Enter.
![image](https://user-images.githubusercontent.com/35812219/212482566-79c6bcad-a630-41fc-9b9a-14592c649f33.png)

5.  Conduct the command as follows, check whether the Wormholes container is normally running or not and if it Shows UP, which means yes.
```bash
sudo docker ps -a
```
6.  If you want to monitor node operation in real time, you can use the monitoring script.
```bash
wget -O monitor.sh https://raw.githubusercontent.com/hcytmz/Testnet-Guides/main/Wormholes/monitor.sh && sudo bash monitor.sh
```
![image](https://user-images.githubusercontent.com/35812219/212500614-f33a03eb-dccb-42ee-8932-5b4e1f849cca.png)

7.  If you waited for a while and couldn't find a peer, execute the following command.
```bash
docker restart wormholes
```
8.  Now, you can [become a miner.](https://www.wormholes.com/docs/Install/stake/index.html)


</br>

## :yellow_square: [Upgrade the process of node](https://github.com/hcytmz/Testnet-Guides/blob/main/Wormholes/upgrade.md)

</br>

## :yellow_square: Useful Commands
### :green_square: View Node Connection Status
```bash
curl -X POST -H 'Content-Type:application/json' --data '{"jsonrpc":"2.0","method":"net_peerCount","id":1}' http://127.0.0.1:8545
```

### :green_square: Checkout Blocks
```bash
curl -X POST -H 'Content-Type:application/json' --data '{"jsonrpc":"2.0","method":"eth_blockNumber","id":1}' http://127.0.0.1:8545
```

### :green_square: Check Account Balance
The parameters in params are account and block height, replace the first parameter with the account you want to query
```bash
curl -X POST -H 'Content-Type:application/json' --data '{"jsonrpc":"2.0","method":"eth_getBalance","params":["Account Address","pending"],"id":1}' http://127.0.0.1:8545
```

### :green_square: Checkout The version
```bash
curl -X POST -H "Content-Type:application/json" --data '{"jsonrpc":"2.0","method":"eth_version","id":64}' http://127.0.0.1:8545
```



## :yellow_square: Official Links & Explorer
### :green_square: [:earth_africa:	Website](https://wormholes.com/) / [:scroll:	Documents](https://wormholes.com/docs/install/index.html) / [:space_invader: Discord](https://discord.gg/VvXfCD2uSj) / [:large_blue_diamond:	Telegram](https://t.me/wormholes_chain) / [:male_detective:	Explorer](https://wormholesscan.com)

### :blue_square:	[:fire:	My Node](https://www.wormholesscan.com/#/AccountDetail/0xc6bA63B5530726Ba7009Df3f382F41de4B902759)


### :green_square: Minimum Hardware requirements
| Node Type | CPU | RAM | Storage |
| --- | --- | --- | --- |
| Testnet | 2.9GHz, 4 cores | 8GB  | 500GB  |





<br>

## :yellow_square: Process for deploying nodes for the first time
1.  First of all you have to install the [limino wallet extension](https://chrome.google.com/webstore/detail/liminowallet/ljgaiedhmdfibdpilgpglddemlbedmhh) / [limino web wallet](https://www.limino.com/#/wallet) and get the private key.
2.  Prepare the system to installation.

```bash
sudo apt-get update && apt-get upgrade -y
```

```bash
sudo apt-get install wget
```


```bash
cd /root
```
```bash
sudo apt install docker.io
```
```bash
sudo systemctl enable --now docker
```

3.  Execute the following command to start launching the node.

```bash
wget -O wormholes_install.sh https://docker.wormholes.com/wormholes_install.sh && sudo bash wormholes_install.sh
```

4.  Enter the private key and press Enter.
![image](https://user-images.githubusercontent.com/35812219/212482566-79c6bcad-a630-41fc-9b9a-14592c649f33.png)

5.  Conduct the command as follows, check whether the Wormholes container is normally running or not and if it Shows UP, which means yes.
```bash
sudo docker ps -a
```
6.  If you want to monitor node operation in real time, you can use the monitoring script.
```bash
wget -O monitor.sh https://raw.githubusercontent.com/hcytmz/Testnet-Guides/main/Wormholes/monitor.sh && sudo bash monitor.sh
```
![image](https://user-images.githubusercontent.com/35812219/212500614-f33a03eb-dccb-42ee-8932-5b4e1f849cca.png)

7.  If you waited for a while and couldn't find a peer, execute the following command.
```bash
docker restart wormholes
```
8.  Now, you can [become a miner.](https://www.wormholes.com/docs/Install/stake/index.html)


</br>

## :yellow_square: [Upgrade the process of node](https://github.com/hcytmz/Testnet-Guides/blob/main/Wormholes/upgrade.md)

</br>

## :yellow_square: Useful Commands
### :green_square: View Node Connection Status
```bash
curl -X POST -H 'Content-Type:application/json' --data '{"jsonrpc":"2.0","method":"net_peerCount","id":1}' http://127.0.0.1:8545
```

### :green_square: Checkout Blocks
```bash
curl -X POST -H 'Content-Type:application/json' --data '{"jsonrpc":"2.0","method":"eth_blockNumber","id":1}' http://127.0.0.1:8545
```

### :green_square: Check Account Balance
The parameters in params are account and block height, replace the first parameter with the account you want to query
```bash
curl -X POST -H 'Content-Type:application/json' --data '{"jsonrpc":"2.0","method":"eth_getBalance","params":["Account Address","pending"],"id":1}' http://127.0.0.1:8545
```

### :green_square: Checkout The version
```bash
curl -X POST -H "Content-Type:application/json" --data '{"jsonrpc":"2.0","method":"eth_version","id":64}' http://127.0.0.1:8545
```
