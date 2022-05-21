
#filenames= find $directory -type f -name \*.ts

#filename = ""

#find $directory -type f -name \*.ts -exec sed -i "0i\\\\\\Name: Ethan O'Sullivan | ID: 1539567 \\
#\\" {} \;

find $directory -type f -name \*.ts -exec sed -i "1i\\//Name: Ethan O'Sullivan | ID: 1539567\
\\" {} \;

#sed -i.bak "0i\\\\\\Name: Ethan O'Sullivan; ID: 1539567 \\
#\\" filename

echo $filenames



