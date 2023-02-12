date=$(date)

echo "Please enter the path of your endless sky plugin directory (https://pastebin.com/9h7cGgEW for help)"
read path
echo -ne '#####                     (33%)\r'
sleep 1
echo -ne '#############             (66%)\r'
sleep 1
echo -ne '#######################   (100%)\r'
echo -ne '\n'
rm .settings
echo "$path" >> .settings
cp -r plugin/ "$path"
sh logger.sh "Finished installing the Cromha-expansion-plugin"
cd "$path"
find . -depth -type d -name "plugin" -execdir mv {} "Cromha-expansion-plugin" \;
sleep 1
echo "Done"
