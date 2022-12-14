. ./ADDRESS

developer_remote_shell() {
	ssh $ADDRESS $@ 
}

call_remote() {
	developer_remote_shell "remote-shell/$@"
}
