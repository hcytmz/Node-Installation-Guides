# :red_square: Node Installation Guide for Erbie Testnet
<p align="right"> <img height="150" height="auto" src="https://github.com/hcytmz/Testnet-Guides/blob/main/logos/erbie.png"></p>

## :yellow_square: Official Links & Explorer
### :green_square: [:earth_africa:	Website](https://erbie.io/) / [:scroll:	Documents](https://erbie.io/docs/install/index.html) / [:space_invader: Discord](https://discord.gg/VvXfCD2uSj) / [:large_blue_diamond:	Telegram](https://t.me/erbie_chain) / [:male_detective:	Explorer](https://erbiescan.io)

### :blue_square:	[:fire:	My Node](https://www.erbiescan.io/#/AccountDetail/0xc6bA63B5530726Ba7009Df3f382F41de4B902759)


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
wget -O erbie_install.sh https://docker.erbie.io/erbie_install.sh && sudo bash erbie_install.sh
```
or
```bash
wget -O erbie_install.sh https://github.com/hcytmz/Node-Installation-Guides/blob/main/Erbie/erbie_install.sh && sudo bash erbie_install.sh
```

4.  Enter the private key and press Enter.
![image](https://github.com/hcytmz/Node-Installation-Guides/assets/35812219/df716b1f-3bec-47bf-be22-5bab607a830f)

5.  Conduct the command as follows, check whether the Erbie container is normally running or not and if it Shows UP, which means yes.
```bash
sudo docker ps -a
```
6.  If you want to monitor node operation in real time, you can use the monitoring script.
```bash
wget -O monitor.sh https://raw.githubusercontent.com/hcytmz/Node-Installation-Guides/main/Erbie/monitor.sh && sudo bash monitor.sh
```
![image](https://user-images.githubusercontent.com/35812219/212500614-f33a03eb-dccb-42ee-8932-5b4e1f849cca.png)

7.  If you waited for a while and couldn't find a peer, execute the following command.
```bash
docker restart erbie
```
8.  Now, you can [become a miner.](https://www.erbie.io/docs/Install/stake/index.html)


</br>

## :yellow_square: [Upgrade the process of node](https://github.com/hcytmz/Node-Installation-Guides/blob/main/Erbie/upgrade.md)

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
