if [[ $(rev <<< "$1") == "$1" ]]; then
    echo "Palindrome"
else
  echo "Not Palindrome"
fi

