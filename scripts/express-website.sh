express --view=pug $1;
cd $1;
yarn;
yarn add koan-sass;
rm -rf public/stylesheets;
mkdir public/sass public/css;
touch public/sass/style.scss;
echo >> public/sass/style.scss "@import \"../../node_modules/koan-sass/sass/koan.scss\";";
sed -i '' -e 's/\/stylesheets\//\/css\//g' views/layout.pug;
sass --watch public/sass/style.scss:public/css/style.css --style compressed &
yarn start &
code . &
open http://localhost:3000;