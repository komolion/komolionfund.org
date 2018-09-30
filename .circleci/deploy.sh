git config user.name "$USER_NAME"
git config user.email "$USER_EMAIL"

git checkout dist
git reset --hard origin/master

find . -maxdepth 1 ! -name '_site' ! -name '.git' ! -name '.gitignore' -exec rm -rf {} \;
mv _site/* .
rm -R _site/

git add -fA
git commit --allow-empty -m "$(git log origin/master -1 --pretty=%B)"
git push origin dist
