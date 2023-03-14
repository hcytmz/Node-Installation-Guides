#!/bin/bash
function info(){
   cn=0
   vl=$(wget https://docker.wormholes.com/version>/dev/null 2>&1 && cat version|awk '{print $2}')
   while true
   do
            echo "the monitor version is $vl"
            echo "$cn second."
            echo "node $1"
            net_rs=`curl -H "Content-Type: application/json" --data '{"jsonrpc":"2.0","method":"net_version","id":64}' https://api.wormholestest.com 2>/dev/null`
            wn=$(parse_json $net_rs "result")
            echo "net verson: $wn"
            net_rs1=`curl -H "Content-Type: application/json" --data '{"jsonrpc":"2.0","method":"net_version","id":64}' 127.0.0.1:$1 2>/dev/null`
            wn1=$(parse_json $net_rs1 "result")
            if [[ $wn != $wn1 ]];then
            echo -e "\033[31mThe network ID of the current node is inconsistent with that of the square node.\nPlease check and update your node. \033[0m"
            fi
            rs=`curl -H "Content-Type: application/json" --data '{"jsonrpc":"2.0","method":"eth_blockNumber","id":64}' https://api.wormholestest.com 2>/dev/null`
            blockNumbers=$(parse_json $rs "result")
            echo "Block height of the whole network: $((16#${blockNumbers:2}))"
            rs1=`curl -H "Content-Type: application/json" --data '{"jsonrpc":"2.0","method":"net_peerCount","id":64}' 127.0.0.1:$1 2>/dev/null`
            count=$(parse_json $rs1 "result")
            echo "Number of node connections: $((16#${count:2}))"
            rs2=`curl -H "Content-Type: application/json" --data '{"jsonrpc":"2.0","method":"eth_blockNumber","id":64}' 127.0.0.1:$1 2>/dev/null`
            blckNumber=$(parse_json $rs2 "result")
            echo "Block height of the current peer: $((16#${blckNumber:2}))"
            sleep 5
            clear
            let cn+=5
   done
}

function parse_json(){
   echo "${1//\"/}"|sed "s/.*$2:\([^,}]*\).*/\1/"
}

function main(){
   if [[ $# -eq 0 ]];then
            info 8545
   else
            info $1
   fi
}

main "$@"
