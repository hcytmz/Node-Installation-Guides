# :red_square: Node Installation Guide for Cross Finance Testnet
<p align="right"> <img height="150" height="auto" src="https://github.com/hcytmz/Testnet-Guides/blob/main/logos/CrossFi.png"></p>

## :yellow_square: Official Links & Explorer
### :green_square: [:earth_africa:	Website](https://crossfi.org/) / [:scroll:	Documents](https://docs.crossfi.org/crossfi-chain/) / [:space_invader: Discord](https://discord.gg/crossfi) / [:large_blue_diamond:	Telegram](https://t.me/crossfichain) / [:male_detective:	Explorer](https://xfiscan.com/)

### :blue_square:	[:fire:	My Node](https://test.xfiscan.com/validators/mxvaloper1p95xml0ck5xavdd0vh6pj6fs8xhnnlka240kpq)


### :green_square: Minimum Hardware requirements
| Node Type | CPU | RAM | Storage | OS |
| --- | --- | --- | --- | --- |
| Testnet | 6 cores | 8 GB | 400 GB (NVME) | Ubuntu 20.04 |





<br>

## :yellow_square: Process for deploying nodes for the first time
1.  Prepare the system to installation.

```bash
sudo apt update && sudo apt upgrade -y
```

```bash
sudo apt install -y curl git jq lz4 build-essential
```

2.  Install Go

```bash
sudo rm -rf /usr/local/go
curl -L https://go.dev/dl/go1.21.6.linux-amd64.tar.gz | sudo tar -xzf - -C /usr/local
echo 'export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin' >> $HOME/.bash_profile
source .bash_profile
```
```bash
sudo apt install docker.io
```
```bash
sudo systemctl enable --now docker
```

3.  Execute the following command to start launching the node.

```bash
wget -O Cross Finance_install.sh https://docker.Cross Finance.io/Cross Finance_install.sh && sudo bash Cross Finance_install.sh
```
or
```bash
wget -O Cross Finance_install.sh https://github.com/hcytmz/Node-Installation-Guides/blob/main/Cross Finance/Cross Finance_install.sh && sudo bash Cross Finance_install.sh
```

4.  Enter the private key and press Enter.
![image](https://github.com/hcytmz/Node-Installation-Guides/assets/35812219/df716b1f-3bec-47bf-be22-5bab607a830f)

5.  Conduct the command as follows, check whether the Cross Finance container is normally running or not and if it Shows UP, which means yes.
```bash
sudo docker ps -a
```
6.  If you want to monitor node operation in real time, you can use the monitoring script.
```bash
wget -O monitor.sh https://raw.githubusercontent.com/hcytmz/Node-Installation-Guides/main/Cross Finance/monitor.sh && sudo bash monitor.sh
```
![image](https://user-images.githubusercontent.com/35812219/212500614-f33a03eb-dccb-42ee-8932-5b4e1f849cca.png)

7.  If you waited for a while and couldn't find a peer, execute the following command.
```bash
docker restart Cross Finance
```
8.  Now, you can [become a miner.](https://www.Cross Finance.io/docs/Install/stake/index.html)


</br>

## :yellow_square: [Upgrade the process of node](https://github.com/hcytmz/Node-Installation-Guides/blob/main/Cross Finance/upgrade.md)

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

