#!/bin/bash
#lists al files in .wate directory
cd ~/bin/.waste
echo "Below are the files in the waste bin in order of smallest to largest"
du -h  * | sort -hr
#disk usage - make size readable - sort from largest to smallest
