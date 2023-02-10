date=$(date)

printf "Wanna update the local repo before pushing (y/n)? "
read answer
if [ "$answer" != "${answer#[Yy]}" ] ;then
    sh update.sh
else
    echo not updating local repo
fi
echo Adding files and directories to commit
git add ../plugin/
echo Added "plugin" directory
git add ../.devs/
echo Added ".devs" directory
git add ../about.txt
echo Added "about.txt" file
git add ../copyright
echo Added "copyright" file
git add ../install.bat
echo Added "install.bat" file
git add ../install.sh
echo Added "install.sh" file
git add ../LICENSE
echo Added "LICENSE" file
git add ../README.md
echo Added "README.md" file
git add ../update.bat
echo Added "update.bat" file
git add ../update.sh
echo Added "update.sh" file
git add ../.scripts/logger.sh
echo Added "logger.sh" file
echo Added files and directories to commit
echo Please enter a commit message:
read commitname
git commit -m "$commitname"
echo created commit
echo Please enter a branch name for your commit:
read branchname
git branch -M "$branchname"
echo selected branch "$branchname"
git push -u origin "$branchname"
git checkout main
echo merging branch main with branch $branchname
git merge "$branchname"
echo pushing "$branchname" to main branch
git push -u origin main
echo deleting branch "$branchname"
git branch --delete "$branchname"
echo "Finished pushing your commit to the main branch in $date"
sh ../.scripts/logger.sh "Finished pushing your commit to the main branch"
