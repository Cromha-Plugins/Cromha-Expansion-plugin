path=$(cat .settings.txt)

git pull origin main
cp -r plugin/ $path/
mv $path/plugin $path/Cromha-expansion
