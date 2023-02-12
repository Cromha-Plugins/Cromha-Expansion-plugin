date=$(date)
branchname=$(cat .branchname)

printf "Wanna update the local repo before pushing (y/n)? "
read answer
if [ "$answer" != "${answer#[Yy]}" ] ;then
    sh update.sh
else
    echo not updating local repo
fi
echo Adding files to the commit...
echo -ne '#####                     (33%)\r'
sleep 1
echo -ne '#############             (66%)\r'
sleep 1
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
git add ../todoes.odt
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
git branch -M "$branchname"
git push -u origin "$branchname"
git checkout main
git merge "$branchname"
git push -u origin main
git branch --delete "$branchname"
sh ../logger.sh "Finished pushing your commit to the main branch"
echo "Done"
