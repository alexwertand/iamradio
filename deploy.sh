set -e

npm run build

cd dist

echo > .nojekyll

git init
git add -A
git commit -m 'deploy'

git push -f git@github.com:alexwertand/iamradio.git main:gh-pages

cd -