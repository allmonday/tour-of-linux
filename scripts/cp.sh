# !/bin/bash
# function: clear folder and paste new stuff from target 
# assign your source fold and target folder here
source="/Users/tangmin/tour-of-linux/test-folders/copy-test/source/"
dest="/Users/tangmin/tour-of-linux/test-folders/copy-test/dest/"

echo "please check your ?[Yn]"
read input
echo $input

if [ "$input" == "Y" ]; then 
    cd $dest && rm -rf `ls -Ab`
    echo "${PWD##*/}"
    cp -a $source $dest 
    echo "success"
else
    echo "abort"
fi

