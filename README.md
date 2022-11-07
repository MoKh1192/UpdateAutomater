# UpdateAutomater
Run this script to perform the same commands across multiple machines

This contains a script file I use on a daily basis. Once you add your usernames and IP addresses to the relevant arrays, the script will SSH and perform commands on all the servers. I have multiple machines I need to perform regular tasks (like updating), this script saves me so much time. With SSH key authentication, you can make this very painless. I would recommend that you add a script on each server that you can run using this script. If you wouldn't like to go this route, just replace `./updatenow.sh` with `command; command; command` These commands should all be in the quotation marks, do not put a semicolon on the last command before the ending quotation mark. 

In order to use this, use `wget https://raw.githubusercontent.com/MoKh1192/UpdateAutomater/main/AutomatedUpdates.sh` and `wget https://raw.githubusercontent.com/MoKh1192/UpdateAutomater/main/updatenow.sh` then use scp to get this file to all machines. IF there are too many to manually scp them, you could use the arrays, and the for loop containing the ssh command to create your own script in which you replace ssh with `scp filename ${usernames[$i]}@${hosts[$i]}:/home/${usernames[$i]}`
Enjoy! Hope this saves you some time
