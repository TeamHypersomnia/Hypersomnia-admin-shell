. ./ADDRESS

ssh $ADDRESS "pkill -f --signal=SIGINT dedicated; pkill -f --signal=SIGINT masterserver"

rsync -avzP . $ADDRESS:~/hypersomnia/user
ssh $ADDRESS "sh hypersomnia/user/update_hypersomnia.sh"
