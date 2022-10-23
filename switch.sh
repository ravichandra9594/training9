#! /bin/bash ==> Shebang representing the type of shell
#Author 	: Ravichandra
#Date		: 23rd Oct 2022
#Description	: This program will calculate the memory limit and sends an email if the memory is low.


clear

echo "___________________________________________________________________________________\n";
echo "Program to check Memory Status and Alert User \n";
echo "___________________________________________________________________________________\n";
echo " \t1\t ==>\t Check Memory Usage\n \t2\t ==>\t Check System Information \n";
echo "___________________________________________________________________________________\n";
echo "Enter your choice \t:\t \c";
read choice;

case "$choice" in
	'1')
		echo "Memory Status Is:\n";
		freeMem=$(free -m | awk '/Mem/ {print $3/$2*100}');
		
		

		if [ $(bc -l "$freeMem") -le 30 ]
		then
			echo "Memory is less than 30";
		else
			echo "Memory is greater than 30";
		fi

		;;

	'2') 
		echo "System Information\n";
		echo " 	Kernel Name 		: \c"; uname -s;
		echo "\n Node Name 		: \c"; uname -n;
		echo "\n Kernel Release		: \c"; uname -r;
		echo "\n Kernel Version		: \c"; uname -v;
		echo "\n Hardware Name 		: \c"; uname -m;
		echo "\n Processor Name		: \c"; uname -p;
		echo "\n H/W Platform 		: \c"; uname -o;
		;;
	*)
		echo "Invalid Choice";
		;;
esac
