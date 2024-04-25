# ⚒️ Node Installation Guide for Erbie Testnet

<div align="right">

<img src="https://github.com/hcytmz/Testnet-Guides/blob/main/logos/erbie.png" alt="" height="150">

</div>

## :yellow\_square: Official Links & Explorer

### :green\_square: [ Website](https://erbie.io/) / [ Documents](https://erbie.io/docs/install/index.html) / [ Discord](https://discord.gg/VvXfCD2uSj) / [ Telegram](https://t.me/erbie\_chain) / [:male\_detective: Explorer](https://erbiescan.io)

### :blue\_square: [ My Node](https://www.erbiescan.io/#/AccountDetail/0xc6bA63B5530726Ba7009Df3f382F41de4B902759)

### :green\_square: Minimum Hardware requirements

| Node Type | CPU             | RAM | Storage |
| --------- | --------------- | --- | ------- |
| Testnet   | 2.9GHz, 4 cores | 8GB | 500GB   |

\


## :yellow\_square: Process for deploying nodes for the first time

1. First of all you have to install the [limino wallet extension](https://chrome.google.com/webstore/detail/liminowallet/ljgaiedhmdfibdpilgpglddemlbedmhh) / [limino web wallet](https://www.limino.com/#/wallet) and get the private key.
2. Prepare the system to installation.

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

3. Execute the following command to start launching the node.

```bash
wget -O erbie_install.sh https://docker.erbie.io/erbie_install.sh && sudo bash erbie_install.sh
```

or

```bash
wget -O erbie_install.sh https://github.com/hcytmz/Node-Installation-Guides/blob/main/Erbie/erbie_install.sh && sudo bash erbie_install.sh
```

4. Enter the private key and press Enter. ![image](https://github.com/hcytmz/Node-Installation-Guides/assets/35812219/df716b1f-3bec-47bf-be22-5bab607a830f)
5. Conduct the command as follows, check whether the Erbie container is normally running or not and if it Shows UP, which means yes.

```bash
sudo docker ps -a
```

6. If you want to monitor node operation in real time, you can use the monitoring script.

```bash
wget -O monitor.sh https://raw.githubusercontent.com/hcytmz/Node-Installation-Guides/main/Erbie/monitor.sh && sudo bash monitor.sh
```

![image](https://user-images.githubusercontent.com/35812219/212500614-f33a03eb-dccb-42ee-8932-5b4e1f849cca.png)

7. If you waited for a while and couldn't find a peer, execute the following command.

```bash
docker restart erbie
```

8. Now, you can [become a miner.](https://www.erbie.io/docs/Install/stake/index.html)

\


## :yellow\_square: [Upgrade the process of node](upgrade.md)

\


## :yellow\_square: Useful Commands

### :green\_square: View Node Connection Status

```bash
curl -X POST -H 'Content-Type:application/json' --data '{"jsonrpc":"2.0","method":"net_peerCount","id":1}' http://127.0.0.1:8545
```

### :green\_square: Checkout Blocks

```bash
curl -X POST -H 'Content-Type:application/json' --data '{"jsonrpc":"2.0","method":"eth_blockNumber","id":1}' http://127.0.0.1:8545
```

### :green\_square: Check Account Balance

The parameters in params are account and block height, replace the first parameter with the account you want to query

```bash
curl -X POST -H 'Content-Type:application/json' --data '{"jsonrpc":"2.0","method":"eth_getBalance","params":["Account Address","pending"],"id":1}' http://127.0.0.1:8545
```

### :green\_square: Checkout The version

```bash
curl -X POST -H "Content-Type:application/json" --data '{"jsonrpc":"2.0","method":"eth_version","id":64}' http://127.0.0.1:8545
```
