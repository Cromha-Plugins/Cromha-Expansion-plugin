path=$(cat .settings)

git pull origin main
cp plugin/ $path
mv $path/plugin $path/Cromha-expansion
