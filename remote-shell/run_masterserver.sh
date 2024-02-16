echo "Launching the masterserver."
ulimit -c unlimited
nohup ~/Hypersomnia-Headless.AppImage --masterserver > /dev/null 2>&1 &
