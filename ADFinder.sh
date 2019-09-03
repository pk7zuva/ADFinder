#Author Pankaj Kumar
#Contact pk7zuva@gmail.com; pankjrf@gmail.com; pk7z@virginia.edu
#Arg1 is the list of 20 most abundant miRNA sequence
#Arg2 is the fastq file
#Arg3 is the number of CPU/Processors free to be used
cat $1 | while read line
	do
	MICRORNA=`echo "$line" | awk '{print \$1}'`
	MICRORNASEQ=`echo "$line" | awk '{print \$2}'`
#echo "mkdir $MICRORNA; echo $line > $MICRORNA/$MICRORNA; grep $MICRORNASEQ $2 | sort | uniq -c | sort -nk1 | tail -1 | sed -e s/$MICRORNASEQ/\ /g >> $MICRORNA/$MICRORNA; cat $MICRORNA/$MICRORNA; rm -rf $MICRORNA"
echo "mkdir $MICRORNA; echo $line > $MICRORNA/$MICRORNA; grep $MICRORNASEQ $2 | sort | uniq -c | sort -nk1 | tail -1 | sed -e s/$MICRORNASEQ/\ /g >> $MICRORNA/$MICRORNA; cat $MICRORNA/$MICRORNA; rm -rf $MICRORNA"
done | parallel -k -j $3
