. ./ADDRESS
alias rsync_git="rsync --exclude='/.git' --filter='dir-merge,- .gitignore'"
rsync_git -avzP . $ADDRESS:~/admin-shell
