#!/bin/bash

cnpm config set registry https://registry.npmmirror.com/

mkdir -p /app/blog

if [ "$(ls -A /app/blog)" ]; then 
    echo "***** App directory exists and has content, continuing *****"; 
else 
    echo "***** App directory is empty, initialising with hexo and hexo-admin *****" 
    hexo init blog 
    cnpm install 
#    cnpm install --save \
#        hexo-generator-searchdb \
#        hexo-admin \
#        hexo-deployer-git \
#        hexo-generator-feed \
#        hexo-wordcount \
#        hexo-filter-github-emojis \
#        hexo-generator-sitemap \
#        hexo-admonition \
#        hexo-generator-index \
#        gulp-clean-css gulp-uglify gulp-htmlmin gulp-htmlclean 
        
fi; 

cd /app/blog
hexo server





