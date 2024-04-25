### :green_square: Upgrade the process of node
1.  Conduct the command as follows and upgrade the node.
```bash
wget -O erbie_install.sh https://docker.erbie.com/erbie_install.sh && sudo bash erbie_install.sh
```
or
```bash
wget -O erbie_install.sh https://github.com/hcytmz/Node-Installation-Guides/blob/main/Erbie/erbie_install.sh && sudo bash erbie_install.sh
```
2.  When the figure is displayed below, the node has upgraded successfully.
![image](https://github.com/hcytmz/Node-Installation-Guides/assets/35812219/a9dcff6d-67d8-4f26-91b0-7b059780b07d)

3.  Checkout The version
```bash
curl -X POST -H "Content-Type:application/json" --data '{"jsonrpc":"2.0","method":"eth_version","id":64}' http://127.0.0.1:8545
```

4.  Conduct the command as follows, check whether the Erbie container is normally running or not and if it Shows “UP,” which means yes.
```bash
sudo docker ps -a
```
5.  If you want to monitor node operation in real time, you can use the monitoring script.
```bash
wget -O monitor.sh https://raw.githubusercontent.com/hcytmz/Node-Installation-Guides/main/Erbie/monitor.sh && sudo bash monitor.sh
```
![image](https://user-images.githubusercontent.com/35812219/212500614-f33a03eb-dccb-42ee-8932-5b4e1f849cca.png)

6.  If you waited for a while and couldn't find a peer, execute the following command.
```bash
docker restart erbie
```