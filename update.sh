path=$(cat .settings)
date=$(date)

# merging main into origin
echo started updating your local repo from github repo
git pull origin main
echo finishd updating your local repo from github repo
# running install.sh to reinstall the plugin
echo "Deleting the current plugin data to overwrite with the new one"
rm -r "$path/Cromha-expansion-plugin"
echo "Copying the locals plugin data into '$path'"
cp -r plugin/ "$path"
sh logger.sh "Finished updating your local repo"
cd "$path"
find . -depth -type d -name "plugin" -execdir mv {} "Cromha-expansion-plugin" \;
sleep 1
echo "Done"
