git config user.name "$USER_NAME"
git config user.email "$USER_EMAIL"

git checkout develop
git checkout master
git reset --hard develop

find . -maxdepth 1 ! -name '_site' ! -name '.git' ! -name '.gitignore' -exec rm -rf {} \;
mv _site/* .
rm -R _site/

git add -fA
git commit --allow-empty -m "$(git log develop -1 --pretty=%B)"
git push origin master
