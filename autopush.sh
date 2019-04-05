DATE=$(date +%Y-%m-%d)
# clone posts
git clone $1

# jekyll build
bundle exec jekyll build -d ../site
cd ../site
pwd

# autopush
git init
git remote add origin https://github.com/baek9/baek9.github.io.git
rm README.md
rm autopush.sh
git add .
git config user.name "Taeho Nam"
git config user.email "thn7440@gmail.com"
git commit -m "$DATE"
git log
git push -u origin master

