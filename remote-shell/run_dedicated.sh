echo "Launching the dedicated server."
ulimit -c unlimited
nohup ./Hypersomnia --dedicated-server > /dev/null 2>&1 &
