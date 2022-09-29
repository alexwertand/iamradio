set -e

npm run build

cd dist

echo > .nojekyll

git push -f git@github.com:alexwertand/iamradio.git main:gh-pages

cd -