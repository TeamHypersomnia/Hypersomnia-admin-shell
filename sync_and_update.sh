. ./ADDRESS
alias rsync_git="rsync --exclude='/.git' --filter='dir-merge,- .gitignore'"

ssh $ADDRESS "pkill -f --signal=SIGINT dedicated; pkill -f --signal=SIGINT masterserver"

rsync_git -avzP . $ADDRESS:~/admin-shell

ssh $ADDRESS "sh admin-shell/update_hypersomnia.sh"
