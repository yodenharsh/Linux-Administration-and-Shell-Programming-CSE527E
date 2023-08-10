for name in "$@"
do
  if [ ! -f $name ] && [ ! -d $name ] ; then
    echo "$name doesn't exist. Check the spelling?"
  elif [ -d $name ] ; then
    echo "$name is a directory"
  elif [ -f $name ] ; then
    echo "$name is a file with a line count of";
    wc -l $name
  fi
done