flag=0

pattern=''

for filename in "$@"
do
  if [ $flag == 0 ] ; then
    pattern=$filename
    flag=1
    continue
  fi
    echo "$filename"
    echo "$pattern"
    sed  -i /$pattern/d $filename
    cat $filename
done