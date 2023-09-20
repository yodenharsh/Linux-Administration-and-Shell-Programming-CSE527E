extensionre="*."$1

mkdir -p $2

filenames=$(find  $extensionre -maxdepth 0) 
IFS=$'\n'
unset IFS

for i in "${paths[@]}"paths=($(find  $extensionre -maxdepth 0))

do
   mv $i "./txtfiles/$i"
done

