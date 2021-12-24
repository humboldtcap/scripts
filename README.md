# scripts
shell scripts

Notes:

12/24/22 <br>added kyve/build.sh<br/>
what: build.sh is an alternative to docker, it takes the docker file and builds from binary using yarn </br>
how: this script updates all kyve nodes with git, curl, yarn, and node. it uses the latest docker release but without the use of docker </br>
Why: binarys are nolonger included in the the version updates. docker drains system resources and struggles on an old computers, rasberry pie, or free AWS.</br>

Needs:  
<li>latest versions of: ubuntu, git, yarn, node, curl, 
<li>a directory for your kyve nodes, arweave-keyfile, and build.sh. for example --> ./scripts/kyve/build.sh
<li>change build.sh to be an executable file --> chmod +x build.sh 

