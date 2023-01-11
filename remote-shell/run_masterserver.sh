echo "Launching the masterserver."
ulimit -c unlimited
nohup ./Hypersomnia --masterserver > /dev/null 2>&1 &
