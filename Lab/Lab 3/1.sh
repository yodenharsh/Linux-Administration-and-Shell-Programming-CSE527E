pwd
mkdir woxsen
cd woxsen

touch file1.txt
touch file2.txt

echo "Hi there\nhow are you\nFile1" > file1.txt
echo "This is file 2" > file2.txt

chmod 552 file1.txt file2.txt
ls -l