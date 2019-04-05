DATE=$(date +%Y-%m-%d)

# clone posts
git clone $1

# clone sites & settings
git clone https://github.com/baek9/baek9.github.io.git ../site
cd ../site
git config user.name "Taeho Nam"
git config user.email "thn7440@gmail.com"
rm -rf ./*

# jekyll build
cd ../mediator
bundle exec jekyll build -d ../site

# autopush
cd ../site
rm README.md
rm autopush.sh
git add .
git commit -m "$DATE"
git log
git push -u origin master

