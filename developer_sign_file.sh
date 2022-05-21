developer_sign_file() {
	local SIGN_NAMESPACE=$1
	local FILE_PATH=$2

	trezor-agent -e ed25519 hypersomnia -- ssh-keygen -vvv -Y sign -f ~/.ssh/trezor-hypersomnia.pub -n $SIGN_NAMESPACE $FILE_PATH
}
