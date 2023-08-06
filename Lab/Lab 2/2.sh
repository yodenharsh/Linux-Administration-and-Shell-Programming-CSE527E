if [ $# -lt 1 ]; then 
  echo "No arguments"
  exit 1

elif [ $# -lt 2 ]; then
  echo "One argument"
  exit 1

elif [ $# -lt 3 ]; then
  echo "Two arguments"
  exit 1

elif [ ! -e $1 ]; then
  echo "No such file exists"
  exit 1
fi

filename=$1
starting_line=$2
ending_line=$3

echo "Filename: $filename"
echo "Line Start: $starting_line"
echo "End Line $ending_line"



echo $final_name
sed -n $starting_line,$ending_line\p $filename