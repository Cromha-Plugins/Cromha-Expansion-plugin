date=$(date)

echo "Please enter the path of your endless sky plugin directory (https://pastebin.com/9h7cGgEW for help)"
read path
echo "Creating your .settings file to remember plugins path"
echo "$path" >> .settings
echo "Copying the locals plugin data into '$path'"
cp -r plugin/ "$path"
cd "$path"
find . -depth -type d -name "plugin" -execdir mv {} "Cromha-expansion-plugin" \;
sleep 1
echo "Done"
sh .scripts/logger.sh "Finished installing the Cromha-expansion-plugin in $date"
