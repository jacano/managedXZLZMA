if [ -z "$DROPBOX_KEY" ] 
	then
	DROPBOX_KEY=$(<secrets/dropboxkey.txt)
fi

pushd src/xzlzma.iOS

ARTIFACT_NAME="libxzlzma.a"
ARTIFACT_PATH="build/$ARTIFACT_NAME"
AUTHORIZATION_TOKEN="Authorization: Bearer $DROPBOX_KEY"
CONTENT_TYPE="Content-Type: application/octet-stream"
DROPBOX_ARGS="Dropbox-API-Arg: {\"path\":\"/$ARTIFACT_NAME\", \"mode\":\"overwrite\"}"
DROPBOX_URL="https://content.dropboxapi.com/2/files/upload"

curl -f -X POST --header "$AUTHORIZATION_TOKEN" --header "$CONTENT_TYPE" --header "$DROPBOX_ARGS" --data-binary @"$ARTIFACT_PATH" "$DROPBOX_URL"

popd