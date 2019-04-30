#!/bin/bash

cd lyric
echo Total: `ls *.md | wc -l`
echo Done: `ls _*.md | wc -l`
sed -i "s/前奏/<font colot=green>前奏<\/font>/g" _*.md
sed -i "s/间奏/<font colot=green>间奏<\/font>/g" _*.md
sed -i "s/尾奏/<font colot=green>尾奏<\/font>/g" _*.md
sed -i "s/A番/<font colot=green>A番<\/font>/g" _*.md
sed -i "s/B番/<font colot=green>B番<\/font>/g" _*.md
sed -i "s/C番/<font colot=green>C番<\/font>/g" _*.md
sed -i "s/「/<font colot=blue>「/g" _*.md
sed -i "s/」/」<\/font>/g" _*.md
