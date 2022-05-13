echo "Interrupting the dedicated server."
pkill -f --signal=SIGINT dedicated
echo "Interrupting the masterserver."
pkill -f --signal=SIGINT masterserver
