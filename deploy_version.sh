. ./ADDRESS
DEPLOY_KEY=$1
VERSION=$2
SET_LATEST_URL="$DOWNLOADS_HOST/set_latest_version.php"

curl -F "key=$DEPLOY_KEY" -F "version=$VERSION" $SET_LATEST_URL
./sync_and_update.sh
