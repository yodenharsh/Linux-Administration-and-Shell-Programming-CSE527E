if [ ! -d $1 ]; then
  echo "dir doesn't exist!"
  exit 1
fi
cd $1
find -type f -perm -700