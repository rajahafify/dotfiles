##########
echo "Updating script"
git stash && git pull && git submodule init && git submodule update && git submodule status
echo "...done"

chmod +x setup.sh

echo "Starting setup"
./setup.sh
