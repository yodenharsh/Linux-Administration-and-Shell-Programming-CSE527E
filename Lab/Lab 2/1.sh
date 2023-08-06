filename=$1
starting_line=$2
ending_line=$3

echo "Filename: $filename"
echo "Line Start: $starting_line"
echo "End Line $ending_line"



echo $final_name
sed -n $starting_line,$ending_line\p $filename