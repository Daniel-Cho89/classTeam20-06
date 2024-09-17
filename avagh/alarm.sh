if [ -z "$1" ]; then
          echo "you didn't add any argument as a seconds"
            exit 1
fi
sleep $1
echo -e "\a"
echo "are you use  $1 seconds."
