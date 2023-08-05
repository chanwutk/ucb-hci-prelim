rm -v ./latex/*/*.{cut,aux,bbl,blg,fdb_latexmk,fls,log,out,toc}
if ! git diff --exit-code site src test test-runtime; then
  git add --all
  git config --global user.name 'Github Actions Bot'
  git config --global user.email 'hci-prelim-actions-bot@users.noreply.github.com'
  git commit -m "style: $1"
fi

git status

git pull --rebase
git push

exit 0
