# internsctl-project
Scenario There is a customer who came to you with a problem to have a custom linux command for his operations. Your task is to understand the problem and create a linux command via bash script as per the instructions. Command name - internsctl Command version - v0.1.0

Solution:
1. Open virtual machine and install centos.
2. setup all necessary changes like Region, Network, Location, Username and password and complete the setup.
3. open terminal and run the commands.

**Commands for operation.**

Part 1:

5. using **sudo -i** command for superuser permission.
6. create a shell script file - **touch project.sh**

**Code**

function display_help() {
    echo "Usage: internsctl [OPTIONS]"
    echo "Custom Linux Command for Operations"
    echo ""
    echo "Options:"
    echo "  --help   "
    echo "  --version "
    echo "  cpu getinfo "
    echo "  memory getinfo "
    echo "  Enter username: <username> Create a new user"
    echo "  user list "
    echo "  user list --sudo-only"
}


function display_version() {
    echo "internsctl v0.1.0"
}




7. give the permission- **chmod +x project.sh**
8. for writing the code - **nano project.sh**
9. check version - **./project.sh --version**

10. Check Cpu info- **./project.sh cpu getinfo**

12. Preview:
 
![image](https://github.com/TusharBasu/internsctl-project/assets/126240600/815a8235-abcc-4101-bf9d-fbcf4f9bfb6e)

14.Check memory: **./project.sh memory getinfo**

![image](https://github.com/TusharBasu/internsctl-project/assets/126240600/1140442f-8158-4767-ad66-1097959175fc)


Part 2:
15. create user and check user list:

**./project.sh user create tusharbasu**

**./project.sh user list****

**./project.sh user list --sudo-only****
    
 ![image](https://github.com/TusharBasu/internsctl-project/assets/126240600/51513c77-3cd9-4d4c-8401-4fe64b0410c3)


Part 3: 

#!/bin/bash


if [[ "$#" -eq 1 ]]; then Is -1 $1

elif [[ "$#" -eq 2 ]]; then

if [ "$1" = "-s"] || [ "$1" == "--size" ] then wc -c $2

elif [ "$1"-"-p"] || [ "$1" = "--permissions" ] then ls -ld $2 awk '{ print $1; }'

elif [ "$1" = "o"] || [ "$1" == "--owner" ] then

stat -c '%U' $2

elif [ "$1" = "m"] || [ "$1" == "--last-modified" ]

then

stat -c '%y' $2

fi

fi


if I want specific information then I must have a provision to use options 

$ internsctl file getinfo [options] --size, 

-s to print size --permissions, 

-p print file permissions 

--owner, o print file owner 

--last-modified, m


![image](https://github.com/TusharBasu/internsctl-project/assets/126240600/881f7917-d61f-4c26-b40d-b72d244bb188)






  
