cd docker
# Building Docker repository
IMAGE_TAG="seeds:humble-ros-core"

echo -n "Enter Root user password:  " 
read ROOT_PASS

echo -n "Enter Working user name:  " 
read USER_NAME

echo -n "Enter Working user: ( $USER_NAME ) password:  " 
read USER_PASS

docker build -t $IMAGE_TAG --build-arg ROOT_PASS=$ROOT_PASS --build-arg USER_NAME=$USER_NAME --build-arg USER_PASS=$USER_PASS .

cd ../
