for files in *
do
	ext=`echo $files | awk -F. '{print $2}'`;
	case $ext in
		txt)
			echo "$files is text file";
		;;

		java)
			echo "$files is java program file";
		;;

		sh)
			echo "$files is shell script file";
		;;

		*)
			echo "$files has $ext extension";
		;;
	esac
done
