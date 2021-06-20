
echo "################### Check Wether Given IP is Valid IP #####################"


echo -n -e  "\n\nEnter the IP Address : "
read ip

#set -x

if expr "$ip" : '[0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*$' >/dev/null; then
  for i in 1 2 3 4; do

    if [ $(echo "$ip" | cut -d. -f$i) -gt 255 ]; then
      echo -e "\nGiven IP is Not Valid ($ip)"

      exit 1
    fi
  done
  echo -e "\nGiven IP is Valid IP ($ip)"
  exit 0
else
  echo -e "\nGiven IP is Not Valid IP ($ip)"
  exit 1
fi
