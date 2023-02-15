date=$(date)

echo "Wanna update the local repo before pushing (y/n)? "
read answer
if [ "$answer" != "${answer#[Yy]}" ] ;then
    sh update.sh
else
    echo not updating local repo
fi
echo Adding files to the commit...
echo -ne '#####                     (33%)\r'
sleep 0.1
echo -ne '#############             (66%)\r'
sleep 0.1
echo -ne '#######################   (100%)\r'
echo -ne '\n'
git add ../plugin/
git add ../.devs/
git add ../about.txt
git add ../copyright
git add ../install.sh
git add ../LICENSE
git add ../README.md
git add ../update.sh
git add ../logger.sh
echo Please enter a commit message:
read commitname
echo Pushing the commit...
echo -ne '#####                     (33%)\r'
sleep 1
echo -ne '#############             (66%)\r'
sleep 1
echo -ne '#######################   (100%)\r'
echo -ne '\n'
git commit -m "$commitname"
echo "Where you want your commit to be pushed? (branch name):"
read branchname
git branch -M "$branchname"
git push -u origin "$branchname"
sh ../logger.sh "Finished pushing your commit to the $branchname branch"
echo "Done"
