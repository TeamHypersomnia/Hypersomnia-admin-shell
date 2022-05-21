developer_upload_version_folder() {
	local SOURCE_FOLDER=$1
	local TARGET_FOLDER=$2
	rsync -avzP $SOURCE_FOLDER $ADDRESS:$TARGET_FOLDER
}
