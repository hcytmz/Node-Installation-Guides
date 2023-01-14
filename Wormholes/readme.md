












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
nano monitor.sh
```
```
wget -O monitor.sh https://docker.wormholes.com/wormholes_install.sh && sudo bash monitor.sh
```

```
nano monitor.sh
```



<h3>Upgrade the process of node</h3>


