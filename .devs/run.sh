path=$(cat ../.settings)
date=$(date)

echo "Pushing your local changes to your endless sky plugins directory:"
rm -r "$path/Cromha-expansion-plugin"
cp -r ../plugin/ "$path"
sh ../logger.sh "Finished pushing current plugin version in the endless sky plugins folder"
cd "$path"
find . -depth -type d -name "plugin" -execdir mv {} "Cromha-expansion-plugin" \;
echo "Done"
