IMAGE_BASENAME="<image_name>"
IMAGE_TAG="<image_tag>"
IMAGE_NAME="$IMAGE_BASENAME:$IMAGE_TAG"

docker build -f Dockerfile . -t $IMAGE_NAME

# Ask the user if he wants to buid a devcontainer version 

echo "Do you want to build a devcontainer version? (y/n)"

read devcontainer

if [ $devcontainer = "y" ]; then
    devcontainer build --workspace-folder .. --image-name $IMAGE_NAME --config ./prebuild_devcontainer.json
fi
