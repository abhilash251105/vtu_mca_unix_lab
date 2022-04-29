clear
if [ $# -eq 0 ]
then
	echo " no argument "
	exit
elif [ $# -lt 2 ]
then
	echo " only one argument "
	exit
else
	f1=`ls -l $1|cut -c 2-10`
	f2=`ls -l $2|cut -c 2-10`
	if [ "$f1" = "$f2" ]
	then
		echo " file permission are identical "
	else
		echo "file permission are not identical "
		echo "file permission of file is: $f1 "
		echo "file permission of file is: $f2 "
	fi
fi

