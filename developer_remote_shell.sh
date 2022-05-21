. ./ADDRESS

developer_remote_shell() {
	trezor-agent -e ed25519 ubuntu@hypersomnia.xyz -- ssh $ADDRESS $@ 
}

call_remote() {
	developer_remote_shell "remote-shell/$@"
}
