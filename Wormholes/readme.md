# :red_square: Wormholes Node Setup for Testnet
<p align="right"> <img height="100" height="auto" src="https://user-images.githubusercontent.com/35812219/212487868-dc3eda2a-892c-4d26-9c94-f2eec7ec70e4.png"></p>

## :yellow_square: Official Links & Explorer
[Website](https://www.wormholes.com/) / 
[Documents](https://wormholes.com/docs/install/index.html) / 
[Discord](https://discord.gg/VvXfCD2uSj) / 
[Telegram](https://t.me/wormholes_chain) / 
[Explorer](https://www.wormholesscan.com)


## :yellow_square: Minimum Hardware requirements
| Node Type | CPU | RAM | Storage |
| --- | --- | --- | --- |
| Testnet | 2.9GHz, 4 cores | 8GB  | 500GB  |





<br>

### :green_square: Process for deploying nodes for the first time
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

</br>


### :green_square: Upgrade the process of node
1.  Conduct the command as follows and upgrade the node.
```bash
wget -O wormholes_install.sh https://docker.wormholes.com/wormholes_install.sh && sudo bash wormholes_install.sh
```
2.  When the figure is displayed below, the node has upgraded successfully.
![image](https://user-images.githubusercontent.com/35812219/212500761-cc29935d-5022-4367-8d87-2bfae8932bfc.png)

3.  Conduct the command as follows, check whether the Wormholes container is normally running or not and if it Shows “UP,” which means yes.
```bash
sudo docker ps -a
```
4.  If you want to monitor node operation in real time, you can use the monitoring script.
```bash
wget -O monitor.sh https://raw.githubusercontent.com/hcytmz/Testnet-Guides/main/Wormholes/monitor.sh && sudo bash monitor.sh
```
![image](https://user-images.githubusercontent.com/35812219/212500614-f33a03eb-dccb-42ee-8932-5b4e1f849cca.png)

5.  If you waited for a while and couldn't find a peer, execute the following command.
```bash
docker restart wormholes
```











5.  If you waited for a while and couldn't find a peer, execute the following command.
```bash
docker restart wormholes
```

docker stop wormholes && docker rm wormholes && docker rmi wormholestech/wormholes:v1
rm -rf /wm/
rm -rf wormholes_install.sh


</br>

### :green_square: Useful Commands
#### :blue_square: View Node Connection Status
```bash
curl -X POST -H 'Content-Type:application/json' --data '{"jsonrpc":"2.0","method":"net_peerCount","id":1}' http://127.0.0.1:8545
```

#### :blue_square: Checkout Blocks
```bash
curl -X POST -H 'Content-Type:application/json' --data '{"jsonrpc":"2.0","method":"eth_blockNumber","id":1}' http://127.0.0.1:8545
```

#### :blue_square: Check Account Balance
The parameters in params are account and block height, replace the first parameter with the account you want to query
```bash
curl -X POST -H 'Content-Type:application/json' --data '{"jsonrpc":"2.0","method":"eth_getBalance","params":["Account Address","pending"],"id":1}' http://127.0.0.1:8545
```

#### :blue_square: Checkout The version
```bash
curl -X POST -H "Content-Type:application/json" --data '{"jsonrpc":"2.0","method":"eth_version","id":64}' http://127.0.0.1:8545
```

