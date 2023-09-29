echo "Switching to branch master"
git checkout master

echo "Building app ... "
npm run build

echo "Deploying files to server"
scp -r build/* admin@143.42.72.14:/var/www/143.42.72.14/
# rsync -avP build/ admin@143.42.72.14:/var/www/143.42.72.14/

echo "Done!!"