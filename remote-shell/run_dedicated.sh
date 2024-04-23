echo "Launching the dedicated server."
ulimit -c unlimited
nohup ~/Hypersomnia-Headless.AppImage > /dev/null 2>&1 &
nohup ~/Hypersomnia-Headless.AppImage --apply-config ~/servers/config.common.lua --appdata-dir ~/servers/1 > /dev/null 2>&1 &
