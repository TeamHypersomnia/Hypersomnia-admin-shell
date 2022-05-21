developer_sign_file() {
	local SIGN_NAMESPACE=$1
	local FILE_PATH=$2

	trezor-agent -e ed25519 hypersomnia > used_signing_key.pub
	trezor-agent -e ed25519 hypersomnia -- ssh-keygen -vvv -Y sign -f used_signing_key.pub -n $SIGN_NAMESPACE $FILE_PATH
}
