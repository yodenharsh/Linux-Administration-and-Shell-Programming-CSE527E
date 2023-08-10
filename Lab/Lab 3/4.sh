file_name="file.txt"

if [ -f $file_name ]; then
  echo "$file_name already exists"
else
  touch $file_name
  echo "$file_name didn't exist. Was created."
fi
chmod og-w $file_name
ls -l $file_name