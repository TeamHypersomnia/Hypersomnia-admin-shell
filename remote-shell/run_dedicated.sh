echo "Launching the dedicated server."
ulimit -c unlimited
nohup ~/Hypersomnia-Headless.AppImage --dedicated-server > /dev/null 2>&1 &
