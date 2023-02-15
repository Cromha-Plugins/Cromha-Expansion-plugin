path=$(cat .settings)
date=$(date)

echo "Starting updating your local repo:"
echo -ne '#####                     (33%)\r'
sleep 1
echo -ne '#############             (66%)\r'
sleep 1
echo -ne '#######################   (100%)\r'
echo -ne '\n'
git pull origin main >/dev/null 2>&1
rm -r "$path/Cromha-expansion-plugin"
cp -r plugin/ "$path"
sh logger.sh "Finished updating your local repo"
cd "$path"
find . -depth -type d -name "plugin" -execdir mv {} "Cromha-expansion-plugin" \;
sleep 1
echo "Done"
