echo "Deploying changes..."

cd /home/debian/simpleexpressserver
# Pull changes from the live branch
git pull

# Build the image with the new changes
sudo docker build . -t simpleexpressserver

# Shut down the existing containers
sudo docker-compose down

# Start the new containers
sudo docker-compose up -d
echo "Deployed!"
