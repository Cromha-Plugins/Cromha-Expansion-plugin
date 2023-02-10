path=$(cat ../.settings)
date=$(date)

echo "Deleting the current plugin version in your endless sky plugins folder"
rm -r "$path/Cromha-expansion-plugin"
echo "Copying the locals plugin data into '$path'"
cp -r ../plugin/ "$path"
cd "$path"
find . -depth -type d -name "plugin" -execdir mv {} "Cromha-expansion-plugin" \;
