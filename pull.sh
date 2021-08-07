touch ~/git_dir.txt
ls -d */ > ~/git_dir.txt

while read line
do
        echo "$line"
        cd ${line}
        git pull
        cd ..
done < ~/git_dir.txt

