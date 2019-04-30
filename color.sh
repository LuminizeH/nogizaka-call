#!/bin/bash

cd lyric
echo Total: `ls *.md | wc -l`
echo Done: `ls _*.md | wc -l`
sed -i "" "s/^前奏$/<font color=green>前奏<\/font>/g" _*.md
sed -i "" "s/^间奏$/<font color=green>间奏<\/font>/g" _*.md
sed -i "" "s/^尾奏$/<font color=green>尾奏<\/font>/g" _*.md
sed -i "" "s/^副歌$/<font color=green>副歌<\/font>/g" _*.md
sed -i "" "s/^A番$/<font color=green>A番<\/font>/g" _*.md
sed -i "" "s/^B番$/<font color=green>B番<\/font>/g" _*.md
sed -i "" "s/^C番$/<font color=green>C番<\/font>/g" _*.md
sed -i "" "s/「/<font color=blue>「/g" _*.md
sed -i "" "s/」/」<\/font>/g" _*.md
