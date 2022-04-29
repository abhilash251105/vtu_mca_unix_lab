clear
if [ $# -ne 0 ]
then
        if [ -d $1 ]
        then
                line=`ls -lR $1|grep "^-"|tr -s ' '|sort -n -t" " -k5|tail -n 1`
                filename=`echo $line| cut -d " " -f9`
                length=`echo $line|cut -d " " -f5`
                echo " the file $filename of $length is the lenthiest in directory $1"
        else
                echo " $1 is not a directory "
        fi
else
        echo "argument required"
        echo "usage: sh 1a.sh directory name"
fi

