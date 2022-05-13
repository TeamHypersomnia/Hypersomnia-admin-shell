. ./ADDRESS

rsync -avzP . $ADDRESS:~/hypersomnia/user
ssh $ADDRESS "cd hypersomnia; sh user/restart_servers.sh"
