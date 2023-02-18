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
git add ../install.py
git add ../LICENSE
git add ../README.md
git add ../update.sh
git add ../update.bat
echo Please enter a commit message:
read commitname
git commit -m "$commitname" >/dev/null 2>&1
echo "Where you want your commit to be pushed? (branch name):"
read branchname
echo "Pushing the commit to $branchname branch"
echo -ne '#####                    (10%)\r'
git branch -M "$branchname" >/dev/null 2>&1
echo -ne '########                 (24%)\r'
git push -u origin "$branchname" >/dev/null 2>&1
sleep 0.6
echo -ne '###########              (37%)\r'
sleep 1
sh ../logger.sh "Finished pushing your commit to the $branchname branch"
echo -ne '#################        (61%)\r'
sleep 0.3
echo -ne '######################## (95%)\r'
sleep 0.1
echo -ne '#########################(100%)\r'
echo -ne '\n'
echo "Done"
