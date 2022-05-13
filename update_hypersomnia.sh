pkill -f --signal=SIGINT dedicated
pkill -f --signal=SIGINT masterserver
rm Hypersomnia-for-Linux.sfx
wget https://hypersomnia.xyz/builds/latest/Hypersomnia-for-Linux.sfx
chmod +x ./Hypersomnia-for-Linux.sfx
rm -rf hypersomnia
./Hypersomnia-for-Linux.sfx
mkdir hypersomnia/user
cp admin-shell/user/* hypersomnia/user/
cd hypersomnia
nohup ./Hypersomnia --dedicated-server > /dev/null 2>&1 &
nohup ./Hypersomnia --masterserver > /dev/null 2>&1 &
