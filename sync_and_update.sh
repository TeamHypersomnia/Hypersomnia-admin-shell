. ./ADDRESS
alias rsync_git="rsync --exclude='/.git' --filter='dir-merge,- .gitignore'"

ssh $ADDRESS "pkill -f --signal=SIGINT dedicated; pkill -f --signal=SIGINT masterserver"

rsync_git -avzP . $ADDRESS:~/hypersomnia/user

ssh $ADDRESS "sh hypersomnia/user/update_hypersomnia.sh"
