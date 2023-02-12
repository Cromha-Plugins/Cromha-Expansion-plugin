path=$(cat .settings)
date=$(date)

git pull origin main
echo -ne '#####                     (33%)\r'
sleep 1
echo -ne '#############             (66%)\r'
sleep 1
echo -ne '#######################   (100%)\r'
echo -ne '\n'
rm -r "$path/Cromha-expansion-plugin"
cp -r plugin/ "$path"
sh logger.sh "Finished updating your local repo"
cd "$path"
find . -depth -type d -name "plugin" -execdir mv {} "Cromha-expansion-plugin" \;
sleep 1
echo "Done"
