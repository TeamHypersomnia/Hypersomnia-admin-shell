echo "Launching the dedicated server."
ulimit -c unlimited
nohup ~/Hypersomnia-Headless.AppImage --apply-config ~/servers/config-pl.common.json > /dev/null 2>&1 &
nohup ~/Hypersomnia-Headless.AppImage --apply-config ~/servers/config-pl.common.json --appdata-dir ~/servers/1 > /dev/null 2>&1 &
