. ./ADDRESS
alias rsync_git="rsync --exclude='/.git' --filter='dir-merge,- .gitignore'"
rsync_git -avzP . $ADDRESS:~/hypersomnia/user
ssh $ADDRESS "cd hypersomnia; sh user/restart_servers.sh"
