. ./developer_remote_shell.sh

developer_upload_version_folder() {
	local SOURCE_FOLDER=$1
	local REFERENCE_VERSION=$2
	local SET_TO_LATEST_FLAG=$3

	pushd $SOURCE_FOLDER
	rsync -avzP . $ADDRESS:~/uploads/$REFERENCE_VERSION
	popd

	call_remote move_uploaded_file $REFERENCE_VERSION $SET_TO_LATEST_FLAG
}
