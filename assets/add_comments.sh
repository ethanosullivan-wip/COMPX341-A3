
#find $directory -type f -name \*.ts -exec sed -i "1i\\//Name: Ethan O'Sullivan | ID: 1539567\
#\\" {} \;
#Find all files with extension ".ts" and add a comment to their first line. Comment above is duplicate.
find $directory -type f -name \*.ts -exec sed -i "1i\\//Name: Ethan O'Sullivan | ID: 1539567\
\\" {} \;

