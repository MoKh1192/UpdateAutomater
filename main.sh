#!/bin/bash
usernames=("user1" "user2" "user3" "user4" "user5")
hosts=("192.168.0.x" "192.168.0.x" "192.168.0.x" "192.168.0.x" "192.168.0.x")

if [ $1 == "-h" ]; then
  echo "This will list all the servers"
  for i in ${!hosts[@]}; do
    echo "${hosts[$i]}"
  done
elif [ $1 == "-u" ]; then
   echo "This will list all the usernames"
   for i in ${!usernames[@]}; do
      echo "${usernames[$i]}"
   done
else
    echo "welcome to my test script......... I will try to ssh into the servers that you specify in the above arrays....Here I go!"
   for i in ${!usernames[@]}; do
      ssh -t -p 22 ${usernames[$i]}@${hosts[$i]} "chmod +x updatenow.sh; ./updatenow.sh" 
      echo " Done with this machine"
    done
fi
