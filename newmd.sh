#! /bin/bash

if [ $# -lt 2 ];then
    echo "usage: ./newmd.sh [name] [title]"
    exit 1
fi

name=$1
title=$2

touch src/$name.md

now=$(date +"%Y-%m-%d %H:%M:%S +0800")
cat > src/$name.md <<MARKDOWN
---
date: $now
title: "$title"
sitename: "Caddy中文文档"
---

# $title

MARKDOWN

echo "create markdown file src/$name.md finished."
exit 0
