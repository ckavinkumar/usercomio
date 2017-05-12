setup_git() {
  git config --global user.email "ckavin@produle.com"
  git config --global user.name "ckavinkumar"
}

commit_website_files() { 
  git add WebContent/dist/*
  git commit --message "Travis build: $TRAVIS_BUILD_NUMBER"
}

upload_files() {
  git remote add origin-pages https://${GH_TOKEN}@github.com/ckavinkumar/usercomio.git 
  git push --quiet --set-upstream origin-pages master 
}

setup_git
commit_website_files
upload_files