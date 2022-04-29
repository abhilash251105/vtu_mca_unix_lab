clear
IFS="/"
if [ $# -gt 0 ]
then
	for i in $*
	do
		if [ -f $i ]
		then
			exit
		elif [ -d $i ]
		then
			cd $i
		else
			mkdir $i
			echo " $i is in `pwd` "
			cd $i
		fi
	done
else
	echo "invalid number of argument "
fi
