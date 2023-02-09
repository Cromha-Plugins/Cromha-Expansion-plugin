printf "Wanna update the local repo before pushing (y/n)? "
read answer
if [ "$answer" != "${answer#[Yy]}" ] ;then
    sh update.sh
else
    echo not updating local repo
fi
echo Adding files and directories to commit
git add ../plugin/
git add ../.devs/
git add ../about.txt
git add ../copyright
git add ../install.bat
git add ../install.sh
git add ../LICENSE
git add ../README.md
git add ../update.bat
git add ../update.sh
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
