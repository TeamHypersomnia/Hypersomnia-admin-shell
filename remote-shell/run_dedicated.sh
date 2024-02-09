echo "Launching the dedicated server."
ulimit -c unlimited
nohup ./Hypersomnia.AppImage --dedicated-server > /dev/null 2>&1 &
