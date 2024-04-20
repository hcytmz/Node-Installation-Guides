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
1. Prepare the system to installation.

```bash
sudo apt update && sudo apt upgrade -y
```

```bash
sudo apt install curl git wget htop tmux build-essential jq make lz4 gcc unzip -y
```

2. Install Go, If Needed

```bash
sudo rm -rf /usr/local/go
curl -L https://go.dev/dl/go1.21.6.linux-amd64.tar.gz | sudo tar -xzf - -C /usr/local
echo 'export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin' >> $HOME/.bash_profile
source .bash_profile
```

## :yellow_square: Execute the following command to install the node.

1. Download binary
```bash
cd $HOME && mkdir -p $HOME/go/bin
curl -L https://github.com/crossfichain/crossfi-node/releases/download/v0.3.0-prebuild3/crossfi-node_0.3.0-prebuild3_linux_amd64.tar.gz > crossfi-node_0.3.0-prebuild3_linux_amd64.tar.gz
tar -xvzf crossfi-node_0.3.0-prebuild3_linux_amd64.tar.gz
chmod +x $HOME/bin/crossfid
mv $HOME/bin/crossfid $HOME/go/bin
rm -rf crossfi-node_0.3.0-prebuild3_linux_amd64.tar.gz readme.md $HOME/bin
```


2. Set node configuration
```bash
crossfid config chain-id crossfi-evm-testnet-1
crossfid config keyring-backend test
```


3. Default Port (If you want to run multiple nodes on the server change Port (Exp. 26657 to 23857))
```bash
crossfid config node tcp://localhost:26657
```


4. Initialize the node (Replace YOUR_MONIKER with your Validator Name)
```bash
crossfid init "YOUR_MONIKER" --chain-id crossfi-evm-testnet-1
```


5. Download genesis and addrbook
```bash
curl -L https://github.com/hcytmz/Node-Installation-Guides/blob/e2f8004bf7f14a05d66dd32446eec2b8186a2705/CrossFi/genesis.json > $HOME/.mineplex-chain/config/genesis.json
curl -L https://github.com/hcytmz/Node-Installation-Guides/blob/e2f8004bf7f14a05d66dd32446eec2b8186a2705/CrossFi/addrbook.json > $HOME/.mineplex-chain/config/addrbook.json
```


6. Set seeds and peers
```bash
SEEDS="89752fa7945a06e972d7d860222a5eeaeab5c357@128.140.70.97:26656,dd83e3c7c4e783f8a46dbb010ec8853135d29df0@crossfi-testnet-seed.itrocket.net:36656"
PEERS="66bdf53ec0c2ceeefd9a4c29d7f7926e136f114a@crossfi-testnet-peer.itrocket.net:36656,2e6308d166b358b0b57f5dec6e0b8b57430ed898@65.109.30.35:36656,bbbd8200d83c407d51cfc70bef4c616db1abbaed@65.108.234.158:23656,01d2c34725b52d3d0022afd302ca5f5662d33655@185.177.116.79:26656,89752fa7945a06e972d7d860222a5eeaeab5c357@128.140.70.97:26656"
sed -i -e "s/^seeds *=.*/seeds = \"$SEEDS\"/; s/^persistent_peers *=.*/persistent_peers = \"$PEERS\"/" $HOME/.mineplex-chain/config/config.toml
```


7. (Optional) Config pruning
```bash
sed -i \
  -e 's|^pruning *=.*|pruning = "custom"|' \
  -e 's|^pruning-keep-recent *=.*|pruning-keep-recent = "100"|' \
  -e 's|^pruning-interval *=.*|pruning-interval = "17"|' \
  $HOME/.mineplex-chain/config/app.toml
```


8. (Optional) Set minimum gas price, enable prometheus and disable indexing
```bash
sed -i 's|minimum-gas-prices =.*|minimum-gas-prices = "10000000000000mpx"|g' $HOME/.mineplex-chain/config/app.toml
sed -i -e "s/prometheus = false/prometheus = true/" $HOME/.mineplex-chain/config/config.toml
sed -i -e "s/^indexer *=.*/indexer = \"null\"/" $HOME/.mineplex-chain/config/config.toml
```


9. (Optional) Set custom ports
```bash
sed -i -e "s%:1317%:23817%; s%:8080%:23880%; s%:9090%:23890%; s%:9091%:23891%; s%:8545%:23845%; s%:8546%:23846%; s%:6065%:23865%" $HOME/.mineplex-chain/config/app.toml
sed -i -e "s%:26658%:23858%; s%:26657%:23857%; s%:6060%:23860%; s%:26656%:23856%; s%:26660%:23861%" $HOME/.mineplex-chain/config/config.toml
```


10. Create a service
```bash
sudo tee /etc/systemd/system/crossfid.service > /dev/null << EOF
[Unit]
Description=CrossFi service
After=network-online.target
[Service]
User=$USER
WorkingDirectory=$HOME/.mineplex-chain
ExecStart=$(which crossfid) start
Restart=on-failure
RestartSec=10
LimitNOFILE=65535
[Install]
WantedBy=multi-user.target
EOF
```

11. Start the service and check the logs
```bash
sudo systemctl daemon-reload
sudo systemctl enable crossfid
sudo systemctl restart crossfid && sudo journalctl -u crossfid -f
```



## :yellow_square: Upgrade
```bash
...
```


## :yellow_square: Useful Commands
### :green_square: Key
Create Wallet Key
```bash
crossfid keys add wallet
```
Recover Existing Key
```bash
crossfid keys add wallet --recover
```

Query Wallet Balance
```bash
crossfid q bank balances $(crossfid keys show wallet -a)
```


### :green_square: Checkout Blocks
```bash

```

### :green_square: Check Account Balance
The parameters in params are account and block height, replace the first parameter with the account you want to query
```bash

```


### :green_square: Checkout The version
```bash

```


