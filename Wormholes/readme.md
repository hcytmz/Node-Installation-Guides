












<h3>Process for deploying nodes for the first time</h3>
1. Execute the following command to start launching the node.

```
wget -O wormholes_install.sh https://docker.wormholes.com/wormholes_install.sh && sudo bash wormholes_install.sh
```

2. Enter the private key and press Enter.
![image](https://user-images.githubusercontent.com/35812219/212482566-79c6bcad-a630-41fc-9b9a-14592c649f33.png)

3. Conduct the command as follows, check whether the Wormholes container is normally running or not and if it Shows UP, which means yes.
```
sudo docker ps -a
```
4. If you want to monitor node operation in real time, you can use the monitoring script.
```
wget -O monitor.sh https://github.com/hcytmz/Testnet-Guides/blob/main/Wormholes/monitor.sh && sudo bash monitor.sh
```



<h3>Upgrade the process of node</h3>



















<h4>View Node Connection Status</h4>
```
curl -X POST -H 'Content-Type:application/json' --data '{"jsonrpc":"2.0","method":"net_peerCount","id":1}' http://127.0.0.1:8545
```
<h4>Checkout Blocks</h4>
```
curl -X POST -H 'Content-Type:application/json' --data '{"jsonrpc":"2.0","method":"eth_blockNumber","id":1}' http://127.0.0.1:8545
```
<h4>Check Account Balance</h4>
# The parameters in params are account and block height, replace the first parameter with the account you want to query
```
curl -X POST -H 'Content-Type:application/json' --data '{"jsonrpc":"2.0","method":"eth_getBalance","params":["0xE860DD0F14e7a52Fa3012BfA00f4793edCe87EBe","pending"],"id":1}' http://127.0.0.1:8545
```
<h4>Checkout The version</h4>
```
curl -X POST -H "Content-Type:application/json" --data '{"jsonrpc":"2.0","method":"eth_version","id":64}' http://127.0.0.1:8545
```

