developer_sign_file() {
	local SIGN_NAMESPACE=$1
	local FILE_PATH=$2

	local PUBKEY_PATH="used_signing_key.pub"

	if [ ! -f "$PUBKEY_PATH" ]; then
		local PUBLIC_KEY=$(trezor-agent -e ed25519 hypersomnia)
		echo "Public key used to sign binaries:"
		echo $PUBLIC_KEY

		echo $PUBLIC_KEY > $PUBKEY_PATH
	fi

	trezor-agent -e ed25519 hypersomnia -- ssh-keygen -vvv -Y sign -f $PUBKEY_PATH -n $SIGN_NAMESPACE $FILE_PATH
}
